`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:42:08 05/18/2023 
// Design Name: 
// Module Name:    SR_latch 
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
module SR_latch(S,R,En,Q,Qb);
	input S,R,En;
	output  Q,Qb;

	assign Q = En ? ((S^R) ? S: Q) :Q;
   assign Qb = ~Q;
endmodule
