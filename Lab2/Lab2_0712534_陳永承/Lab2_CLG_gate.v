module Lab2_CLG_gate (C ,P, G,  C0);

	input [3:0] P,G;
	input C0;
	output[4:1]C;
	wire w1,w2,w3,w4;

	and G1(w1,P[0],C0);
	or  G2(C[1],G[0],w1);

	and G3(w2,P[1],C[1]);
	or  G4(C[2],G[1],w2);

	and G5(w3,P[2],C[2]);
	or  G6(C[3],G[2],w3);

	and G7(w4,P[3],C[3]);
	or  G8(C[4],G[3],w4);


endmodule
