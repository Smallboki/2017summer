module transmitter(
	input i_clk,
	input i_rst,
	input[7:0] D,
	input i_baud,
	input i_write,

	output o_tx
	);

//parameter

integer i;

//logics


logic[2:0] r_w,r_r,w_w,w_r;
logic[7:0] D_w[7:0],D_r[7:0];
logic start_r,finished;

//combinational

char_t zchar_t(.i_clk(i_clk),.i_rst(i_rst),.i_baud(i_baud),.i_char(D),.i_start(start_r),.o_tx(o_tx),.o_finished(finished));


always@(*) begin

	start_r = ~(r_r == w_r);

	if(i_write) begin
		w_w = w_r + 3'b1;
		for(i = 0; i < 8; i = i + 1) begin
			if(w_r == i)
				D_w[w_r] = D;
			else
				D_w[i] = D_r[i];
		end
	end
	else begin
		w_w = w_r;
		for(i = 0; i < 8; i = i + 1) begin
			D_w[i] = D_r[i];
		end
	end

	if(finished) begin
		r_w = r_r + 1;
	end
	else begin
		r_w = r_r;
	end
end

//sequential

always@(posedge i_clk or negedge i_rst) begin
	if(!i_rst) begin
		w_r <= 0;
		r_r <= 0;
		for(i = 0; i < 8; i = i + 1) begin
			D_r[i] <= 0;
		end
	end
	else begin
		w_r <= w_w;
		r_r <= r_w;
		for(i = 0; i < 8; i = i + 1) begin
			D_r[i] <= D_w[i];
		end
	end
end

endmodule
