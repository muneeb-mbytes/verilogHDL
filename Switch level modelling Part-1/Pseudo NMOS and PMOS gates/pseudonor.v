`timescale 1ns / 1ps

module pseudonor (x, y, f);
input x, y;
output f;
supply0 gnd;
nmos nx (f, gnd, x);
nmos ny (f, gnd, y);
pullup (f);
endmodule
