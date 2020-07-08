module  t_Lab3_Neg_Edge_D_FF_gatelevel;
	
	wire 	Q,NQ;
	reg 	D,clock;

	Lab3_Neg_Edge_D_FF_gatelevel DFF(Q, NQ, D, clock);
	
	initial #160 $finish;
	
	initial begin 
		clock=1;
		forever #10 clock=~clock; 
	end

	initial fork
			D=1'b0;
			#15 D=1'b1;
			#35 D=1'b0;
			#65 D=1'b1;
			#88 D=1'b0;
			#125 D=1'b1;
			#130 D=1'b0;
 	join

endmodule
