module generate1_tb;
	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	// Outputs
	wire [15:0] f;
	// Instantiate the Unit Under Test (UUT)
	generate1 uut (
		.a(a), 
		.b(b), 
		.f(f)
	);
	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		// Wait 100 ns for global reset to finish
		 a=16'haaa;b=16'h0fff;
		#20 a=16'h0f0f;b=16'h3333;
	end
endmodule
