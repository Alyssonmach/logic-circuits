module Mod_Teste4
(
	input [8:0]SW,
	output [3:0]LEDR, LEDG, 
	output LEDB
);

	somador_subtrator soma_subtrai(SW[8:5], SW[4:1], SW[0], LEDR, LEDG, LEDB);
	
endmodule 
	