module cont_10_ssyc
(	
	input clk,
	output [3:0]S
);

	wire p;
	wire C;
	wire B;
	wire [3:0]A;

	assign p = A[3]&(~A[2])&A[1]&(~A[0]);

	ff_jk q0(clk, ~p, 1, 1, A[0]);
	ff_jk q1(clk, ~p, A[0], A[0], A[1]);

	assign B = A[0] & A[1];

	ff_jk q2(clk, ~p, B, B, A[2]);

	assign C = B & A[2];

	ff_jk q3(clk, ~p, C, C, A[3]);

	assign S[0] = A[0];
	assign S[1] = A[1];
	assign S[2] = A[2];
	assign S[3] = A[3];

endmodule 

module contador10sinc(input clk,output [3:0]S);

wire p;
wire C;
wire B;
wire [3:0]A;

assign p=A[3]&(~A[2])&A[1]&(~A[0]);

FF_JK_Q1(1,1,clk,~p,A[0]);
FF_JK_Q1(A[0],A[0],clk,~p,A[1]);

assign B=A[0] & A[1];

FF_JK_Q1(B,B,clk,~p,A[2]);

assign C=B & A[2];

FF_JK_Q1(C,C,clk,~p,A[3]);

assign S[0]=A[0];
assign S[1]=A[1];
assign S[2]=A[2];
assign S[3]=A[3];

endmodule