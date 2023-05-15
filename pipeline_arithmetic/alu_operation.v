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
module alu_op(F,a,b,c,d,clk1,clk2);
	parameter N=10;
	
	input [N-1:0] a,b,c,d;
	input clk1,clk2;
	output [N-1:0] F;
	reg [N-1:0] L12_X1, L12_X2, L12_D, L23_X3,L23_D,L34_F;
	
	assign F=L34_F;
	  
	  //stage1
	always@(posedge clk1)
		begin
			L12_X1 <=  a + b;
			L12_X2 <=  c - d;
			L12_D <= d;
		end
		always@(posedge clk1)
			begin
			//stage 2
			 L23_X3 <=  L12_X1 + L12_X2;
			 L23_D  <= L12_D;
			 end
		always@(posedge clk1) begin
			 //stage3 
			 L34_F <=  L23_X3 * L23_D ;
		end

endmodule
