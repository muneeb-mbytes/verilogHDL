`timescale 1ns / 1ps

module mux8bit_tb;

	// Inputs
	reg [7:0] in;
	reg [2:0] sel;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux8bit uut (
		.in(in), 
		.sel(sel), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		sel = 0;
		
		#20;
		in = 10101010;
		sel = 100;
		
		#5;
		sel = 110;
		
		#5;
		sel = 001;
        

		// Wait 100 ns for global reset to finish
		#100;
		
	end
      
endmodule

