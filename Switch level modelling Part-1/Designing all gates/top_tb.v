`timescale 1ns / 1ps

module top_tb;

	// Inputs
	reg x;
	reg y;

	// Outputs
	wire not_x;
	wire nand_out;
	wire nor_out;
	wire and_out;
	wire or_out;
	wire xor_out;
	wire xnor_out;
   integer k;
	// Instantiate the Unit Under Test (UUT)
	top uut (
		.x(x), 
		.y(y), 
		.not_x(not_x), 
		.nand_out(nand_out), 
		.nor_out(nor_out), 
		.and_out(and_out), 
		.or_out(or_out),
		.xor_out(xor_out),
		.xnor_out(xnor_out)
	);

	initial begin
		// Initialize Inputs
		for(k=0; k<5; k=k+1)
		begin
		#5 {x, y} = k;
      #5 $display("x: %b, y: %b, not_x: %b, nand_out: %b, nor_out: %b, and_out: %b, or_out: %b, xor_out: %b, xnor_out: %b",x, y, 
                  not_x, nand_out, nor_out, and_out, or_out, xor_out, xnor_out);
		// Wait 100 ns for global reset to finish
		#100;
      end

	end
      
endmodule

