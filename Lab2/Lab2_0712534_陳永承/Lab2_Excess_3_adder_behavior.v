module Lab2_Excess_3_adder_behavior(Sum,Cout,A,B,Cin);

	input [3:0]A,B;
	input Cin;
	output reg [3:0]Sum;
	output reg Cout;
	reg [4:1]C,C2;

	always@(Cin,A,B)
	begin
		Sum[0]=A[0]^B[0]^Cin;
		C[1]=((A[0]&&B[0])||(A[0]&&Cin))||(B[0]&&Cin);
		Sum[1]=A[1]^B[1]^C[1];
		C[2]=(A[1]&&B[1])||(A[1]&&C[1])||(B[1]&&C[1]);
		Sum[2]=A[2]^B[2]^C[2];
		C[3]=(A[2]&&B[2])||(A[2]&&C[2])||(B[2]&&C[2]);
		Sum[3]=A[3]^B[3]^C[3];
		C[4]=(A[3]&&B[3])||(A[3]&&C[3])||(B[3]&&C[3]);
		Cout=C[4];

		if(Cout==1) begin
			C2[1]=Sum[0];
			Sum[0]=~Sum[0];
			C2[2]=C2[1]||Sum[1];
			Sum[1]=(~Sum[1])^C2[1];
			C2[3]=Sum[2]&&C2[2];
			Sum[2]=Sum[2]^C2[2];
			Sum[3]=Sum[3]^C2[3];
		end
		if(Cout==0) begin
			C2[1]=Sum[0];
			Sum[0]=~Sum[0];
			C2[2]=C2[1]&&Sum[1];
			Sum[1]=C2[1]^Sum[1];
			C2[3]=C2[2]||Sum[2];
			Sum[2]=(~Sum[2])^C2[2];
			Sum[3]=(~Sum[3])^C2[3];
		end
	end

endmodule
