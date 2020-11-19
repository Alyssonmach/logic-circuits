module mod_test4(SW, LEDR);

	input SW;
	output [3:0]LEDR;
	
	decadico cs1(SW, LEDR);
	
endmodule 