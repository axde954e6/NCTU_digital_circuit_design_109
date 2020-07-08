module Lab2_CLG_behavior (C ,P, G,  C0);

	input [3:0] P,G;
	input C0;
	output reg [4:1]C;

always @(P,G,C0,C)
begin
	C[1]=G[0]||(P[0]&&C0);
	C[2]=G[1]||(P[1]&&C[1]);
	C[3]=G[2]||(P[2]&&C[2]);
	C[4]=G[3]||(P[3]&&C[3]);
end



endmodule