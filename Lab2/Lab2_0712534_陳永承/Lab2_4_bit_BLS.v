
module Lab2_4_bit_BLS (Diff ,Bout, X,Y, Bin);

	input Bin;
	input [3:0]X,Y;
	output Bout;
	output [3:0]Diff;
	
	wire [4:1]B;
	wire [3:0]P,G;
	
	assign P[0]=X[0]^(~Y[0]);
	assign G[0]=X[0]&&(~Y[0]);
	assign P[1]=X[1]^(~Y[1]);
	assign G[1]=X[1]&&(~Y[1]);
	assign P[2]=X[2]^(~Y[2]);
	assign G[2]=X[2]&&(~Y[2]);
	assign P[3]=X[3]^(~Y[3]);
	assign G[3]=X[3]&&(~Y[3]);
	

	Lab2_CLG_dataflow CLG_dataflow(B ,P, G,~Bin);
	
	assign Bout=~B[4];
	assign Diff[0]=P[0]^(~Bin);
	assign Diff[1]=P[1]^B[1];
	assign Diff[2]=P[2]^B[2];
	assign Diff[3]=P[3]^B[3];
		

endmodule