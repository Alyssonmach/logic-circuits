module seletor_ic_4bits
(
	input [3:0]A,
	input m,
	output [3:0]S
);

	igualdade_complemento_1 ic1(A[0], m, S[0]);
	igualdade_complemento_1 ic2(A[1], m, S[1]);
	igualdade_complemento_1 ic3(A[2], m, S[2]);
	igualdade_complemento_1 ic4(A[3], m, S[3]);
	
endmodule 