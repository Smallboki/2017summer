module receiver(
	input i_clk,
	input i_rst,
	input i_rx,
	input i_baud,

	output check,
	output End,
	output[15:0] Talker_Idnetifier,
	output[23:0] Sentence_Identifier,
	output[7:0] Data,
	output[7:0] fieldcnt
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
logic End_r,End_w;

logic[7:0] Talker_Identifier_r[1:0],Talker_Identifier_w[1:0];
logic[7:0] Sentence_Identifier_r[2:0],Sentence_Identifier_w[2:0];
logic[7:0] fieldcnt_r,fieldcnt_w;
logic[7:0] Checksum_r,Checksum_w;
//submodule

char_r zchar_t(.i_clk(i_clk),.i_rst(i_rst),.i_baud(i_baud),.i_rx(i_rx),.o_char(char),.o_finished(finished));

//combinational

assign check = check_r;
assign End = End_r;
assign Talker_Identifier[7:0] = Talker_Identifier_r[0];
assign Talker_Identifier[15:8] = Talker_Identifier_r[1];
assign Sentence_Identifier[7:0] = Sentence_Identifier_r[0];
assign Sentence_Identifier[15:8] = Snetence_Identifier_r[1];
assign Sentence_Identifier[13:16] = Snetence_Identifier_r[2];
assign fieldcnt = fieldcnt_r;

always@(*) begin
	state_w = state_r;
	cnt_w = cnt_r;
	checksum_w = checksum_r;
	check_w = check_r;
	End_w = End_r;
	checksum_failed_w = checksum_failed_r;
	fieldcnt_w = fieldcnt_r;
	Checksum_w = Checksum_r;
	Takler_Identifier_w[0] = Talker_Identifier_r[0];
	Takler_Identifier_w[1] = Talker_Identifier_r[1];
	Sentence_Identifier_w[0] = Sentence_Identifier_r[0];
	Sentence_Identifier_w[1] = Sentence_Identifier_r[1];
	Sentence_Identifier_w[2] = Sentence_Identifier_r[2];

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
					fieldcnt_w = 1;
				end
				else begin
					cnt_w = cnt_r + 1;
					state_w = state_r;
					fieldcnt_w = fieldcnt_r;
				end
				checksum_w = checksum_r ^ char;
			end
			DATA: begin
				checksum_w = checksum_r ^ char;
				if(char = ",")
					fieldcnt_w = fieldcnt_r + 1;
				else
					fieldcnt_w = fieldcnt_r;

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
		fieldcnt_w = fieldcnt_r;
		Checksum_w = Checksum_r;
		Takler_Identifier_w[0] = Talker_Identifier_r[0];
		Takler_Identifier_w[1] = Talker_Identifier_r[1];
		Sentence_Identifier_w[0] = Sentence_Identifier_r[0];
		Sentence_Identifier_w[1] = Sentence_Identifier_r[1];
		Sentence_Identifier_w[2] = Sentence_Identifier_r[2];
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
		fieldcnt_r <= 0;
		Checksum_r <= 8'h00;
		Talker_Identifier_r[0] <= 0;
		Talker_Identifier_r[1] <= 0;
		Sentence_Identifier_r[0] <= 0;
		Sentence_Identifier_r[1] <= 0;
		Sentence_Identifier_r[2] <= 0;
	end
	else begin
		state_r <= state_w;
		checksum_r <= checksum_w;
		cnt_r <= cnt_w;
		check_r <= check_w;
		End_r <= End_w;
		fieldcnt_r <= fieldcnt_w;
		Checksum_r <= Checksum_w;
		Talker_Idnetifier_r[0] <= Talker_Identifier_w[0];
		Talker_Idnetifier_r[1] <= Talker_Identifier_w[1];
		Sentence_Identifier_r[0] <= Sentence_Identifier_w[0];
		Sentence_Identifier_r[1] <= Sentence_Identifier_w[1];
		Sentence_Identifier_r[2] <= Sentence_Identifier_w[2];
	end
end

endmodule
