module Mod_Teste2
(
	input [4:0]SW,
	output [3:0]LEDR
);

	seletor_ic_4bits seletor(SW[4:1], SW[0], LEDR);
	
endmodule 