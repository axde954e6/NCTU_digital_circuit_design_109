module Lab3_BCD_to_Excess3_structure(output z, input x, clock, reset);
	reg[2:0] state;
	wire  Q0,Q1,Q2;
	wire NQ,D0,D1,D2;
	parameter S0=3'b000 , S1=3'b001,S2=3'b011,S3=3'b110,S4=3'b100,S5=3'b111,S6=3'b101,
			dont_care_state = 3'bx,
 			dont_care_out = 1'bx;
	
	always @(posedge clock , negedge reset)begin
		if(reset==0) state<=S0;
		else
		case(state)
	

			S0: if (x == 0) begin state = S1; end
			else if (x == 1) begin state = S2; end
 			S1: if (x == 0) begin state = S3; end
			else if (x == 1) begin state = S4; end
 			S2: begin state = S4; end
 			S3: begin state = S5; end
 			S4: if (x == 0) begin state = S5; end
			else if (x == 1) begin state = S6; end
 			S5: begin state = S0; end
 			S6: begin state = S0; end
			default: begin state = dont_care_state;end
					 

		endcase

	end
	assign D0=!Q0;
	assign D1=((!x)&&(!Q2)&&(!Q1)&&Q0)||(x&&(!Q2)&&(!Q0))||((!x)&&Q2&&(!Q0))||(Q1&&(!Q0));
	assign D2=((!Q2)&&Q0)||(Q2&(!Q0));

	
	D_ff_AR DFF0( Q0, D0 , clock , reset);
	D_ff_AR DFF1( Q1, D1 , clock , reset);
	D_ff_AR DFF2( Q2, D2 , clock , reset);
	assign z=(x&&Q1)||((!x)&&(!Q1));
	
endmodule
