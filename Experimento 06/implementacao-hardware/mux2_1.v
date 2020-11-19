module mux2_1(sel, I0, I1, Y);

	input sel, I0, I1;
	output Y;


	assign Y = (sel) ? I1 : I0;
	
endmodule 