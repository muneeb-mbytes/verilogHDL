`timescale 1ns / 1ps
module swap_block_onetemp_tb;

	// Inputs
	reg clk;

	// Outputs
	wire [3:0] a;
	wire [3:0] b;

	// Instantiate the Unit Under Test (UUT)
	swap_block_onetemp uut (
		.a(a), 
		.b(b), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #5 clk=~clk;
      
endmodule

