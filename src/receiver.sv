module receiver(
	input i_clk,
	input i_rst

	input i_read,
	output o_ready,
	output[7:0] o_D,

	input[2:0] i_baud,
	input i_rx,
	);

//parameters

integer i;

//logics

logic[7:0] D_w[2:0],D_r[2:0];
logic[2:0] r_w,r_r,w_w,w_r;
logic[7:0] char;
logic finished;

//submodules

char_r zchar_r(.i_clk(i_clk),.i_rst(i_rst),.i_baud(i_baud),.i_rx(i_rx),.o_char(char),.o_finished(finished));

//combinatila;

assign o_D = D_r[r_r];
assign o_ready = ~(r_r == w_r);

always@(*) begin
	if(finished) begin
		w_w = w_r + 3'd1;
		for(i = 0; i < 8; i = i + 1 ) begin
			if(w_r == i)
				D_w[i] = char;
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

	if(i_read) begin
		r_w = r_r + 3'd1;
	end
	else begin
		r_w = r_r;
	end
end

//sequential

always@(posedge i_clk or negedge i_rst) begin
	if(!i_rst) begin
		for(i = 0; i < 8; i = i + 1) begin
			D_r[i] <= 0;
		end
		r_r <= 0;
		w_r <= 0;
	end
	else begin
		for(i = 0; i < 8; i = i + 1) begin
			D_r[i] <= D_w[i];
		end
		r_r <= r_w;
		w_r <= w_w;
	end
end

endmodule
