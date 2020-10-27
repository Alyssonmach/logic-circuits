module somador_4bits
(
	input [3:0]a, b, 
	input ci,
	output [3:0]s, co
);
	
	somador_completo sc1(a[0],b[0], ci , s[0], co[0]);
	somador_completo sc2(a[1],b[1], co[0], s[1], co[1]);
	somador_completo sc3(a[2],b[2], co[1], s[2], co[2]);
	somador_completo sc4(a[3],b[3], co[2], s[3], co[3]);
	
endmodule 