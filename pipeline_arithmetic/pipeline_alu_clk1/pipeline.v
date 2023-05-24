`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:23:54 05/23/2023 
// Design Name: 
// Module Name:    pipeline 
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
module pipeline(F,a,b,c,d,clk1
    );
//parameter N=4;
//	parameter M = 12;
	input [3:0] a,b,c,d;
	input clk1;
	output [11:0] F;
	
	reg [11:0] L12_X1, L12_X2, L12_D, L23_X3,L23_D,L34_F;
	
	assign F=L34_F;
	  
	  //stage1
	always@(posedge clk1)
		begin
			L12_X1 <=  a + b;
			L12_X2 <=  c - d;
			L12_D <= d;
	//	end
	//	always@(posedge clk1)
		//	begin
			//stage 2
			 L23_X3 <=  L12_X1 + L12_X2;
			 L23_D  <= L12_D;
			// end
		//always@(posedge clk1) begin
			 //stage3 
			 L34_F <=  L23_X3 * L23_D ;
		end

endmodule
