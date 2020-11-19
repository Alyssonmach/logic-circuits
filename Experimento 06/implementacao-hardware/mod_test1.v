module mod_test1(SW, LEDR);

	input [3:0]SW;
	output LEDR;
	
	ff_jk ff1(SW[3], SW[2], SW[1], SW[0], LEDR);
	
endmodule

