`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:45:08 05/24/2023
// Design Name:   pipeline
// Module Name:   /home/ise/verilogdoc/Pipeline modelling/TBB.v
// Project Name:  arithmetic
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TBB;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg [3:0] c;
	reg [3:0] d;
	reg clk1;

	// Outputs
	wire [11:0] F;

	// Instantiate the Unit Under Test (UUT)
	pipeline uut (
		.F(F), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.clk1(clk1)
	);

	initial 
		// Initialize Inputs
	//	begin
		clk1 = 0;// clk2=0;
		always #5 clk1 = ~clk1;
		
	initial 
			begin
				#5 a = 10; b = 12; c = 6; d = 3; // 75 
		#20 a = 15; b = 15; c = 15; d = 1; // 75 
		
		#20 a = 15; b = 15; c = 3; d = 5; // 75 
				#20 a = 10; b = 10; c = 5; d = 3; // 66 
			//	#20 a = 20; b = 11; c = 1; d = 4; // 112 
			//	#20 a = 10; b = 20; c = 5; d = 3; // 66
				#20 a = 10; b = 10; c = 2; d = 4; // 49
				#20 a = 15; b = 10; c = 8; d = 2; // 62
				#20 a = 8; b = 15; c = 5; d = 0; // 0
			//	#20 a = 30; b = 1; c = 2; d = 4; // 116
			
			end
		initial begin
		$monitor (" Time = %d , F= %d ",$time,F);
	#180 $finish;
		end
      
endmodule

