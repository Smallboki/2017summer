module binary2deg(
	input i_clk,
	input i_rst,
	input i_start,

	input[21:0] i_binary,
	output[13:0] o_deg,
	output o_finished
	);

//logic

enum {IDLE,CAL,END} state_w,state_r;

logic[13:0] deg_w,deg_r;
logic[21:0] devider_w,devider_r;
logic[21:0] binary_w,binary_r;
logic[3:0] cnt_w,cnt_r;

//combinational

assign o_finished = finished;
assign o_deg = deg_r;

always@(*) begin
	case(state_r)
		IDLE: begin
			if(i_start) begin
				state_w = CAL;
				binary_w = i
			end
			else begin
				state_w = state_r;
			end
			devider_w = 22'b101101000000000000000;
			finished = 0;
		end
		CAL: begin
			if(cnt_r == 13) begin
				state_w = END;
			end
			else begin
				state_w = state_r;
			end

			if(binary_r < devider_r) begin
				deg_w = {deg_r[12:0],1'b0};
				binary_w = binary_r;
			end
			else begin
				deg_w = {deg_r[12:0],1'b1};
				binary_w = binary_r - devider_r;
			end
			devider_w = devider_r >> 1;
			finished = 0;
		end
		END: begin
			finished = 1;
			state_w = IDLE;
		end
	endcase
end

//sequential

always@(posedge i_clk or negedge i_rst) begin
	if(!i_rst) begin
		devider_r <= 22'b0101101000000000000000;
		binary_r <= 0;
		deg_r <= 0;
		cnt_r <= 0;
		state_r <= IDLE;
	end
	else begin
		devider_r <= devider_w;
		binary_r <= binary_w;
		deg_r <= deg_w;
		cnt_r <= cnt_w;
		state_r <= state_w;
	end
end

endmodule
