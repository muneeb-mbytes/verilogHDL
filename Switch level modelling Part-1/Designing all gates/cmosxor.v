`timescale 1ns / 1ps

module cmosxor(x, y, f);
input x, y;
output f;
supply1 vdd;
supply0 gnd;
wire a;
wire b;
wire c;
wire x_bar;
wire y_bar;
cmosnot notofx (x, x_bar);
cmosnot notofy (y, y_bar);
pmos p1 (a, vdd, x_bar);
pmos p2 (a, vdd, y_bar);
pmos p3 (f, a, x);
pmos p4 (f, a, y);
nmos n1 (f, b, x_bar);
nmos n2 (f, c, x);
nmos n3 (b, gnd, y_bar);
nmos n4 (c, gnd, y);

endmodule
