module char_r(
	input i_clk,//1152000Hz
	input i_rst,
	input i_baud,
	input i_rx,
	output[7:0] o_char,
	output o_finished
	);
//parameters

//vars

logic[7:0] char_r,char_w,tmp;
enum { IDLE, DATA, STOP } state_r,state_w;
logic[2:0] cnt_r,cnt_w;
logic[8:0] sample_cnt_w,sample_cnt_r;
logic finished;
logic [8:0] period;
logic [9:0] period_1_5;

//combinational

assign o_char = char_r;
assign o_finished = finished;



always@(*) begin
	case(i_baud)
		0: begin//115200Hz
			period = 10;
			period_1_5 = 15;
		end
	endcase
end

always@(*) begin
	case(state_r)
		IDLE: begin
			cnt_w = 3'd0;
			sample_cnt_w = 0;
			finished = 0;
			tmp = 0;
			if(i_rx == 1'b0)
				state_w = DATA;
			else
				state_w = IDLE;
		end
		DATA: begin
			finised = 0;
			
			if(sample_cnt_r < (cnt_r == 0 ? period_1_5:period)) begin
				sample_cnt_w = sample_cnt_r + 1;
				cnt_w = cnt_r;
				tmp = 0;
				char_w = char_r;
			end
			else begin
				sample_cnt_w = 0;
				cnt_w = cnt_r < 7? cnt_r + 1 : 0;
				tmp = char_r >> 1;
				char_w = {i_rx,tmp[6:0]};
			end

			if(cnt_r == 3'd7) begin
				state_w = STOP;
			end
			else begin
				state_w = DATA;
			end
		end
		STOP: begin
			tmp = 0;
			cnt_w = 3'd0;
			sample_cnt_w = 0;
			state_w = IDLE;
			finished = 1;
			char_w = char_r;
		end
	endcase
end

//sequential

always@(posedge i_clk or negedge i_rst) begin
	if(!i_rst) begin
		char_r <= 7'd0;
		cnt_r <= 3'd0;
		state_r <= IDLE;
		sample_cnt_r <= 1;
	end
	else begin
		char_r <= char_w;
		cnt_r <= cnt_w;
		state_r <= state_w;
		sample_cnt_r <= sample_cnt_w;
	end
end

endmodule
