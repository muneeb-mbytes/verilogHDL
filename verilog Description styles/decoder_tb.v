`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:02:25 05/18/2023
// Design Name:   generate_decoder
// Module Name:   /home/ise/vs/decoder/decoder_tb.v
// Project Name:  decoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: generate_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder_tb;

	// Inputs
	reg [1:0] in;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	generate_decoder uut (
		.out(out), 
		.in(in)
	);

	initial begin
		// Initialize Inputs
		$monitor($time,"input=%b, Output=%b",in,out);
		in = 00;
		#20 in = 01;
		#20 in = 10;
		#20 in = 11;
		#20 in = 00;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

