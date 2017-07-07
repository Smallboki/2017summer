`define ADDRWIDTH
`define DATAWIDTH

module collector(
	input i_clk,//sampling frequency
	input i_rst,
	input i_start,

	output[`ADDRWIDTH - 1:0] o_addr,
	input[7:0] i_data,
	output[7:0] o_data
		);
//parameters

integer i;
//logics

logic[7:0] storage_w[99:0],storage_r[99:0];

//combinational

assign o_data = storage_r[0];

always@(*) begin
	for(i = 0; i < 99; i = i + 1) begin
		storage_w[i] = storage_r[i + 1];//shifter
	end
end

//sequential

always@(posedge i_clk or negedge i_rst) begin
	if(!i_rst) begin
		for(i = 0; i < 100; i = i + 1) begin
			storage_r[i] <= 0;
		end
	end
	else begin
		for(i = 0; i < 100; i = i + 1) begin
			storage_r[i] <= storage_w[i];
		end
	end
end
endmodule
