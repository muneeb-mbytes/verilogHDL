`timescale 1ns / 1ps

module multiple_edge(a, d, f, t, clk); 
input [1:0] a;
input [2:0] d; 
input clk; 
output reg [3:0] f; 
output reg [3:0] t;
reg [2:0] c;
reg [3:0] b; 
initial
 begin
  f <= 0;
  t <= 0;
  c <= 0;
 end
always @(posedge clk) 
 begin
  b = f + 10;
  c = a + b;
 end
always @(negedge clk)
 begin   
  case(c)
   3'b001: f <= c + d; 
	3'b010: f <= c - d;
	3'b011: f <= c / d;
	3'b100: f <= c * d;
	3'b101: t <= c | d;
	3'b110: t <= c ^ d;
	3'b111: t <= d & c;
  endcase
 end
endmodule
