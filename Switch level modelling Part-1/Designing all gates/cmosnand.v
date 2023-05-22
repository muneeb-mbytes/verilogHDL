`timescale 1ns / 1ps

module cmosnand (x, y, f);
input x, y;
output f;
supply1 vdd;
supply0 gnd;
wire a;
pmos p1 (f, vdd, x); //pmos [instance name] (output, input, control);
pmos p2 (f, vdd, y); 
nmos n1 (f, a, x);   //nmos [instance name] (output, input, control);
nmos n2 (a, gnd, y);
endmodule
