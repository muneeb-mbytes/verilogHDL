module mux4to1Tb;

	// Inputs
	reg [3:0] in;
	reg clk;
	reg [1:0] sel;

	// Outputs
	wire out;
	wire [7:0] seg;
	wire [3:0] digit;

	// Instantiate the Unit Under Test (UUT)
	mux4to1 uut (
		.in(in), 
		.clk(clk), 
		.sel(sel), 
		.out(out), 
		.seg(seg), 
		.digit(digit)
	);
initial
clk=0;
always #5 clk=~clk;
	initial 
	begin
	// Initialize Inputs
	#10 in = 4'b1010;sel = 2'b00;
	#10 sel = 2'b01;
	#10 sel = 2'b10;
	#10 sel = 2'b11;
        #10 $finish;
	end
      
endmodule
