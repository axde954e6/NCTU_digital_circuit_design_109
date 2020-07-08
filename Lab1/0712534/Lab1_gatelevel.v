module Lab1_gatelevel(F,A,B,C,D);

	output F;
	input A,B,C,D;
	wire invertD,invertB,invertA,w1,w2,w3,w4,w5;

	not		G1(invertD,D);
	not		G2(invertA,A);
	not		G3(invertB,B);
	and		G4(w1,A,invertD);
	and		G5(w2,invertB,C);
	and		G6(w3,C,D);
	or		G7(w4,w1,w2);
	or		G8(w5,invertA,w3);
	and		G9(F,w4,w5);

endmodule
