module verifica_individuos
(
	input a, b, c, 
	output s 
);

	wire ab; 
	
	porta_nand nad1(a, b, ab);
	
	porta_or or1(ab, c, s);
	
endmodule 