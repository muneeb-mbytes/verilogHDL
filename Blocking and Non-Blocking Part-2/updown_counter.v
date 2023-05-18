`timescale 1ns / 1ps

module updown_counter(clear, mode, clock, count); 
parameter N = 15; 
input clear, mode, clock; 
output reg [0:N] count; 
 
always @(negedge clock)
 begin 
  if (clear) 
   count <= 0; 
  else if(mode) 
   count <= count + 1;
  else
   count <= count - 1; 
 end

endmodule
