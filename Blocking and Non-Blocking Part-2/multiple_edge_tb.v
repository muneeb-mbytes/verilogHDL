`timescale 1ns / 1ps

module multiple_edge_tb;

	// Inputs
	reg [1:0] a;
	reg [2:0] d;
	reg clk;

	// Outputs
	wire [3:0] f;
	wire [3:0] t;

	// Instantiate the Unit Under Test (UUT)
	multiple_edge uut (
		.a(a), 
		.d(d), 
		.f(f), 
		.t(t), 
		.clk(clk)
	);
   
	initial begin
	   
		// Initialize Inputs
		a = 0;
		d = 0;
		clk = 0;
		
      #3;
		a = 3;
		d = 4;
		
		#15;
		a = 2;
		d = 5;
		// Wait 100 ns for global reset to finish
		#100;

	end
   always #5 clk = ~clk;   
endmodule

