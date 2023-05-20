`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:05:29 04/20/2023 
// Design Name: 
// Module Name:    nptel 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top(input fast_clk,
  output  [0:2] light,
  output  clock,
  input [2:0] state,
    output  [7:0] seg,       
    output  [3:0] digit
);
	 
challenge segm(.fast_clk(fast_clk),.light(light),.seg(seg),.digit(digit));
cyclic_lamp trf(.fast_clk(fast_clk),.clock(clock),.light(light));
endmodule
