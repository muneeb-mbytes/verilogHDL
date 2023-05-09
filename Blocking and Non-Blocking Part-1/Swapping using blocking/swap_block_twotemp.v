`timescale 1ns / 1ps
module swap_block_twotemp(
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
	 //Two temporary variables
	 integer tempa;
	 integer tempb;
	 always@(posedge clk)
	 begin 
	 tempa = a;
	 tempb = b;
	 a = tempb;
	 b = tempa;  
    end

endmodule
