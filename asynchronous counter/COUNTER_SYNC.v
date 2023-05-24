`timescale 1ns / 1ps
 module simple_counter (clk, rst,seg,digit);
 input clk, rst; 
// output [6:0] count;
 //reg [6:0] count; 
  output [7:0] seg;      // 7 segment display segment pattern
    output [3:0] digit;      // 7 segment display anodes
 

  wire w_1Hz;
    wire [7:0] w_count;
	 wire [11:0] w_bcd;
	 
  oneHz_gen hz1(.clk(clk),.clk_1Hz(w_1Hz));
  count countup(.clk_1Hz(w_1Hz),.rst(rst),.count(w_count));
	 bintobcd bcd_code(.count(w_count), .bcd(w_bcd));
    seg7_control seg7(.clk(clk),  .bcd(w_bcd), .seg(seg), .digit(digit));
	 
 endmodule
 

 