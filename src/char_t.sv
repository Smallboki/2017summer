module char_t(
	input i_clk,//sampling frequency 23040000Hz
	input i_rst,
	input[7:0] i_char,
	input i_start,
	input[2:0] i_baud,

	output o_tx,
	output o_finished
	);
//parameter
//logic

enum {IDLE,START, DATA,STOP} state_w,state_r;

logic[7:0] char_w,char_r;
logic tx_w,tx_r,finished;
logic[3:0] cnt_w,cnt_r;
logic[9:0] sample_cnt_w,sample_cnt_r;
logic[9:0] period;

//combinational

assign o_tx = tx_r;
assign o_finished = finished;

always@(*) begin
	case(i_baud)
		0: period = 100;
		1: period = 200;
		2: period = 400;
		3: period = 600;
		4: period = 1200;
		5: period = 2400;
		6: period = 4800;
	endcase
end

always@(*) begin
	case(state_r)
		IDLE: begin
			finished = 0;
			cnt_w = 4'd0;
			sample_cnt_w = 0;
			if(i_start) begin
				tx_w = 1'd0;
				char_w = i_char;
				state_w = START;
			end
			else begin
				tx_w = 1'd1;
				char_w = char_r;
				state_w = state_r;
			end
		end
		START: begin
			cnt_w = 0;
			finished = 0;
			if(sample_cnt_r < (period - 1)) begin
				tx_w = 1'd0;
				char_w = char_r;
				state_w = state_r;
				sample_cnt_w = sample_cnt_r + 1;
			end
			else begin
				tx_w = char_r[7];
				char_w = char_r << 1;
				state_w = DATA;
				sample_cnt_w = 0;
			end
		end
		DATA: begin
			finished = 0;
			if(sample_cnt_r < (period - 1)) begin
				char_w = char_r;
				state_w = state_r;
				cnt_w = cnt_r;
				tx_w = tx_r;
				sample_cnt_w = sample_cnt_r + 1;
			end
			else begin
				sample_cnt_w = 0;
				if(cnt_r == 7) begin
					cnt_w = 0;
					tx_w = 1'b1;
					char_w = 0;
					state_w = STOP;
				end
				else begin
					tx_w = char_r[7];
					char_w = char_r << 1;
					cnt_w = cnt_r + 1;
					state_w = state_r;
				end
			end
		end
		STOP: begin
			char_w = char_r;
			cnt_w = cnt_r;
			tx_w = tx_r;
			if(sample_cnt_r < (period - 2)) begin
				sample_cnt_w = sample_cnt_r + 1;
				state_w = state_r;
				finished = 0;
			end
			else begin
				sample_cnt_w = 0;
				finished = 1;
				state_w = IDLE;
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
		sample_cnt_r <= 0;
	end
	else begin
		char_r <= char_w;
		tx_r <= tx_w;
		state_r <= state_w;
		cnt_r <= cnt_w;
		sample_cnt_r <= sample_cnt_w;
	end
end
endmodule
