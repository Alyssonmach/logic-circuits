module teste
(
	input [3:0]a, b,
	input ci,
	output [3:0]s, ts 
);

	wire [3:0]a_aux;
	seletor_ic_4bits sic1(a, ci, a_aux);
	somador_4bits soma1(a_aux, b, ci, s, ts);

endmodule 
