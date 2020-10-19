module porta_nor
(
	input a, b,
	output s
);

	assign s = ~(a | b);
	
endmodule 