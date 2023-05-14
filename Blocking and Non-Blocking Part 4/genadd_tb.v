module genadd_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	genadd uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
	);

	initial begin
	$monitor ("a: %d, b: %d, sum: %d, cout: %d",a,b,sum,cout);
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#20;
        
		  a = 14;
		  b = 12;
		  cin = 0;
		  
		 #20;
		 
		  a = 10;
		  b = 13;
		  cin = 0;
      #100 $finish;
	end
      
endmodule
