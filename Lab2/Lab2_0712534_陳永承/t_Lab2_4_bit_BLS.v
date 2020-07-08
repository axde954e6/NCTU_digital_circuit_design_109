
module t_Lab2_4_bit_BLS;

	reg [3:0]X,Y;
	reg Bin;
	wire Bout;
	wire [3:0]Diff;
 
	Lab2_4_bit_BLS BLS(Diff ,Bout, X,Y, Bin);
	
	initial
		begin
			X=4'b1101;	Y=4'b0101;	Bin=0;
			#10
			X=4'b1100;	Y=4'b1000;	Bin=1;
			#10
			X=4'b0101;	Y=4'b1101;	Bin=0;
			#10
			X=4'b1000;	Y=4'b1100;	Bin=1;
			#10
			X=4'b0101;	Y=4'b0101;	Bin=0;
			#10
			X=4'b1011;	Y=4'b1011;	Bin=1;
			#10
			X=4'b0000;	Y=4'b1111;	Bin=0;
			#10
			X=4'b0000;	Y=4'b1111;	Bin=1;
		end
	initial
	#80$finish;
endmodule