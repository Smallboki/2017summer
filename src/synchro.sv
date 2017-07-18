`define SYNWIDTH 14

module synchro(
	input i_clk,
	input i_rst,

	input i_write,
	input[7:0] i_char,
	output o_full,

	output o_check,
	output[`SYNWIDTH - 1:0] o_deg
	);

//parameter

integer i;

//logic
enum {IDLE,IDT,DATA,DEG,CHECK} state_w,state_r;

logic[7:0] cnt_w,cnt_r;
logic[7:0] char_w[7:0],char_r[7:0];
logic[2:0] r_w,r_r,w_w,w_r;
logic[7:0] char;
logic[7:0] check_w,check_r;
logic[7:0] checksum_w,checksum_r,tmp;
logic check;

logic[23:0] SI_w,SI_r;
logic[3:0] pos;


enum {INT,FRC} dstate_w,dstate_r;
logic[63:0] decimal_w,decimal_r;
logic[13:0] edg,deg_w,deg_r;
logic[3:0] frccnt_w,frccnt_r;
logic finished;
//submodule

binary2deg xbinary2deg(.i_clk(i_clk),.i_rst(i_rst),.i_start(check),.i_decimal(decimal_r),.i_frccnt(frccnt_r),.o_deg(deg),.o_finished(finished));

//combinational

assign o_full = ((w_r + 1) == r_r)? 1 : 0;
assign o_check = check;
assign o_deg = deg_r;

always@(*) begin
	for(i = 0; i < 8; i = i + 1) begin
		char_w[i] = char_r[i];
	end

	if(i_write) begin
		w_w = w_r + 1;
		char_w[w_r] = i_char;
	end
	else begin
		w_w = w_r;
	end

	if(w_r != r_r) begin
		char = char_r[r_r];
		r_w = r_r + 1;
	end
	else begin
		char = 0;
		r_w = r_r;
	end
end

always@(*) begin
	case(SI_r)
		{"H","D","G"} : begin
			pos = 1;
		end
		{"H","D","T"} : begin
			pos = 1;
		end
	endcase
end

always@(*) begin
	if(finished)
		deg_w = deg;
	else
		deg_w = deg_r;
end

always@(*) begin
	check = 0;
	checksum_w = checksum_r;
	SI_w = SI_r;
	decimal_w = decimal_r;
	tmp = 0;
	frccnt_w = frccnt_r;
	if(w_r != r_r) begin
		case(state_r)
			IDLE: begin
				if(char == "$") begin
					state_w = IDT;
				end
				else begin
					state_w = state_r;
				end
				cnt_w = 0;
			end
			IDT: begin
				if(cnt_r == 4) begin
					state_w = DATA;
					cnt_w = 0;
					SI_w = (SI_r << 8) + {16'd0,char};
				end
				else if(cnt_r > 1) begin
					state_w = state_r;
					cnt_w = cnt_r + 1;
					SI_w = (SI_r << 8) + {16'd0,char};
				end
				else begin
					state_w = state_r;
					SI_w = SI_r;
					cnt_w = cnt_r + 1;
				end
				check_w = check_r ^ char;
			end
			DATA: begin
				if(char == "*") begin
					state_w = CHECK;
					cnt_w = 0;
					check_w = check_r;
				end
				else if(char == ",") begin
					cnt_w = cnt_r + 1;
					check_w = check_r ^ char;
					if(cnt_r == (pos - 1)) begin
						state_w = DEG;
					end
					else begin
						state_w = state_r;
					end
				end
				else begin
					state_w = state_r;
					cnt_w = cnt_r;
					check_w = check_r ^ char;
				end
			end
			DEG: begin
				tmp = char - "0";
				if(char == ".") begin
					dstate_w = FRC;
					state_w = state_r;
					cnt_w = cnt_r;
					frccnt_w = frccnt_r;
					decimal_w = (decimal_r << 4) + {60'd0,tmp[3:0]};
				end
				else if(char == ",") begin
					dstate_w = INT;
					state_w = DATA;
					cnt_w = cnt_r;
					frccnt_w = frccnt_r;
					decimal_w = decimal_r;
				end
				else begin
					state_w = state_r;
					dstate_w = dstate_r;
					cnt_w = cnt_r;
					decimal_w = (decimal_r << 4) + {60'd0,tmp[3:0]};
					if(dstate_r == FRC) begin
						frccnt_w = frccnt_r;
					end
					else begin
						frccnt_w = frccnt_r + 1;
					end
				end
				check_w = check_r ^ char;
			end
			CHECK: begin
				if(char == 8'hd) begin
					state_w = IDLE;
					cnt_w = 0;
					if(check_r == checksum_r) begin
						check = 1;
					end
					else begin
						check = 0;
					end
				end
				else begin
					if((char > "/") && (char < ":")) begin
						tmp = char - "0";
						checksum_w = cnt_r == 0 ? {tmp[3:0],4'd0} : {checksum_r[7:4],tmp[3:0]};
					end
					else if((char > "@") && (char < "G")) begin
						tmp = char - "A";
						checksum_w = cnt_r == 0 ? {tmp[3:0],4'd0} : {checksum_r[7:4],tmp[3:0]};
					end
					else begin
						checksum_w = checksum_r;
					end
					cnt_w = cnt_r + 1;
				end
			end
		endcase
	end
	else begin
		state_w = state_r;
		cnt_w = cnt_r;
		checksum_w = checksum_r;
		check_w = check_r;
	end
end

//sequential

always@(posedge i_clk or negedge i_rst) begin
	if(!i_rst) begin
		state_r <= IDLE;
		dstate_r <= INT;
		cnt_r <= 0;
		deg_r <= 0;
		checksum_r <= 0;
		check_r <= 0;
		SI_r <= 0;
		r_r <= 0;
		w_r <= 0;
		decimal_r <= 0;
		frccnt_r <= 0;
		for(i = 0; i < 8; i = i + 1) begin
			char_r[i] <= 0;
		end
	end
	else begin
		state_r <= state_w;
		dstate_r <= dstate_w;
		cnt_r <= cnt_w;
		deg_r <= deg_w;
		checksum_r <= checksum_w;
		check_r <= check_w;
		SI_r <= SI_w;
		r_r <= r_w;
		w_r <= w_w;
		decimal_r <= decimal_w;
		frccnt_r <= frccnt_w;
		for(i = 0; i < 8; i = i + 1) begin
			char_r[i] <= char_w[i];
		end
	end
end
endmodule
