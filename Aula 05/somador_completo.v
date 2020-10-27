module somador_completo
(
	input a, b, te,
	output s, ts
);

	assign s = (a ^ b) ^ te;
	assign ts = (a & b) | (a & te) | (b & te);
	
endmodule 