`timescale 1ns / 1ps

module mux_4to1 (out, s0, s1, i0, i1, i2, i3);
input s0, s1, i0, i1, i2, i3;
output out;
wire s0bar,s1bar;
  wor a, b;
  not (s0bar, s0);
  not (s1bar, s1);
  cmos cmos_a (a, i0, s0bar, s0);
  cmos cmos_b (a, i1, s0, s0bar);
  cmos cmos_c (b, i2, s0bar, s0);
  cmos cmos_d (b, i3, s0, s0bar);
  cmos cmos_e (out, a, s1bar, s1);
  cmos cmos_f (out, b, s1, s1bar);
endmodule
