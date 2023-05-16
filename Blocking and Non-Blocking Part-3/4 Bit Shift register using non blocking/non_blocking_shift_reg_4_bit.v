`timescale 1ns / 1ps
module shiftreg_4bit (clock, clear, A, E); 
input clock, clear;
input [3:0] A;
output reg E; 
reg B, C, D; 
integer i;
initial
 begin
 i = 0;
 end

always @(posedge clock or negedge clear) 
 begin 
  if (!clear) begin B<=0; C<=0; D<=0; E<=0; end 
   else begin 
     E <= D; 
     i <= i + 1; 
     C <= B; 
     B <= A[i]; 
    D <= C;

  end 
 end 
endmodule
