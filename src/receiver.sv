`define ARRDWIDTH

module receiver(
	input i_clk,
	input i_rst,
	input[9:0] i_rx,
	input[9:0] i_baud[9:0],

	output check,

	output[7:0] o_data
	output[] o_addr
	);

//parameter

localparam nTI = 2;
localparam nSI = 3;
localparam nChecksum = 2;

//vars

enum { IDLE, TI, SI, DATA, CHECK, END} state_r,state_w;

logic ctn_w,ctn_r;
logic[7:0] char[9:0];
logic[9:0] finished;
logic[7:0] checksum_r,checksum_w;
logic checksum_failed_r,checksum_failed_w;
logic check_r,check_w;
logic End_r,End_w;

logic[7:0] Checksum_r,Checksum_w;
//submodule

char_r zchar_r0(.i_clk(i_clk),.i_rst(i_rst),.i_baud(i_baud[0]),.i_rx(i_rx[0]),.o_char(char[0]),.o_finished(finished[0]));
char_r zchar_r1(.i_clk(i_clk),.i_rst(i_rst),.i_baud(i_baud[1]),.i_rx(i_rx[1]),.o_char(char[1]),.o_finished(finished[1]));
char_r zchar_r2(.i_clk(i_clk),.i_rst(i_rst),.i_baud(i_baud[2]),.i_rx(i_rx[2]),.o_char(char[2]),.o_finished(finished[2]));
char_r zchar_r3(.i_clk(i_clk),.i_rst(i_rst),.i_baud(i_baud[3]),.i_rx(i_rx[3]),.o_char(char[3]),.o_finished(finished[3]));
char_r zchar_r4(.i_clk(i_clk),.i_rst(i_rst),.i_baud(i_baud[4]),.i_rx(i_rx[4]),.o_char(char[4]),.o_finished(finished[4]));
char_r zchar_r5(.i_clk(i_clk),.i_rst(i_rst),.i_baud(i_baud[5]),.i_rx(i_rx[5]),.o_char(char[5]),.o_finished(finished[5]));
char_r zchar_r6(.i_clk(i_clk),.i_rst(i_rst),.i_baud(i_baud[6]),.i_rx(i_rx[6]),.o_char(char[6]),.o_finished(finished[6]));
char_r zchar_r7(.i_clk(i_clk),.i_rst(i_rst),.i_baud(i_baud[7]),.i_rx(i_rx[7]),.o_char(char[7]),.o_finished(finished[7]));
char_r zchar_r8(.i_clk(i_clk),.i_rst(i_rst),.i_baud(i_baud[8]),.i_rx(i_rx[8]),.o_char(char[8]),.o_finished(finished[8]));
char_r zchar_r9(.i_clk(i_clk),.i_rst(i_rst),.i_baud(i_baud[9]),.i_rx(i_rx[9]),.o_char(char[9]),.o_finished(finished[9]));

//combinational

assign check = check_r;
assign o_data = ;
assign o_data = ;

always@(*) begin
	state_w = state_r;
	cnt_w = cnt_r;
	checksum_w = checksum_r;
	check_w = check_r;
	End_w = End_r;
	checksum_failed_w = checksum_failed_r;
	Checksum_w = Checksum_r;

	if(finished) begin
		case(state_r)
			IDLE: begin
				if(char == "$")
					state_w = TI;
				else
					state_w = state_r;
			end
			TI: begin
				cnt_w = cnt_r == 1? 0 : cnt_r + 1;
				state_w = cnt_r == 1? SI : state_r;
				checksum_w = checksum_r ^ char;
				Talker_Identifier_w[cnt_r] = char;
			end
			SI: begin
				cnt_w = cnt_r == 2? 0 : cnt_r + 1;
				state_w = cnt_r == 2? DATA : state_r;
				if(cnt_r == 2) begin
					cnt_w = 0;
					state_w = DATA;
				end
				else begin
					cnt_w = cnt_r + 1;
					state_w = state_r;
				end
				checksum_w = checksum_r ^ char;
			end
			DATA: begin
				checksum_w = checksum_r ^ char;

				if(char == "*")
					state_w = CHECK;
				else
					state_w = state_r;
			end
			CHECK: begin
				if((char < 8'h3a) && (char > 8'h2f))
					tmp = char - 8'h2f;
					Checksum_w = (Checksum_r << 4) + {4'd0,tmp[3:0]};
				end
				if((char < 8'h47) && (char > 8'd40)) begin
					tmp = char - 8'h40;
					Checksum_w = (Checksum_r << 4) + {4'd0,tmp[3:0]};
				else begin
					checksum_failed_w = 1;
				end

				if(cnt_r == nChecksum - 1) begin
					cnt_w = 0;
					state_w = END;
					End_w = 1'd0;
				end
				else begin
					cnt_w = cnt_r + 1;
					End_w = 1'd1;
				end
			end
			END: begin
				if(checksum_fail_r) begin
					check_w = 0;
				end
				else begin
					if(Checksum_r == checksum_r && cnt_r == 1)
						check_w = 1;
					else
						check_w = 0;
				end

				if(cnt_r == 0) begin
					cnt_w = char == 8'h0d? cnt_r + 1 : cnt_r;
					state_w = state_r;
				end
				else begin
					cnt_w = char == 8'h0a? 0 : cnt_r;
					state = char == 8'h0a? IDLE : state_r;
				end
			end
		endcase
	end
	else begin
		state_w = state_r;
		cnt_w = cnt_r;
		checksum_w = checksum_r;
		check_w = check_r;
		End_w = End_r;
		checksum_failed_w = checksum_failed_r;
		Checksum_w = Checksum_r;
	end
end

//sequential

always@(posedge i_clk or negedge i_rst) begin
	if(!i_rst) begin
		state_r <= IDLE;
		checksum_r <= 8'h00;
		cnt_r <= 8'd0;
		check_r <= 1'd0;
		End_r <= 1'd0;
		Checksum_r <= 8'h00;
	end
	else begin
		state_r <= state_w;
		checksum_r <= checksum_w;
		cnt_r <= cnt_w;
		check_r <= check_w;
		End_r <= End_w;
		Checksum_r <= Checksum_w;
	end
end

endmodule
