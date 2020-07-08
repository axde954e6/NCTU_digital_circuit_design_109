module t_Lab3_BCD_to_Excess3;

	wire	z1,z2;
	reg	x,clock,reset;

	Lab3_BCD_to_Excess3_state_diagram 	SD(z1, x, clock, reset);
	Lab3_BCD_to_Excess3_structure 	ST(z2, x, clock, reset);

	initial #160 $finish;
	initial begin
		reset = 0; clock = 0;
		forever #5 clock=~clock;
	end
	initial fork
		
		x=0;
		#2 reset=1; 
		#10 x=0; 
		#20 x=1;
		#30 x=1; 
		#40 x=1;
		#50 x=0;
		#60 x=1;
		#70 x=0;
		#80 x=1;
		#90 x=0;
		#100 x=1;
		#110 x=0;
		#120 x=1;
		#130 x=1;
		#140 x=0;
		#150 x=1;


	join
endmodule
