module transmitter(
	input i_clk,
	input i_rst,
	input[7:0] D,

	output o_tx,
	);

//parameter

//logics

enum {IDLE, DATA,} state_w,state_r;

logic tx_w,tx_r;
logic[7:0] D_w,D_r;
logic start_r,tx,finished;

//combinational

char_t zchar_t(.i_clk(i_clk),.i_rst(i_rst),.i_char(D),.i_start(start_r),.o_tx(tx));

assign o_tx = tx;

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
	end
	else begin
	end
end

endmodule
