`timescale 1ns / 1ps

module cmosnot(x, f);
input x;
output f;
supply0 gnd;
supply1 vdd;
pmos p1(f, vdd, x);  //pmos [instance name](output, input, control)
nmos n1(f, gnd, x);  //nmos [instance name](output, input, control)
endmodule

