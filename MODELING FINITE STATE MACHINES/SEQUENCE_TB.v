module Seq_detector_test;

	// Inputs
	reg clk;
	reg rst;
	reg [9:0] x;
	

	// Outputs
	wire z;
	

	// Instantiate the Unit Under Test (UUT)
	fsm_seq_detector uut (
		.clk(clk), 
		.rst(rst), 
		//.data(data), 
		.x(x), 
		.z(z)
	);
   always begin
    #5 clk = ~clk; // Toggle clock every 5 time units
  end
  
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		//data = 0;
		x = 0;

		#10 rst=0;
		// Wait 100 ns for global reset to finish
	 @(posedge clk) #10 x = 1'b1;
	 @(posedge clk)	#10 x=1'b0;
	 @(posedge clk)	#10 x=1'b1;
	 @(posedge clk)	#10 x=1'b1;
	 @(posedge clk)	#10 x=1'b1;
	 @(posedge clk)	#10 x=1'b0;
	 @(posedge clk)	#10 x=1'b0;
	 @(posedge clk)	#10 x=1'b1;
	 @(posedge clk)	#10 x=1'b1;
	 @(posedge clk)	#10 x=1'b1;
		// Add stimulus here
 #500 $finish;
	end
    
always @(posedge clk) begin
    $display("Output z = %b", z);
  end	 
endmodule
