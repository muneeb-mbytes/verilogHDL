`timescale 1ns / 1ps

module cmosnor(x, y, f);
input x, y;
output f;
supply1 vdd;
supply0 gnd;
wire a;
pmos p1 (a, vdd, x); //pmos [instance name] (output, input, control)
pmos p2 (f, a, y);
nmos n1 (f, gnd, x); //nmos [instance name] (output, input, control)
nmos n2 (f, gnd, y);
endmodule


