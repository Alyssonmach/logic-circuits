module mod_test2(SW, LEDR);

	input [6:0]SW;
	output [3:0]LEDR;
	
	registrador_4bits rd1(SW[6], SW[5], SW[4], SW[3:0], LEDR);
	
endmodule
