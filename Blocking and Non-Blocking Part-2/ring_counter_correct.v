`timescale 1ns / 1ps

module ring_counter_correct(clk, count);
 input clk, init; 
 output reg [7:0] count;
 initial count = 8'b10000000;
 always @ (posedge clk) 
  begin
    count <= count << 1; 
    count[0] <= count[7]; 
  end 
endmodule


