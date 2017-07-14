`define ADDRWIDTH 25

module sdram(
	i_clk,
	i_rst,
	//to uniphy

	//from collector
	input[`ADDRWIDTH - 1:0] i_addr,
	input[7:0] i_D,
	output[7:0] o_D,
	input i_re,
	input i_we
	);
//parameter

//logic

enum {IDLE,WHOLD,WRITE,RHOLD,READ} state_w,state_r;
logic[7:0] D_w,D_r;

//combinational

assign o_D = D_r;

//sequential
always@(posedge i_clk or negedge i_rst) begin
	if(!rst) begin
		state_r <= IDLE;
	end
	else begin
		state_r <= state_w;
	end
end

endmodule
