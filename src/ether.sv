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

enum {DES,SOU,LEN,DATA,PAD,CRC} state_w,state_r;

logic[7:0] char_w[7:0],char_r[7:0],char;
logic[2:0] r_r,r_w,w_w,w_r;

logic rx_dval,rx_sop,rx_eop,rx_rdy;
logic[7:0] rx_data;
logic[1:0] rx_mod;
logic[5:0] rx_err;
logic[47:0] desmac_w,desmac_r;

logic[2:0] cnt_w,cnt_r;
//submodule

assign char = char[r_r];
//combinational

always@(*) begin
	if(rx_dval && rx_rdy) begin
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
	case(state_r)
		DES: begin
			rx_dval = 1;
			rx_data = desmac_r[7:0];
			if(rx_rdy) begin
				desmac_w = desmac_r >> 8;
				cnt_w = cnt_r + 1;
			end
			else begin
				cnt_w = cnt_r;
				desmac_w = desmac_r;
			end

			if(cnt_r == 5) begin
				state_w = SOU;
				cnt_w = 0;
			end
			else begin
				state_w = state_r;
				cnt_w = cnt_r;
			end
		end
		SOU: begin
			rx_dval = 1;
			rx_data = soumac_r[7:0];
			if(rx_rdy) begin
				soumac_w = soumac_r >> 8;
				cnt_w = cnt_r + 1;
			end
			else begin
				cnt_w = cnt_r;
				soumac_w = soumac_r;
			end

			if(cnt_r == 5) begin
				state_w = SOU;
				cnt_w = 0;
			end
			else begin
				state_w = state_r;
				cnt_w = cnt_r;
			end
		end
		LEN: begin
		end
		DATA: begin
			rx_dval = r_r != w_r;
			rx_data = char_r[r_r];
			rx_sop = char_r[r_r] == "$";
			if(rx_rdy) begin
				r_w = r_r + 1;
				state_w = char_r[r_r] == 8'ha? PAD :state_r;
			end
			else begin
				r_w = r_r;
				state_w = state_r;
			end
		end
		PAD: begin
		end
		CRC: begin
		end
	endcase
end

//sequential
endmodule
