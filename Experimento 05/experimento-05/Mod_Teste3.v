module Mod_Teste3
(
	input [2:0]SW,
	output x
);

	estouro v_estouro(SW[2], SW[1], SW[0], x);
	
endmodule 