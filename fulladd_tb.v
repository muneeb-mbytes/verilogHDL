module fulladd_tb;
reg a; 
reg b; 
reg c; 
wire sum; 
wire carry;
//instantiate full adder module
fulladder FA (sum, carry, a, b, c);
initial
	begin
	a=0; b=0; c=1; #5;
	$display ("T=%2d,a=%b,b=%b,c=%b,sum=%b,cout=%b",$time,a,b,c,sum,carry);  
	b=1; #5;
	$display ("T=%2d,a=%b,b=%b,c=%b,sum=%b,cout=%b",$time,a,b,c,sum,carry);
	a=1; #5;
	$display ("T=%2d,a=%b,b=%b,c=%b,sum=%b,cout=%b",$time,a,b,c,sum,carry);
	a=0; b=0; c=0; #5;
	$display ("T=%2d,a=%b,b=%b,c=%b,sum=%b,cout=%b",$time,a,b,c,sum,carry);
	#100 $finish;
	end
endmodule
