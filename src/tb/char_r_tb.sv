`timescale 1ns/100ps
module char_r_tb();

localparam SCLK = 10;
localparam SHALF = SCLK/2;
localparam DCLK = 2000;
localparam DHALF = DCLK/2;

integer i;

logic sclk;
logic dclk;
logic rst,finished,state,rx;
logic read,ready,used;
logic[7:0] char,Data[99:0],D;
logic[3:0] cnt_w,cnt_r;

always #SHALF sclk = ~sclk;
always #DHALF dclk = ~dclk;

//char_r zchar_r(sclk,rst,3'd1,rx,char,finished,state);
receiver zreceiver(sclk,rst,read,ready,char,16'd1,rx,);

initial begin
	sclk = 1;
	dclk = 1;
	rst = 1;
	D = 8'b11111111;
	$fsdbDumpfile("char_r.fsdb");
	$fsdbDumpvars();
	$readmemh("data.bin",Data);
	#DCLK; rst = 0;
	#DCLK; rst = 1;
	for(i = 0; i < 9; i = i + 1) begin
		D = Data[i];
		#(10*DCLK);
	end
	$finish;
end

always@(*) begin
	if(ready) begin
		read = 1;
		$write("%c",char);
	end
	else begin
		read = 0;
	end
	cnt_w = cnt_r == 9? 0 : cnt_r + 1;
	if(cnt_r == 0)
		rx = 0;
	else if(cnt_r == 9)
		rx = 1;
	else
		rx = D[cnt_r - 1];
end

always@(posedge dclk or negedge rst) begin
	if(!rst) begin
		cnt_r <= 4'b1111;
	end
	else begin
		cnt_r <= cnt_w;
	end
end

endmodule
