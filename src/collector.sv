`define ADDRWIDTH
`define DATAWIDTH

module collector(
	input i_clk,//sampling frequency
	input i_rst,

	input[19:0] i_baud,
	input[9:0] i_rx,
	output[9:0] o_tx,

	//RAM
	output[`ADDRWIDTH - 1:0] o_addr,
	input[7:0] i_D,
	output[7:0] o_D,
	output WE,
	output RE
	//
	);
//parameters

integer i;
localparam OFFSET0 = ;
localparam OFFSET1 = ;
localparam OFFSET2 = ;
localparam OFFSET3 = ;
localparam OFFSET4 = ;
localparam OFFSET5 = ;
localparam OFFSET6 = ;
localparam OFFSET7 = ;
localparam OFFSET8 = ;
localparam OFFSET9 = ;

//logics

enum {RECV,SEND} state_w,state_r;

logic[9:0] ready,write,read;
logic[`ADDRWIDTH:0] readaddr_w[9:0],readaddr_r[9:0];
logic[`ADDRWIDTH:0] writeaddr_w[9:0],writeaddr_r[9:0];
logic we_r,re_r;

logic[3:0] rport_w,rport_r;
logic[3:0] sport_w,sport_r;

logic rready;

//submodules

receiver xreceiver_0(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[0]),.o_ready(ready[0]),.o_D(o_D),.i_baud(i_baud[0]),.i_rx(i_rx[0]));
receiver xreceiver_1(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[1]),.o_ready(ready[1]),.o_D(o_D),.i_baud(i_baud[1]),.i_rx(i_rx[1]));
receiver xreceiver_2(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[2]),.o_ready(ready[2]),.o_D(o_D),.i_baud(i_baud[2]),.i_rx(i_rx[2]));
receiver xreceiver_3(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[3]),.o_ready(ready[3]),.o_D(o_D),.i_baud(i_baud[3]),.i_rx(i_rx[3]));
receiver xreceiver_4(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[4]),.o_ready(ready[4]),.o_D(o_D),.i_baud(i_baud[4]),.i_rx(i_rx[4]));
receiver xreceiver_5(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[5]),.o_ready(ready[5]),.o_D(o_D),.i_baud(i_baud[5]),.i_rx(i_rx[5]));
receiver xreceiver_6(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[6]),.o_ready(ready[6]),.o_D(o_D),.i_baud(i_baud[6]),.i_rx(i_rx[6]));
receiver xreceiver_7(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[7]),.o_ready(ready[7]),.o_D(o_D),.i_baud(i_baud[7]),.i_rx(i_rx[7]));
receiver xreceiver_8(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[8]),.o_ready(ready[8]),.o_D(o_D),.i_baud(i_baud[8]),.i_rx(i_rx[8]));
receiver xreceiver_9(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[9]),.o_ready(ready[9]),.o_D(o_D),.i_baud(i_baud[9]),.i_rx(i_rx[9]));

transmitter xtransmitter_(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(i_baud[10]),.i_write(write[0]),.o_tx(o_tx[0]));
transmitter xtransmitter_(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(i_baud[11]),.i_write(write[1]),.o_tx(o_tx[1]));
transmitter xtransmitter_(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(i_baud[12]),.i_write(write[2]),.o_tx(o_tx[2]));
transmitter xtransmitter_(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(i_baud[13]),.i_write(write[3]),.o_tx(o_tx[3]));
transmitter xtransmitter_(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(i_baud[14]),.i_write(write[4]),.o_tx(o_tx[4]));
transmitter xtransmitter_(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(i_baud[15]),.i_write(write[5]),.o_tx(o_tx[5]));
transmitter xtransmitter_(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(i_baud[16]),.i_write(write[6]),.o_tx(o_tx[6]));
transmitter xtransmitter_(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(i_baud[17]),.i_write(write[7]),.o_tx(o_tx[7]));
transmitter xtransmitter_(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(i_baud[18]),.i_write(write[8]),.o_tx(o_tx[8]));
transmitter xtransmitter_(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(i_baud[19]),.i_write(write[9]),.o_tx(o_tx[9]));

//combinational

assign o_data = storage_r[0];
assign rready = &ready;
assign WE = we_r;
assign RE = re_r;

always@(*) begin
	case(state_r)
		RECV: begin
			if(rready)
				state_w = RECV;
			else
				state_w = SEND;

			for(i = 0;i < 10; i = i + 1) begin
				if((rport_r == i) && ready[i]) begin
					read[i] = 1;
					writeaddr_w[i] = writeaddr_r[i] + 1;
					we_r = 1;
				end
				else begin
					read[i] = 0;
					writeaddr_w[i] = writeaddr_r[i];
					we_r = 0;
				end
			end

			re_r = 0;
			rport_w = rport_r == 9? 0 : rport_r + 1;
			sport_w = sport_r;
		end
		SEND: begin
			if(rready)
				state_w = RECV;
			else
				state_w = SEND;

			for(i = 0;i < 10; i = i + 1) begin
				if((sport == i) && !(writeaddr_r[i] == readaddr_r[i])) begin
					write[i] = 1;
					readaddr_w[i] = readaddr_r[i] + 1;
					re_r = 1;
				end
				else begin
					write[i] = 0;
					readaddr_w[i] = readaddr_r[i];
					re_r = 0;
				end
			end

			we_r = 0;
			rport_w = rport_r;
			sport_w = sport_r == 9? 0: sport_r + 1;
		end
	endcase
end

//sequential

always@(posedge i_clk or negedge i_rst) begin
	if(!i_rst) begin
		for(i = 0; i < 10;i = i + 1) begin
			writeaddr_r[i] <= 0;
			readaddr_r[i] <= 0;
		end
	end
	else begin
		for(i = 0; i < 10;i = i + 1) begin
			writeaddr_r[i] <= writeaddr_w[i];
			readaddr_r[i] <= writeaddr_w[i];
		end
	end
end

endmodule
