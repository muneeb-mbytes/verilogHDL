`timescale 1ns / 1ps
module shiftreg_4bit_incorrect_tb;

	// Inputs
	reg clock;
	reg clear;
	reg [3:0] A;

	// Outputs
	wire E;

	// Instantiate the Unit Under Test (UUT)
	shiftreg_4bit_incorrect uut (
		.clock(clock), 
		.clear(clear), 
		.A(A), 
		.E(E)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		clear = 0;
		A = 0;
      
		
		 A <= #3 13;
		 clear <= #6 1;
		
		
		#80 clear <= 0;

		// Wait 100 ns for global reset to finish
		#100;
        

	end
      always #5 clock = ~clock;
endmodule

