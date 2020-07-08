
module Lab3_BCD_to_Excess3_state_diagram(output reg z, input x, clock, reset);
	
	reg[2:0] state , next_state;
	parameter S0=3'b000 , S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100,S5=3'b101,S6=3'b110,
			dont_care_state = 3'bx,
 			dont_care_out = 1'bx;

	always @ (posedge clock ,negedge reset)
		if(reset==0)
			state<=S0;
		else
			state<=next_state;
	always @ (state , x ) begin
		z=0;
		case(state)
	

			S0: if (x == 0) begin next_state = S1; z = 1; end
			else if (x == 1) begin next_state = S2; end
 			S1: if (x == 0) begin next_state = S3; z = 1; end
			else if (x == 1) begin next_state = S4; end
 			S2: begin next_state = S4; z = x; end
 			S3: begin next_state = S5; z = x; end
 			S4: if (x == 0) begin next_state = S5; z = 1; end
			else if (x == 1) begin next_state = S6;z=0; end
 			S5: begin next_state = S0; z = x; end
 			S6: begin next_state = S0; z = !x; end
			default: begin next_state = dont_care_state;
					z = dont_care_out; end  

		endcase

	end
endmodule
