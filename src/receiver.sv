module receiver_gps(
	input i_clk,
	input i_rst,
	input i_rx,

	output check,
	output[7:0] Data[127:0];
);

//parameter

localparam nTI = 2;
localparam nSI = 3;
localparam nChecksum = 2;

//vars

enum { IDLE, TI, SI, DATA, CHECK, END} state_r,state_w;

logic ctn_w,ctn_r;
logic[7:0] char;
logic finished;
logic[7:0] checksum_r,checksum_w;
logic checksum_failed_r,checksum_failed_w;
logic check_r,check_w;

logic[7:0] Talker_Identifier[1:0];
logic[7:0] Sentence_Identifier[2:0];
logic[7:0] Checksum_r,Checksum_w;
//submodule

char(.i_clk(i_clk),.i_rst(i_rst),.i_rx(i_rx),.o_char(char),.o_finished(finished));

//combinational

assign check = check_r;

always@(*) begin

	checksum_w = checksum_r;
	check_w = check_r;

	if(finished) begin
		case(state_r)
			IDLE: begin
				if(char == "$")
					state_w = TI;
				else
					state_w = state_r;
			end
			TI: begin
				cnt_w = cnt_r + 1;
				checksum_w = checksum_r ^ char;
			end
			SI: begin
				cnt_w = cnt_r + 1;
				checksum_w = checksum_r ^ char;
			end
			DATA: begin
				checksum_w = checksum_r ^ char;
				if(char = ",") begin
					
				end
				else begin
					
				end
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
				end
				else begin
					cnt_w = cnt_r + 1;
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
	end
end

//sequential

always@(posedge i_clk or negedge i_rst) begin
	if(!i_rst) begin
		state_r <= IDLE;
		checksum_r <= 8'h00;
		cnt_r <= 8'd0;
		check_r <= 1'd0;
	end
	else begin
		state_r <= state_w;
		checksum_r <= checksum_w;
		cnt_r <= cnt_w;
		check_r <= check_w;
	end
end

endmodule
