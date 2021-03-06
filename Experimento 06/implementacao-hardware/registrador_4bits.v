module registrador_4bits 
(
	input CLK, CLR, Enable,
	input [3:0] D, 
	output [3:0] X
);

	wire [3:0] A;
	
	mux2_1 m3(Enable, 1'b0, D[3], A[3]);
	ff_jk r3(CLR, CLK, A[3], ~A[3], X[3]);
	mux2_1 m2(Enable, X[3], D[2], A[2]);
	ff_jk r2(CLR, CLK, A[2], ~A[2], X[2]);
	mux2_1 m1(Enable, X[2], D[1], A[1]);
	ff_jk r1(CLR, CLK, A[1], ~A[1], X[1]);
	mux2_1 m0(Enable, X[1], D[0], A[0]);
	ff_jk r0(CLR, CLK, A[0], ~A[0], X[0]);
	
endmodule 