`timescale 1ns / 1ps

module mux_4to1_tb;

	// Inputs
	reg s0;
    reg s1;
	reg i0;
	reg i1;
    reg i2;
    reg i3;

	// Outputs
	wire out;
   integer k;
	// Instantiate the Unit Under Test (UUT)
	mux_4to1 uut (
		.out(out), 
      	.s0(s0), 
      	.s1(s1),
		.i0(i0), 
      	.i1(i1),
      	.i2(i2),
      	.i3(i3)
	);

	initial begin
        $dumpfile("dump.vcd"); 
      $dumpvars(1, s0,s1,i0,i1,i2,i3,out);
		// Initialize Inputs
      for (k=0; k<64; k=k+1)
       begin
         #5 {s1,s0,i3,i2,i1,i0} = k;
         #5 $display ("Selectline0: %b, Selectline1: %b, In0: %b, In1: %b, In2: %b, In3: %b, Out: %b", s0, s1, i0, i1, i2, i3, out);
         
			#100;
		 end
	end
      
endmodule

