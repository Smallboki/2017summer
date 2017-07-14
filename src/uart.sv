module uart(
	input i_rst,
	input i_clk,//avm_clk
	output[4:0] o_address,
	output o_read,
	input[31:0] i_readdata,
	output o_write,
	output[31:0] o_writedata,
	input i_waitrequest,

	input i_mode,//0: write, 1: read

	input i_sclk,//sampling frequency
	input i_write,
	output o_full,
	input[7:0] i_char,
	output[15:0] o_setdata,
	output o_set
	);

//parameters

localparam OFFSET0 = 0;
localparam OFFSET1 = 4;
localparam OFFSET2 = 8;

integer i;
//logics

enum {IDLE,READ,WRITE,RHOLD,WHOLD} state_w,state_r;

logic[4:0] addr;
logic[7:0] char_r[15:0],char_w[15:0];
logic[4:0] r_r,r_w;
logic[4:0] w_r,w_w;
logic write,read;

logic[15:0] setdata_w,setdata_r;
logic[1:0] cnt_r,cnt_w;
logic setting;

//combinational
assign o_write = write;
assign o_read = read;
assign o_address = addr;
assign o_writedata = char_r[r_r];

assign o_full = (w_r + 1) == r_r;

assign o_set = setting;
assign o_setdata = setdata_r;

always@(*) begin
	if(i_write && i_mode) begin
		for(i = 0;i < 16; i = i + 1) begin
			if(w_r == i) begin
				char_w[i] = i_char;
			end
			else begin
				char_w[i] = char_r[i];
			end
		end
		w_w = w_r + 1;
	end
	else begin
		for(i = 0; i < 16; i = i + 1) begin
			cahr_w[i] = char_r[i];
		end
		w_w = w_r;
	end
end

always@(*) begin

	cnt_w = cnt_r;
	setdata_w = setdata_r;
	setting = 0;
	r_w = r_r;
	case(state_r)
		IDLE: begin
			addr = OFFSET2;
			write = 0;
			read = 0;
			if(!i_mode && (r_r != w_r)) begin
				state_w = WHOLD;
			end
			else if(i_mode) begin
				state_w = RHOLD;
			end
			else begin
				state_w = IDLE;
			end
		end
		RHOLD: begin
			addr = OFFSET2;
			read = 1;
			write = 0;
			if(i_mode) begin
				if(i_waitrequest) begin
					state_w = state_r;
				end
				else begin
					if(i_readdata[7])
						state_w = READ;
					else
						state_w = state_r
				end
			end
			else begin
				state_w = IDLE;
			end
		end
		READ: begin
			addr = OFFSET0;
			read = 1;
			write = 0;
			if(i_mode) begin
				if(i_waitrequest) begin
					state_w = state_r;
				end
				else begin
					cnt_w = cnt_r == 1? 0 : cnt_r + 1;
					setdata_w = cnt_r == 0? {setdata_r[15:8],i_readdata[7:0]} : {i_readdata[15:8],setdata[7:0]};
					setting = cnt_r == 1? 1 : 0;
					state_w = RHOLD;
				end
			end
			else begin
				state_w = IDLE;
			end
		end
		WHOLD: begin
			addr = OFFSET2;
			read = 0;
			write = 1;
			if(!i_mode) begin
				if(i_waitrequest) begin
					state_w = state_r;
				end
				else begin
					if(i_readdata[6]) begin
						state_w = WRITE;
					end
					else begin
						state_w = state_r
					end
				end
			end
			else begin
				state_w = RHOLD;
			end
		end
		WRITE: begin
			addr = OFFSET1;
			read = 0;
			write = 1;
			if(!i_mode) begin
				if(i_waitrequest) begin
					state_w = state_r;
					r_w = r_r;
				end
				else begin
					state_w = WHOLD;
					r_w = r_r + 1;
				end
			end
			else begin
				state_w = RHOLD;
			end
		end
	endcase
end

//sequential

always@(posedge i_clk or i_rst) begin
	if(!i_rst) begin
		state_r <= IDLE;
		r_r <= 0;
		setdata_r <= 0;
		cnt_r <= 0;
	end
	else begin
		state_r <= state_w;
		r_r <= r_w;
		setdata_r <= setdata_w;
		cnt_r <= cnt_w;
	end
end

always@(posedge i_sclk or i_rst) begin
	if(!i_rst) begin
		w_r <= 0;
		for(i = 0; i < 16; i = i + 1) begin
			char_r <= 0;
		end
	end
	else begin
		w_r <= w_w;
		for(i = 0; i < 16; i = i + 1) begin
			char_r <= char_w;
		end
	end
end

endmodule
