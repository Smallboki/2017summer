`timescale 1ns/100ps

module synchro_tb();

logic clk,rst,write,full,check;
logic[7:0] i_char;
logic[7:0] char[20:0];
logic[13:0] deg;

integer i;

localparam CLK = 10;
localparam HALF = CLK/2;

synchro xsynchro(clk,rst,write,i_char,full,check,deg);

initial begin
	clk = 1;
	rst = 1;
	write = 0;
	$readmemh("data.bin",char);
	$fsdbDumpfile("synchro.fsdb");
	$fsdbDumpvars();
	#CLK;
	rst = 0;
	#CLK;
	rst = 1;
	for(i = 0; i < 20; i = i + 1) begin
		i_char = char[i];
		write = 1;
		#CLK;
		write = 0;
		#(CLK*200);
	end
	#(CLK*100);
	$finish;
end

always #HALF clk = ~clk;

endmodule
