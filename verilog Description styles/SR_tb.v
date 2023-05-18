`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:50:57 05/18/2023
// Design Name:   SR_latch
// Module Name:   /home/ise/vs/SR_latch/SR_tb.v
// Project Name:  SR_latch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SR_latch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SR_tb;

	// Inputs
	reg S;
	reg R;
	reg En;

	// Outputs
	wire Q;
	wire Qb;

	// Instantiate the Unit Under Test (UUT)
	SR_latch uut (
		.S(S), 
		.R(R), 
		.En(En),
		.Q(Q), 
		.Qb(Qb)
	);

	initial begin
		// Initialize Inputs
		S = 0;
		R = 0;
		En = 0;
	 $monitor ($time, "   S=%b R=%b,En=%b, Q=%b, Qbar=%b", S, R,En ,Q, Qb);
       #10 En=1;
		 #10 S=0; R=1;
		 #10 S=1; R=0;
		 #10 S=1; R=1;
		 #10 En=0;
		 #10 S=0; R=1;
		 #10 En =1;
		 

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

