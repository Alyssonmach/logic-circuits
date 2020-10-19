module porta_nand
(
	input a, b,
	output s
);
	
	assign s = ~(a & b);
	
endmodule 

	