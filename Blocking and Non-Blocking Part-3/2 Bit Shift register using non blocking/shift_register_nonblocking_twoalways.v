`timescale 1ns / 1ps

module shift_register_nonblocking_twoalways(
    input clk,
	 input [1:0] a,
	 output reg q1,
	 output reg q2
    );
	 integer i;
	 //assign initial values
	 initial 
	  begin
	   q1 = 0;
	   q2 = 0;
	   i = 0;
	  end 
	 
	always @(posedge clk)
		 begin
		  q2 <= q1;
		 end
   always @(posedge clk)
	    begin
		  q1 <= a[i];
		  i = i + 1;
		 end
endmodule
