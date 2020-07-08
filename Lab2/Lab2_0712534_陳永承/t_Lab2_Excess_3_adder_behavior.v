module t_Lab2_Excess_3_adder_behavior;


	reg [3:0]A,B;
	reg Cin;
	wire Cout;
	wire [3:0]Sum;
 
	Lab2_Excess_3_adder_behavior Excess(Sum ,Cout, A,B, Cin);
	
	initial
		begin
			A=4'b0011;	B=4'b0011;	Cin=0;
			#10
			A=4'b0011;	B=4'b0011;	Cin=1;
			#10
			A=4'b1000;	B=4'b0111;	Cin=0;
			#10
			A=4'b1000;	B=4'b0111;	Cin=1;
			#10
			A=4'b1100;	B=4'b1100;	Cin=0;
			#10
			A=4'b1100;	B=4'b1100;	Cin=1;
			
		end
	initial
	#60$finish;
endmodule