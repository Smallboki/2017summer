module char_t(
	input i_clk,
	input i_rst,
	input[7:0] i_char,
	input i_start,

	output o_tx,
	output o_finished
		);
//parameter
//logic

enum {IDLE, DATA} state_w,state_w;

logic[7:0] char_w,char_r;
logic tx_w,tx_r;
logic[3:0] cnt_w,cnt_r;

//combinational

assign o_tx = tx_r;

always@(*) begin
	case(state_r)
		IDLE: begin
			cnt_w = 4'd0;
			if(i_start) begin
				tx_w = 1'd0;
				char_w = i_char;
				state_w = DATA;
			end
			else begin
				tx_w = 1'd1;
				char_w = char_r;
				state_w = state_r;
			end
		end
		DATA: begin
			char_w = char_r << 1;
			if(cnt_r[3] == 1'b1) begin
				tx_w = 1'd1;
				state_w = IDLE;
			end
			else begin
				tx_w = char_r[7];
				state_w = state_r;
			end
		end
	endcase
end

//sequential

always@(posedge i_clk or negedge i_rst) begin
	if(!i_rst) begin
		char_r <= 8'd0;
		tx_r <= 1'd0;
		state_r <= IDLE;
		cnt_r <= 4'd0;
	end
	else begin
		char_r <= char_w;
		tx_r <= tx_w;
		state_r <= state_w;
		cnt_r <= cnt_w;
	end
end
endmodule
