module Lab2_4_bit_CLA (Sum ,Cout, A,B, Cin);

	input Cin;
	input [3:0]A,B;
	output Cout;
	output [3:0]Sum;
	
	wire [4:1]C;
	wire [3:0]P,G;
	
	assign P[0]=A[0]^B[0];
	assign G[0]=A[0]&&B[0];
	assign P[1]=A[1]^B[1];
	assign G[1]=A[1]&&B[1];
	assign P[2]=A[2]^B[2];
	assign G[2]=A[2]&&B[2];
	assign P[3]=A[3]^B[3];
	assign G[3]=A[3]&&B[3];
	

	Lab2_CLG_dataflow CLG_dataflow(C ,P, G,Cin);
	
	assign Cout=C[4];
	assign Sum[0]=P[0]^Cin;
	assign Sum[1]=P[1]^C[1];
	assign Sum[2]=P[2]^C[2];
	assign Sum[3]=P[3]^C[3];
		

endmodule