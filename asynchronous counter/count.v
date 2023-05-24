`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:53:04 05/23/2023 
// Design Name: 
// Module Name:    count 
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
module count(input clk_1Hz,input rst,output reg [6:0] count
    );
 always @(posedge clk_1Hz or posedge rst)
 begin 
 if (rst)
	 count = 7'b0; 
 else 
	 count = count + 1; 
 end

endmodule
