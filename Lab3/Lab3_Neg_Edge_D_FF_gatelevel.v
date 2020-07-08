module Lab3_Neg_Edge_D_FF_gatelevel (output Q, NQ, input D, clock);

	wire 	R,S,w,z;
	nor #(2) G1(w,R,z);
	nor #(2) G2(R,w,clock);
	nor #(2) G3(S,R,z,clock);
	nor #(2) G4(z,D,S);

	Lab3_SR_Latch_gatelevel sr_latch (Q,NQ,S,R);


endmodule