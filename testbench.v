module mux_16_to_1tb;

// Inputs
reg [15:0] in;
reg [3:0] select_lines;

// Outputs
wire out;

// Instantiate the Unit Under Test (UUT)
Mux_16_to_1 uut (
	.in(in), 
	.select_lines(select_lines), 
	.out(out)
	);

initial 
	begin
		#5 in=16'h3f0a;select_lines=4'h0;
		#5 select_lines=4'h1;
		#5 select_lines=4'h6;
		#5 select_lines=4'hc;
		#10 $finish;
	end 
endmodule
