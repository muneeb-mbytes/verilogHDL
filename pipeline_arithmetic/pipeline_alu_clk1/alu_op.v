`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:59:48 05/15/2023 
// Design Name: 
// Module Name:    alu_op 
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
module alu_op(F,a,b,c,d,clk);
	parameter N=10;
	
	input [N-1:0] a,b,c,d;
	input clk;
	output [N-1:0] F;
	reg [N-1:0] L12_X1, L12_X2, L12_D, L23_X3,L23_D,L34_F;
	
	assign F=L34_F;
	  
	  //stage1
	always@(posedge clk)
		begin
			L12_X1 <= #4 a + b;
			L12_X2 <= #4 c - d;
			L12_D <= d;
			
			//stage 2
			 L23_X3 <= #4 LL12_X1 + L12_X2;
			 L23_D  <= L12_D;
			 
			 //stage3 
			 L34_F <= #6 L23_X3 * L23_D ;
		end

endmodule
