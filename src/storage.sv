module storage(
	input i_clk,
	input i_rst,
	input[23:0] si0,
	input[7:0] D0,
	input[7:0] field0
	);

//parameter
//logics



//combinational

always@(*) begin
	case(si0)
	endcase
end
//sequential

always@(posedge i_clk or negedge i_srt) begin
	if(!i_rst) begin
	end
	else begin
	end
end

endmodule
