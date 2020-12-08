module Testebranch;

	reg A_tb, B_tb, S_tb;
	wire  X_tb;
	integer  i;

Teste dut( A_tb, B_tb, S_tb, X_tb);

initial
begin
	A_tb = 1'b0;	B_tb = 1'b0;	S_tb = 1'b0; #1
	$display("A = %x, B = %x, S = %x, X = %x", A_tb, B_tb, S_tb, X_tb);
	A_tb = 1'b0;	B_tb = 1'b1;	S_tb = 1'b0; #1
	$display("A = %x, B = %x, S = %x, X = %x", A_tb, B_tb, S_tb, X_tb);
	A_tb = 1'b1;	B_tb = 1'b0;	S_tb = 1'b0; #1
	$display("A = %x, B = %x, S = %x, X = %x", A_tb, B_tb, S_tb, X_tb);
	A_tb = 1'b1;	B_tb = 1'b1;	S_tb = 1'b0;    #1
	$display("A = %x, B = %x, S = %x, X = %x", A_tb, B_tb, S_tb, X_tb);
	A_tb = 1'b0;	B_tb = 1'b0;	S_tb = 1'b1; #1
	$display("A = %x, B = %x, S = %x, X = %x", A_tb, B_tb, S_tb, X_tb);
	A_tb = 1'b0;	B_tb = 1'b1;	S_tb = 1'b1; #1
	$display("A = %x, B = %x, S = %x, X = %x", A_tb, B_tb, S_tb, X_tb);
	A_tb = 1'b1;	B_tb = 1'b0;	S_tb = 1'b1; #1
	$display("A = %x, B = %x, S = %x, X = %x", A_tb, B_tb, S_tb, X_tb);
	A_tb = 1'b1;	B_tb = 1'b1;	S_tb = 1'b1; #1
	$display("A = %x, B = %x, S = %x, X = %x", A_tb, B_tb, S_tb, X_tb);
end

endmodule 