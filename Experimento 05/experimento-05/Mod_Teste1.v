module Mod_Teste1
(
	input [7:0]SW,
	output [3:0]LEDR, LEDG
);

	somador_4bits soma_4bits(SW[7:4], SW[3:0], 0, LEDR, LEDG);
	
endmodule 