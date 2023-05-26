module adder_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;

	// Outputs
	wire [7:0] sum;
	wire cout;
	integer myseed;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.sum(sum), 
		.cout(cout), 
		.a(a), 
		.b(b)
	);
// initialisng 32-bit to myseed	
initial myseed = 15;
initial 
	begin
	  repeat (5)
		begin
		a = $random(myseed);
		b = $random(myseed); #10;
		$display ("T: %3d, a: %h, b: %h, sum: %h", 
			   $time, a, b, sum);
		end
	end    
endmodule

