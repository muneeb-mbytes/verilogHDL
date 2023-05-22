`timescale 1ns / 1ps

module mux_2to1_tb;

	// Inputs
	reg s0;
	reg i0;
	reg i1;
    

	// Outputs
	wire out;
  integer k;
	// Instantiate the Unit Under Test (UUT)
	mux_4to1 uut (
		 .out(out), 
     .s0(s0), 
		 .i0(i0), 
     .i1(i1)
	);

	initial begin
        $dumpfile("dump.vcd"); 
      $dumpvars(1, s0,i0,i1,out);
		// Initialize Inputs
      for (k=0; k<8; k=k+1)
       begin
         #5 {s0,i1,i0} = k;
         #5 $display ("Selectline0: %b, In0: %b, In1: %b, Out: %b", s0, i0, i1, out);
         
			#100;
		 end
	end
      
endmodule

