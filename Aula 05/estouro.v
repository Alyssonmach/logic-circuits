module estouro
(
	input s, a, b,
	output x
);

	assign x = (~s & a & b) | (s & ~a & ~b);
	
endmodule 