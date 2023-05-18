`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:21:31 05/18/2023
// Design Name:   D_latch
// Module Name:   /home/ise/vs/D_latch/d_tb.v
// Project Name:  D_latch
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: D_latch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module d_tb;

	// Inputs
	reg D;
	reg En;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	D_latch uut (
		.D(D), 
		.Q(Q), 
		.En(En)
	);

	initial begin
		// Initialize Inputs
		$monitor($time,"En=%b,D=%b, Q=%b",En,D,Q);
		D = 0;
		En = 0;
		#10 D =1;
		#10 En =1; D=0;
		#10 D = 0;
		#10 D =1;
		#10 En =0;
		#10 En =1;
		#10 D = 0;
		#10 D =1;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

