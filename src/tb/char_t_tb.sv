`timescale 1ns/100ps
module char_t_tb();

localparam SCLK = 10;
localparam SHALF = SCLK/2;
localparam DCLK = 2000;
localparam DHALF = DCLK/2;

integer i;

logic sclk;
logic dclk;
logic rst,finished,istart,tx;
logic write,ready,full;
logic[7:0] char,Data[99:0],D;
logic[3:0] cnt_w,cnt_r;

always #SHALF sclk = ~sclk;
always #DHALF dclk = ~dclk;

transmitter ztransmitter(sclk,rst,D,16'd1,write,full,tx);

initial begin
	sclk = 1;
	dclk = 1;
	rst = 1;
	D = 8'b11111111;
	$fsdbDumpfile("char_t.fsdb");
	$fsdbDumpvars();
	$readmemh("data.bin",Data);
	#(0.5*DCLK); rst = 0;
	#(0.5*DCLK); rst = 1;
	#(DCLK);
	for(i = 0; i < 9; i = i + 1) begin
		if(full) begin
			write = 0;
			i = i - 1;
			D = Data[i];
		end
		else begin
			write = 1;
			D = Data[i];
		end
		#(SCLK);
	end
	#(100*DCLK)
	$finish;
end

endmodule
