module fulladdertb;

	// Inputs
	reg a;
	reg b;
	reg cin;
	
	// Outputs
	wire s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	fulladder uut (
		.s(s), 
		.cout(cout), 
		.a(a), 
		.b(b), 
		.cin(cin)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		cin = 0;
	
		#100;
		
		$display("a=%b, b=%b, cin=%b, s=%b, cout=%b", a, b, cin, s, cout);

		a = 1;
		b = 0;
		cin = 0;
		#100;
		
		$display("a=%b, b=%b, cin=%b, s=%b, cout=%b", a, b, cin, s, cout);
		
		a=0;
		b=1;
		cin=1;
		#100;
		
		$display("a=%b, b=%b, cin=%b, s=%b, cout=%b", a, b, cin, s, cout);
		

		a = 1;
		b = 1;
		cin = 1;
		#100;
		
		$display("a=%b, b=%b, cin=%b, s=%b, cout=%b", a, b, cin, s, cout);

		$finish;

	end
      
endmodule

