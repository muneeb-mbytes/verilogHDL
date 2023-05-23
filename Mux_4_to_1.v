`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:27 05/22/2023 
// Design Name: 
// Module Name:    Mux_4_to_1 
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
module mux2to1 (in, sel, out);
input [1:0] in;
input sel;
output out;
assign out = in[sel];
endmodule

module mux4to1 (in,clk, sel, out,seg,digit);
input [3:0] in;
input clk;
input [1:0] sel;
output out;
output [7:0] seg;     // 7 segment display segment pattern
output [3:0] digit;
wire [1:0] t;

mux2to1 M0 (in[1:0],sel[0],t[0]);
mux2to1 M1 (in[3:2],sel[0],t[1]);
mux2to1 M2 (t,sel[1],out);

seg7_control seg7(.clk(clk),.out(out), .seg(seg), .digit(digit));
endmodule

module seg7_control(
    
   input out,input clk,
    output reg [7:0] seg,       // segment pattern 0-9
    output reg [3:0] digit      // digit select signals
    );// Parameters for segment patterns
		
parameter ZERO  = 8'b00000011;  // 0
parameter ONE   = 8'b10011111;  // 1
parameter letter= 8'b11111111;
		
		  // 
	 // To select each digit in turn
    reg [1:0] digit_select;     // 2 bit counter for selecting each of 4 digits
    reg [16:0] digit_timer;     // counter for digit refresh
    
    // Logic for controlling digit select and digit timer
    always @(posedge clk) 
		begin	
		    if(digit_timer == 49_999) 
			 begin         // The period of 50MHz clock is 20ns (1/(50*1,000,000) seconds)
                digit_timer <= 0;                   // 20ns x 50,000 = 1ms
                digit_select <=  digit_select + 1;
          end
          else
                digit_timer <=  digit_timer + 1;
      end
    
    // Logic for driving the 4 bit anode output based on digit select
    always @(digit_select) 
	 begin
	   case(digit_select) 
	2'b00 : digit = 4'b0001;   // Turn on ones digit
        2'b01 : digit = 4'b0010;   // Turn on tens digit
        2'b10 : digit = 4'b0100;   // Turn on hundreds digit
        2'b11 : digit = 4'b1000;   // Turn on thousands digit
      endcase
    end
	   // Logic for driving segments based on which digit is selected and the value of each digit
    always @*
        case(digit_select)
            2'b00 : begin       // ONES DIGIT
                        case(out)
			4'b0000 : seg = ZERO;
                        4'b0001 : seg = ONE;  
                        endcase
                    end
                    
            2'b01 : begin       // TENS DIGIT
                       seg=letter;
                    end
                    
            2'b10 : begin       // HUNDREDS DIGIT
 		       seg = letter;		  
                    end
                    
            2'b11 : begin       // MINUTES ONES DIGIT
 		       seg = letter;
                            
									  
                    end
        endcase

endmodule
