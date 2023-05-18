`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:57:04 05/18/2023 
// Design Name: 
// Module Name:    generate_set_of_MUX 
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
module generate_set_of_MUX(a, b, f, sel);
	input [0:3] a, b;
	input sel; 
	output [0:3] f; 
	assign f = sel ? a : b;


endmodule
