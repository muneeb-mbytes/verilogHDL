`timescale 1ns / 1ps

module pseudonor_tb;

	// Inputs
	reg x;
	reg y;

	// Outputs
	wire f;
   integer k;
	// Instantiate the Unit Under Test (UUT)
	pseudonor uut (
		.x(x), 
		.y(y), 
		.f(f)
	);

	initial begin
		// Initialize Inputs
		for (k=0; k<4; k=k+1)
			begin
				#5 {x, y} = k;
				#5 $display ("Input1: %b, Input2: %b, Output: %b", x, y, f);
				#100;
			end
	end
      
endmodule

