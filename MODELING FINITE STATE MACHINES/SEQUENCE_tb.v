module test;

	// Inputs
	reg clk;
	reg rst;
	reg [4:0] data;
	reg x;

	// Outputs
	wire z;
	

	// Instantiate the Unit Under Test (UUT)
	fsm_seq_detector uut (
		.clk(clk), 
		.rst(rst), 
		.data(data), 
		.x(x), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		data = 0;
		x = 0;

		// Wait 100 ns for global reset to finish
		#10;
		rst=0;
       // Test case 2
    #10 data = 5'b11100;
      x = 0;
    
    #10 x = 1;
    
    #10 x = 0;
    
    #10 x = 1;
    
    #10 x = 1;
    
    #10 x = 1;
	 
	 #10  x=1;
	 
	 #10 x=1;
	 
	 #10 x=1;
		// Add stimulus here

	end
     always #5 clk=~clk; 
endmodule

