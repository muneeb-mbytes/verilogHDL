//behavioral description of 4 to 1 MUX
module Mux_4_to_1(in,select_lines,out);
input [3:0]in;
input [1:0]select_lines;
output out;
//behavioral description
assign out =in[select_lines];
endmodule

//structural refinement of 16 to 1 MUX
module Mux_16_to_1(in,select_lines,out);
input [15:0]in;
input [3:0]select_lines;
output out;
wire [3:0]t;
//instantiating 4 to 1 MUX to 16 to 1 MUX
Mux_4_to_1 M0(select_lines[1:0],in[3:0],t[0]);
Mux_4_to_1 M1(select_lines[1:0],in[7:4],t[1]);
Mux_4_to_1 M2(select_lines[1:0],in[11:8],t[2]);
Mux_4_to_1 M3(select_lines[1:0],in[15:12],t[3]);
Mux_4_to_1 M4(select_lines[3:2],t,out);
endmodule
