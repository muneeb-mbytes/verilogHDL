`timescale 1ns / 1ps
module swap_block(
    output reg [3:0] a,
    output reg [3:0] b,
    input clk
    );
	 initial
	 begin
   //assign initial values for a and b
	 a = 4;
	 b = 3;
	 end
	 integer temp;
	 always@(posedge clk)
	 begin
   //swap numbers at every posedge of the clock
	 temp = a;
	 a = b;
	 b = temp;	
	 end
endmodule 
