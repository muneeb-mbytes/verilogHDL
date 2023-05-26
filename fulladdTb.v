module testbench;
reg a, b, c; 
wire sum, carry;
//Instantiate full_adder module
full_adder FA (sum, carry, a, b, c);
initial
	begin
	$monitor ($time,” a=%b, b=%b, c=%b, sum=%b, cout=%b”,
		   a, b, c, sum, carry);
	#5 a=0; b=0; c=1;
	#5 b=1;
	#5 a=1;
	#5 a=0; b=0; c=0;
	#5 $finish;
	end
endmodule
