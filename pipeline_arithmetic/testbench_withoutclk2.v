`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:39:44 05/15/2023
// Design Name:   alu_op
// Module Name:   /home/ise/verilogdoc/arithmetic/tb.v
// Project Name:  arithmetic
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_op
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg [9:0] a;
	reg [9:0] b;
	reg [9:0] c;
	reg [9:0] d;
	reg clk1;
	reg clk2;
	// Outputs
	wire [9:0] F;

	// Instantiate the Unit Under Test (UUT)
	alu_op uut (
		.F(F), 
		
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.clk1(clk1),
		.clk2(clk2)
	);

	initial 
		clk1 = 0;
		always #5 clk1 = ~clk1;
	initial 
		begin
			#5 a = 10; b = 12; c = 6; d = 3; // 75 
			#20 a = 10; b = 10; c = 5; d = 3; // 66 
			#20 a = 20; b = 11; c = 1; d = 4; // 112 
			#20 a = 10; b = 20; c = 5; d = 3; // 66
			#20 a = 10; b = 10; c = 2; d = 4; // 49
			#20 a = 15; b = 10; c = 8; d = 2; // 62
			#20 a = 8; b = 15; c = 5; d = 0; // 0
			#20 a = 30; b = 1; c = 2; d = 4; // 116
			
		end
	initial 
		begin
			$monitor (" Time = %d , F= %d ",$time,F);
			#180 $finish;
		end
	   
endmodule

