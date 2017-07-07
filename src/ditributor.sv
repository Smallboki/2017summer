module distributor(
	input i_clk,//sampling frequency
	input i_rst,

	input[7:0] i_D0,
	input[7:0] i_D1,
	input[7:0] i_D2,
	input[7:0] i_D3,
	input[7:0] i_D4,
	input[7:0] i_D5,
	input[7:0] i_D6,
	input[7:0] i_D7,
	input[7:0] i_D8,
	input[7:0] i_D9,

	input[9:0] i_start,

	output[7:0] o_D0,
	output[7:0] o_D1,
	output[7:0] o_D2,
	output[7:0] o_D3,
	output[7:0] o_D4,
	output[7:0] o_D5,
	output[7:0] o_D6,
	output[7:0] o_D7,
	output[7:0] o_D8,
	output[7:0] o_D9
	);


//parameter
localparam ADDRWIDTH = 8;
localparam DATAWITDH = 800;

//logic

endmodule
