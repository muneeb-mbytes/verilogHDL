`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:51:18 04/26/2023
// Design Name:   mux
// Module Name:   /home/ise/vs/mux/mux_tb.v
// Project Name:  mux
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_tb;

	// Inputs
	reg [15:0] in;
	reg [3:0] sel;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux uut (
		.out(out), 
		.in(in), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		$monitor($time,"input=%b,Select Line=%d, Output=%b",in,sel,out);
		in = 101101101;
		sel = 0000;
		#10 sel=0001;
		#10 sel=0010;
		#10 sel=00011;
		#10 sel=0100;
		#10 sel=0101;
		#10 sel=0110;
		#10 sel=0111;
		#10 sel=1000;
		#10 sel=1001;
		#10 sel=1010;
		#10 sel=1011;
		#10 sel=1100;
		#10 sel=1101;
		#10 sel=1110;
		#10 sel=1111;
	
        
		// Add stimulus here

	end
      
endmodule

