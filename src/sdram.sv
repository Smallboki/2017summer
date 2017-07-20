`define ADDRWIDTH 21

module sdram(
	input i_rst
	//from to mem
	output[12:0] mem_a,
	output[2:0] mem_ba,
	output mem_casn,
	output mem_cke,
	output mem_clk,
	output mem_csn,
	output mem_dm,
	inout[7:0] mem_dq,
	inout mem_dqs,
	output mem_odt,
	output mem_rasn,
	output mem_restn,
	output mem_wen,
	//from to collector
	input i_clk,
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
logic[`ADDRWIDTH - 1:0] addr_w,addr_r;
logic re_w,re_r,we_w,we_r;

logic afi_clk;
logic[20:0] avl_addr;
logic[3:0] avl_be;
logic avl_begin;
logic[31:0] rdata;
logic rval;
logic r_req;
logic avl_rdy;
logic avl_size;
logic[31:0] avl_wdata;
logic w_req;
//submodule



//combinational

assign o_D = D_r;

always@(*) begin
	addr_w = i_addr;
	avl_begin = 0;
	avl_rdy = 1;
	r_req = 0;
	w_req = 0;
	avl_size = 1;
	case(state_r)
		IDLE: begin
			if(i_re && ((addr_r != i_addr) || we_r)) begin
				state_w = READ;
				avl_begin = 1;
				r_req = 1;
			end
			else if(i_we && ((addr_r != i_addr) || re_r)) begin
				state_w = WRITE;
				avl_begin = 1;
				w_req = 1;
			end
			else begin
				state_w = state_r;
			end
		end
		READ: begin
			if(rval) begin
				D_w = rdata[7:0];
				state_w = IDLE;
			end
			else begin
				D_w = D_r;
				state_r = state_w;
			end
		end
		WRITE: begin
			state_w = IDLE;
		end
	endcase
end

//sequential
always@(posedge i_clk or negedge i_rst) begin
	if(!rst) begin
		state_r <= IDLE;
		D_r <= 0;
		addr_r <= 0;
		re_r <= 0;
		we_r <= 0;
	end
	else begin
		state_r <= state_w;
		D_r <= D_w;
		addr_r <= addr_w;
		re_r <= re_w;
		we_r <= we_w;
	end
end

endmodule
