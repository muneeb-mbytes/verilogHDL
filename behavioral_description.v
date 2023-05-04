//behavioral description of 16 to 1 MUX:
module Mux_16_to_1(in,select_lines,out);
input [15:0]in;
input [3:0]select_lines;
output out;
//behavioral description
assign out =in[select_lines];
endmodule
