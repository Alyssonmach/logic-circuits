module somador_subtrator
(
	input [3:0]A, B,
	input ci,
	output [3:0]S, Ts,
	output Ov
);
	
	wire [3:0]B_aux;
	seletor_ic_4bits seletor(B, ci, B_aux);
	somador_4bits somador(A, B_aux, ci, S, Ts);
	estouro overflow(S[3], A[3], B_aux[3], Ov);
	
endmodule 
	