`timescale 1ns / 1ps

module cmosnor_tb;

	// Inputs
	reg x;
	reg y;

	// Outputs
	wire f;
   integer k;
	// Instantiate the Unit Under Test (UUT)
	cmosnor uut (
		.x(x), 
		.y(y), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		for(k=0; k<5; k=k+1)
		begin
		#5 {x, y} = k;
      $display("x: %b, y: %b, f: %b",x,y,f);
		// Wait 100 ns for global reset to finish
		#100;
      end

	end
      
endmodule

