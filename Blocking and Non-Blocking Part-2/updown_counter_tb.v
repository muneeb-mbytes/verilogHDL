`timescale 1ns / 1ps

module updown_counter_tb;

	// Inputs
	reg clear;
	reg mode;
	reg clock;

	// Outputs
	wire [0:15] count;

	// Instantiate the Unit Under Test (UUT)
	updown_counter uut (
		.clear(clear), 
		.mode(mode), 
		.clock(clock), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		clear = 1;
		mode = 0;
		clock = 0;
		
		#3;
      clear = 0;
		mode = 1;
		
		#50;
		clear = 0;
		mode = 0;
		
		// Wait 100 ns for global reset to finish
		#100;

	end
     always #5 clock = ~clock; 
endmodule

