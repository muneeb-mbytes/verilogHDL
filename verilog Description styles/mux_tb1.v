`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:05:25 05/18/2023
// Design Name:   generate_set_of_MUX
// Module Name:   /home/ise/vs/generate_set_of_MUX/mux_tb1.v
// Project Name:  generate_set_of_MUX
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: generate_set_of_MUX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_tb1;

	// Inputs
	reg [0:3] a;
	reg [0:3] b;
	reg sel;

	// Outputs
	wire [0:3] f;

	// Instantiate the Unit Under Test (UUT)
	generate_set_of_MUX uut (
		.a(a), 
		.b(b), 
		.f(f), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		$monitor($time,"A=%b,B=%b,Sel=%b,F=%b",a,b,sel,f);
		a = 1011;
		b = 1111;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#10 sel=1;
		#10 a = 0000;
		b = 1000;
		sel=0;
		#10 sel=1;
       
		// Add stimulus here

	end
      
endmodule

