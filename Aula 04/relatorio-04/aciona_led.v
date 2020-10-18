module aciona_led
(
	input [3:0]KEY,
	output [3:0]LEDG
);

	assign LEDG[0] = KEY[0];
	assign LEDG[1] = KEY[1];
	assign LEDG[2] = KEY[2];
	assign LEDG[3] = KEY[3];
	
endmodule 