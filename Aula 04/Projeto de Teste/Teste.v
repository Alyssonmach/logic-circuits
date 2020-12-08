module Teste( A, B, S, X);

input wire A, B;    // As entradas sao A e B
input wire S;    // O sinal de selecao é S
output wire X;  	// O sinal de saida é X
wire 				S0_inv, a1, b1;

not u1( S0_inv, S );
and u3( a1, S0_inv, A  );
and u4( b1,  S, B  );
or u5( X, a1, b1  );

endmodule