module ether(
	input i_clk125,
	input i_rst,
	//from collector
	input i_clk,
	input i_D,
	input i_write,
	//setting
	input[47:0] i_desmac,
	//to/from phy
	output[4:0] o_data,
	output o_tx_ctrl,
	input[4:0] i_data,
	input i_rx_ctrl,
	input i_mdio,
	output o_mdio,
	output o_mdc,
	output o_oen
	);

//parameters

localparam SOUMAC = ;

//logics

enum {IDLE,DES,SOU,LEN,DATA,PAD} state_w,state_r;

logic[7:0] char_w[7:0],char_r[7:0],char;
logic[2:0] r_r,r_w,w_w,w_r;

logic tx_dval,tx_sop,tx_eop,tx_rdy,tx_crc_fwd;
logic[7:0] tx_data;
logic[1:0] tx_mod;
logic[5:0] tx_err;
logic[47:0] desmac_w,desmac_r;

logic[2:0] cnt_w,cnt_r;
//submodule

assign char = char[r_r];
//combinational

always@(*) begin
	if(tx_dval && tx_rdy) begin
		r_w = r_r + 1;
	end
	else begin
		r_w = r_r;
	end

	if(i_write) begin
		w_w = w_w + 1;
	end
	else begin
		w_w = w_r;
	end
end

always@(*) begin
	tx_sop = 0;
	tx_eop = 0;
	tx_crc_fwd = 0;
	case(state_r)
		IDLE: begin
			tx_dval = 0;
			tx_data = 0;
			if(r_r != w_r) begin
				state_w = DES;
			end
			else begin
				state_w = state_r;
			end
		end
		DES: begin
			tx_dval = 1;
			tx_data = desmac_r[7:0];
			if(tx_rdy) begin
				desmac_w = desmac_r >> 8;
				if(cnt_r == 5) begin
					state_w = SOU;
					cnt_w = 0;
				end
				else begin
					state_w = state_r;
					cnt_w = cnt_r;
				end
				tx_sop = cnt_r == 0? 1:0;
			end
			else begin
				cnt_w = cnt_r;
				desmac_w = desmac_r;
				state_w = state_r;
			end
		end
		SOU: begin
			tx_dval = 1;
			tx_data = soumac_r[7:0];
			if(tx_rdy) begin
				soumac_w = soumac_r >> 8;
				if(cnt_r == 5) begin
					state_w = LEN;
					cnt_w = 0;
				end
				else begin
					state_w = state_r;
					cnt_w = cnt_r;
				end
			end
			else begin
				cnt_w = cnt_r;
				soumac_w = soumac_r;
				state_w = state_r;
			end
		end
		LEN: begin
			tx_dval = 1;
			tx_data = cnt_r == 0? 8'h01 : 8'h00;//256
			if(tx_rdy) begin
				if(cnt_r == 1) begin
					state_w = DATA;
					cnt_w = 0
				end
				else begin
					state_w = state_r;
					cnt_w = cnt_r + 1;
				end
			end
			else begin
				cnt_w = cnt_r;
				state_w = state_r;
			end
		end
		DATA: begin
			tx_dval = r_r != w_r;
			tx_data = char_r[r_r];
			if(tx_rdy && tx_dval) begin
				r_w = r_r + 1;
				state_w = char_r[r_r] == 8'ha? PAD :state_r;
				cnt_w = cnt_r + 1;
			end
			else begin
				r_w = r_r;
				state_w = state_r;
				cnt_w = cnt_r;
			end
		end
		PAD: begin
			tx_dval = 1;
			tx_data = 0;
			if(tx_rdy) begin
				state_w = cnt_r == 255? CRC : state_r;
				cnt_w = cnt_r == 255? 0 : cnt_r + 1;
				tx_eop = cnt_r == 255? 1:0;
			end
			else begin
				state_w = state_r;
				cnt_w = cnt_r;
			end
		end
	endcase
end

//sequential
endmodule
