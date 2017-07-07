module transmitter(
	input i_clk,
	input i_rst,
	input[7:0] D,
	input i_baud,

	output o_tx
	);

//parameter

//logics

enum {IDLE, DATA,} state_w,state_r;

logic[7:0] D_w,D_r;
logic start_r,finished;

//combinational

char_t zchar_t(.i_clk(i_clk),.i_rst(i_rst),.i_baud(i_baud),.i_char(D),.i_start(start_r),.o_tx(o_tx),.o_finished(finished));


always@(*) begin
	case(state_r)
		IDLE: begin
			
		end
		DATA: begin

		end
	endcase
end

//sequential

always@(posedge i_clk or negedge i_rst) begin
	if(!i_rst) begin
		state_r <= IDLE;
	end
	else begin
		state_r <= state_w;
	end
end

endmodule
