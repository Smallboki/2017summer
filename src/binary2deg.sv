module binary2deg(
	input i_clk,
	input i_rst,
	input i_start,

	input[63:0] i_decimal,
	input[3:0] i_frccnt,
	output[13:0] o_deg,
	output o_finished
	);

//logic

enum {IDLE,D2B1,D2B2,SHIFT,B2D,END} state_w,state_r;

logic[13:0] deg_w,deg_r;
logic[21:0] devider_w,devider_r;
logic[34:0] tmp_w,tmp_r;
logic[63:0] decimal_w,decimal_r;
logic[21:0] binary_w,binary_r;
logic[3:0] cnt_w,cnt_r;
logic[3:0] frccnt_w,frccnt_r;

//combinational

assign o_finished = finished;
assign o_deg = deg_r;

always@(*) begin
	case(state_r)
		IDLE: begin
			if(i_start) begin
				state_w = D2B;
				decimal_w = i_decimal;
			end
			else begin
				state_w = state_r;
				deciaml_w = 0;
			end
			binary_w = 0;
			devider_w = 22'b101101000000000000000;
			finished = 0;
		end
		D2B1: begin
			if(decimal_r[3:0] < 10) begin
				tmp_w = (tmp_r << 3) + (tmp_r << 1) + {18'd0,decimal_r[3:0],13'd0};
				state_w = state_r;
			end
			else begin
				tmp_w = tmp_r;
				state_w = D2B2;
			end
			decimal_w = decimal_r >> 4;
		end
		D2B2: begin
			if(cnt_r == (frccnt_r - 1)) begin
				state_w = SHIFT;
				cnt_w = 0;
			end
			else begin
				state_w = state_r;
				cnt_w = cnt_r + 1;
			end
			tmp_w = (tmp_r << 3) + (tmp_r << 1) + {18'd0,decimal_r[3:0],13'd0};
			decimal_w = decimal_r >> 4;
		end
		SHIFT: begin
			if(cnt_r == frccnt_r) begin
				state_w = B2D;
				binary_w = tmp_w[21:0];
				cnt_w = 0;
			end
			else begin
				state_w = state_r;
				cnt_w = cnt_r + 1;
			end
			tmp_w = (tmp_r >> 4) +(tmp_r >> 5) +(tmp_r >> 8) +(tmp_r >> 9) +(tmp_r >> 12) +(tmp_r >> 13);
		end
		B2D: begin
			if(cnt_r == 13) begin
				state_w = END;
				cnt_w = 0;
			end
			else begin
				state_w = state_r;
				cnt_w = cnt_r + 1;
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
