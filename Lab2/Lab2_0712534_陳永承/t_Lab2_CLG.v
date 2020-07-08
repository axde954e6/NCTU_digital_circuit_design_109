module t_Lab2_CLG;
	
	reg [3:0] P,G;
	reg C0;
	wire [4:1]C;
	
	//Lab2_CLG_gate CLG_gate(C,P,G,C0);
	//Lab2_CLG_dataflow CLG_dataflow(C ,P, G,C0);
	Lab2_CLG_behavior CLG_behavior(C ,P, G,C0);

	initial
		begin
			P=4'b1101;	G=4'b0101;	C0=1'b0;
			#10
			P=4'b1100;	G=4'b1000;	C0=1'b1;
			#10
			P=4'b0101;	G=4'b1101;	C0=1'b0;
			#10
			P=4'b1000;	G=4'b1100;	C0=1'b1;
			#10
			P=4'b0101;	G=4'b0101;	C0=1'b0;
			#10
			P=4'b1011;	G=4'b1011;	C0=1'b1;
		end
	initial
	#60$finish;
	
	
endmodule
