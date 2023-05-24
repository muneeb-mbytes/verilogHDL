`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:14:18 05/24/2023
// Design Name:   count
// Module Name:   /home/ise/verilogdoc/COUNTER/TB.v
// Project Name:  COUNTER
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: count
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB;

	// Inputs
	reg clk_1Hz;
	reg rst;

	// Outputs
	wire [6:0] count;

	// Instantiate the Unit Under Test (UUT)
	count uut (
		.clk_1Hz(clk_1Hz), 
		.rst(rst), 
		.count(count)
	);

	initial begin
		// Initialize Inputs
		clk_1Hz = 0;
	
	end
	always #5 clk_1Hz=~clk_1Hz;
	  initial 
	  begin
	#7 rst =1;
	  #10 rst=0;
	//  #20 rst=0;

		// Wait 100 ns for global reset to finish
	#2000;
	$finish;
        
		// Add stimulus here

	end
      
endmodule

