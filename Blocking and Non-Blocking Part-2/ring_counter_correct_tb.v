`timescale 1ns / 1ps

module ring_counter_correct_tb;

	// Inputs
	reg clk;
	reg init;

	// Outputs
	wire [7:0] count;

	// Instantiate the Unit Under Test (UUT)
	ring_counter_correct uut (
		.clk(clk), 
		.init(init), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		init = 0;

		#20;
		init = 1;
		
		#10;
		init = 0;
		// Wait 100 ns for global reset to finish
		#100 $finish;
       
	end
     always #5 clk = ~clk; 
endmodule

