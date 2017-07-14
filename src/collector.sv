`define ADDRWIDTH 23
`define DATAWIDTH 32

module collector(
	input i_clk,//sampling frequency
	input i_rst,

	input[9:0] i_rx,
	output[9:0] o_tx,

	//RAM
	output[`ADDRWIDTH - 1:0] o_addr,
	input[7:0] i_D,
	output[7:0] o_D,
	output WE,
	output RE,

	// to/from uart
	input i_avmclk,
	input[15:0] i_inst,
	input i_set,

	output o_write,
	input i_full,
	output o_char
	);
//parameters

integer i,j;
localparam OFFSET0 = 0;
localparam OFFSET1 = 1024;
localparam OFFSET2 = 2048;
localparam OFFSET3 = 3072;
localparam OFFSET4 = 4096;
localparam OFFSET5 = 5120;
localparam OFFSET6 = 6144;
localparam OFFSET7 = 7168;
localparam OFFSET8 = 8192;
localparam OFFSET9 = 9216;

//logics

	//receiver & transmitter
enum {RECV,SEND} state_w,state_r;

logic[9:0] ready,read,used;
logic[10:0] write,full;
logic[`ADDRWIDTH - 1:0] readaddr_w[109:0],readaddr_r[109:0];
logic[`ADDRWIDTH - 1:0] writeaddr_w[9:0],writeaddr_r[9:0];
logic[`ADDRWIDTH - 1:0] addr;
logic we_r,re_r;

logic[3:0] rport_w,rport_r;
logic[3:0] sport_w,sport_r;
logic[3:0] port_w[10:0],port_r[10:0];

logic rready;
logic[`ADDRWIDTH:0] offset[9:0];

	//controlunit
enum {ADDR,DATA} cstate_w,cstate_r;

logic[15:0] ctrl_w[30:0],ctrl_r[30:0];//0~9: portmap; 10~29: baud; 30: uart;
logic[15:0] portmap;
logic[15:0] caddr_w,caddr_r;
//submodules

receiver xreceiver_0(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[0]),.o_ready(ready[0]),.o_used(used[0]),.o_D(o_D),.i_baud(ctrl_r[10]),.i_rx(i_rx[0]));
receiver xreceiver_1(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[1]),.o_ready(ready[1]),.o_used(used[1]),.o_D(o_D),.i_baud(ctrl_r[11]),.i_rx(i_rx[1]));
receiver xreceiver_2(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[2]),.o_ready(ready[2]),.o_used(used[2]),.o_D(o_D),.i_baud(ctrl_r[12]),.i_rx(i_rx[2]));
receiver xreceiver_3(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[3]),.o_ready(ready[3]),.o_used(used[3]),.o_D(o_D),.i_baud(ctrl_r[13]),.i_rx(i_rx[3]));
receiver xreceiver_4(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[4]),.o_ready(ready[4]),.o_used(used[4]),.o_D(o_D),.i_baud(ctrl_r[14]),.i_rx(i_rx[4]));
receiver xreceiver_5(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[5]),.o_ready(ready[5]),.o_used(used[5]),.o_D(o_D),.i_baud(ctrl_r[15]),.i_rx(i_rx[5]));
receiver xreceiver_6(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[6]),.o_ready(ready[6]),.o_used(used[6]),.o_D(o_D),.i_baud(ctrl_r[16]),.i_rx(i_rx[6]));
receiver xreceiver_7(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[7]),.o_ready(ready[7]),.o_used(used[7]),.o_D(o_D),.i_baud(ctrl_r[17]),.i_rx(i_rx[7]));
receiver xreceiver_8(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[8]),.o_ready(ready[8]),.o_used(used[8]),.o_D(o_D),.i_baud(ctrl_r[18]),.i_rx(i_rx[8]));
receiver xreceiver_9(.i_clk(i_clk),.i_rst(i_rst),.i_read(read[9]),.o_ready(ready[9]),.o_used(used[9]),.o_D(o_D),.i_baud(ctrl_r[19]),.i_rx(i_rx[9]));

transmitter xtransmitter_0(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(ctrl_r[20]),.o_full(full[0]),.i_write(write[0]),.o_tx(o_tx[0]));
transmitter xtransmitter_1(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(ctrl_r[21]),.o_full(full[1]),.i_write(write[1]),.o_tx(o_tx[1]));
transmitter xtransmitter_2(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(ctrl_r[22]),.o_full(full[2]),.i_write(write[2]),.o_tx(o_tx[2]));
transmitter xtransmitter_3(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(ctrl_r[23]),.o_full(full[3]),.i_write(write[3]),.o_tx(o_tx[3]));
transmitter xtransmitter_4(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(ctrl_r[24]),.o_full(full[4]),.i_write(write[4]),.o_tx(o_tx[4]));
transmitter xtransmitter_5(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(ctrl_r[25]),.o_full(full[5]),.i_write(write[5]),.o_tx(o_tx[5]));
transmitter xtransmitter_6(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(ctrl_r[26]),.o_full(full[6]),.i_write(write[6]),.o_tx(o_tx[6]));
transmitter xtransmitter_7(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(ctrl_r[27]),.o_full(full[7]),.i_write(write[7]),.o_tx(o_tx[7]));
transmitter xtransmitter_8(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(ctrl_r[28]),.o_full(full[8]),.i_write(write[8]),.o_tx(o_tx[8]));
transmitter xtransmitter_9(.i_clk(i_clk),.i_rst(i_rst),.i_D(i_D),.i_baud(ctrl_r[29]),.o_full(full[9]),.i_write(write[9]),.o_tx(o_tx[9]));

//combinational

assign rready = &ready;
assign WE = we_r;
assign RE = re_r;
assign o_addr = addr;
assign offset[0] = OFFSET0;
assign offset[1] = OFFSET1;
assign offset[2] = OFFSET2;
assign offset[3] = OFFSET3;
assign offset[4] = OFFSET4;
assign offset[5] = OFFSET5;
assign offset[6] = OFFSET6;
assign offset[7] = OFFSET7;
assign offset[8] = OFFSET8;
assign offset[9] = OFFSET9;
//from/to uart
assign full[10] = i_full;
assign o_write = write[10];
assign o_char = i_D;
//receive & transmmit
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
				readaddr_w[i] = readaddr_r[i];
				port_w[i] = port_r[i];
			end

			addr = writeaddr_r[rport_r];
			re_r = 0;
			rport_w = rport_r == 9? 0 : rport_r + 1;
			sport_w = sport_r;
		end
		SEND: begin
			if(rready)
				state_w = RECV;
			else
				state_w = SEND;
			for(i = 0; i < 11; i = i + 1) begin
				portmap = ctrl_r[i];
				if(sport_r == i && !full[i]) begin
					for(j = 0; j < 10; j = j + 1) begin
						if(port_r[i] == j) begin
							readaddr_w[i * 10 + j] = readaddr_r[i * 10 + j] < offset[i] + 1024?readaddr_r[i * 10 + j]+1:offset[j];
						end
						else begin
							readaddr_w[i * 10 + j] = readaddr_r[i * 10 + j];
						end
					end

					if(used[port_r[i]] && portmap[port_r[i]]) begin
						write[i] = 1;
					end
					else begin
						write[i] = 0;
					end

					if(used[port_r[i]] && !(i_D == 8'ha) && portmap[port_r[i]]) begin
						port_w[i] = port_r[i];
					end
					else begin
						port_w[i] = port_r[i] < 9? port_r[i] + 1 : 0;
					end
				end
				else begin
					for(j = 0; j < 10; j = j + 1) begin
						readaddr_w[i * 10 + j] = readaddr_r[i * 10 + j];
					end
					port_w[i] = port_r[i];
					write[i] = 0;
				end
			end
			addr = readaddr_r[sport_r * 10 + port_r[sport_r]];//tsan tsan
			re_r = 1;
			we_r = 0;
			rport_w = rport_r;
			sport_w = sport_r == 10? 0: sport_r + 1;
		end
	endcase
end
	//control unit
always@(*) begin
	if(cstate_r == ADDR) begin
		for(i = 0; i < 30; i = i + 1) begin
			ctrl_w[i] = ctrl_r[i];
		end
		caddr_w = i_inst;
		if(i_set)
			cstate_w = DATA;
		else
			cstate_w = ADDR;
	end
	else begin
		for(i = 0; i < 29; i = i + 1) begin
			if(caddr_r == i)
				ctrl_w[i] = i_inst;
			else
				ctrl_w[i] = ctrl_r[i];
		end
		cstate_w = i_set ? ADDR : DATA;
	end
end
//sequential

always@(posedge i_clk or negedge i_rst) begin
	if(!i_rst) begin
		for(i = 0; i < 10;i = i + 1) begin
			port_r[i] <= 0;
		end
		for(i = 0; i < 10;i = i + 1) begin
			for(j = 0; j < 10;j = j + 1) begin
				readaddr_r[i * 10 + j] <= offset[j];
			end
		end
		sport_r <= 0;
		rport_r <= 0;
		writeaddr_r[0] <= OFFSET0;
		writeaddr_r[1] <= OFFSET1;
		writeaddr_r[2] <= OFFSET2;
		writeaddr_r[3] <= OFFSET3;
		writeaddr_r[4] <= OFFSET4;
		writeaddr_r[5] <= OFFSET5;
		writeaddr_r[6] <= OFFSET6;
		writeaddr_r[7] <= OFFSET7;
		writeaddr_r[8] <= OFFSET8;
		writeaddr_r[9] <= OFFSET9;
	end
	else begin
		for(i = 0; i < 10;i = i + 1) begin
			writeaddr_r[i] <= writeaddr_w[i];
			port_r[i] <= port_w[i];
		end
		for(i = 0; i < 100; i = i + 1) begin
			readaddr_r[i] <= readaddr_w[i];
		end
		sport_r <= sport_w;
		rport_r <= rport_w;
	end
end

always@(posedge i_avmclk or negedge i_rst) begin
	if(!i_rst) begin
		for(i = 0; i < 10; i = i + 1) begin
			ctrl_r[i] <= 16'b0000001111111111;
		end
		for(i = 10; i < 30; i = i + 1) begin
			ctrl_r[i] <= 16'd1;
		end
		ctrl_r[30] <= 16'b0000001111111111;
	end
	else begin
		for(i = 0; i < 31; i = i + 1) begin
			ctrl_r[i] <= ctrl_w[i];
		end
	end
end

endmodule
