
module Lab1_gatelevel_UDP(F,A,B,C,D);
	
	output F;
	input A,B,C,D;
	wire InvertB,InvertA,InvertD,w1,w2,w3;
	

	not	N1(InvertA,A);
	not	N2(InvertB,B);
	not	N3(InvertD,D);
	Lab1_UDP M1(w1,A,InvertB,C,InvertD);
	and 	G1(w2,C,D);
	or	G2(w3,w2,InvertA);
	and	G3(F,w1,w3);

endmodule