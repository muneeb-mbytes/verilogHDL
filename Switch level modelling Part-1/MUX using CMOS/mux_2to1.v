`timescale 1ns / 1ps

module mux_2to1 (out, s, i0, i1);
input s, i0, i1;
output out;
wire sbar;
not (sbar, s);
cmos cmos_a (out, i0, sbar, s);
cmos cmos_b (out, i1, s, sbar);
endmodule
