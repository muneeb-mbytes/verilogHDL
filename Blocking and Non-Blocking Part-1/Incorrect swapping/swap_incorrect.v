`timescale 1ns / 1ps
module swap_incorrect(
    output reg [3:0] a,
    output reg [3:0] b,
    input clk
    );
	 initial
	 begin
	 //assign initial values to a and b
	 a = 4;
	 b = 3;
	 end
	 always@(posedge clk)
	 begin 
	 //swap a and b at every posedge of the clock
	 a = b;
	 b = a;	
	 end

endmodule
