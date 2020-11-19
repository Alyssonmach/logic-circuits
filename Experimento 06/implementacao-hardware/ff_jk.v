module ff_jk(clear, clk, j, k, q);

	input clear, clk, j, k; 
	output reg q;

  
   always @ (posedge clk, negedge clear)
		begin
			if(!clear) q <= 1'b0;
			else 
				begin 
					case({j, k})
						0: q = q;
						1: q = 0;
						2: q = 1;
						3: q = ~q;
					endcase
				end
		end
			
endmodule  

