module decadico(clk, s);

	input clk;
	output [3:0]s;
	
	wire and1;
	wire and2;
	wire nand1;
	wire clear;
	
	ff_jk ff1(clear, clk, 1, 1, s[0]);
	ff_jk ff2(clear, clk, s[0], s[0], s[1]);
	assign and1 = s[0] & s[1];
	ff_jk ff3(clear, clk, and1, and1, s[2]);
	assign and2 = s[0] & s[1] & s[2];
	ff_jk ff4(clear, clk, and2, and2, s[3]);
	assign nand1 = ~(s[3] & s[1]);
	assign clear = nand1;


endmodule 