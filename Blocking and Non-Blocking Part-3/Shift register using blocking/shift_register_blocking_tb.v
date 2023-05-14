`timescale 1ns / 1ps

module shift_register_blocking_tb;

	// Inputs
	reg clk;
	reg [1:0] a;

	// Outputs
	wire q1;
	wire q2;

	// Instantiate the Unit Under Test (UUT)
	shift_register_blocking uut (
		.clk(clk), 
		.a(a), 
		.q1(q1), 
		.q2(q2)
	);

	initial begin
	   $monitor($time, "a=%b, q1=%2b, q2=%b", a, q1, q2);
		// Initialize Inputs
		clk = 0;
		a = 0;
		
		#3;
		a = 3;

		// Wait 100 ns for global reset to finish
		#100;

	end
	always #5 clk = ~clk; 
      
endmodule

