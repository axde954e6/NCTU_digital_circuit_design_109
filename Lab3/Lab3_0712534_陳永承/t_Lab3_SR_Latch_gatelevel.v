module t_Lab3_SR_Latch_gatelevel;

	wire 	Q,NQ;
	reg 	S,R;

	Lab3_SR_Latch_gatelevel sr_latch (Q,NQ,S,R);

	initial #70 $finish;

	initial fork
			S=1'b1; 
			R=1'b0;
			#10 S=1'b0; #10 R=1'b0;
			#20 S=1'b0; #20 R=1'b1;
			#30 S=1'b0; #30 R=1'b0;
			#40 S=1'b0; #40 R=1'b0;
			#50 S=1'b1; #50 R=1'b1;
			#60 S=1'b0; #60 R=1'b0;
 	join

endmodule
