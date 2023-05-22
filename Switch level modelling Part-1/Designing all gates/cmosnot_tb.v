`timescale 1ns / 1ps

module cmosnot_tb;

	// Inputs
	reg x;

	// Outputs
	wire f;
   integer k;
	// Instantiate the Unit Under Test (UUT)
	cmosnot uut (
		.x(x), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		for(k=0; k<2; k=k+1)
		begin
		#5 x = k;
      $display("x: %b, f: %b",x,f);
		// Wait 100 ns for global reset to finish
		#100;
      end
	end
      
endmodule

