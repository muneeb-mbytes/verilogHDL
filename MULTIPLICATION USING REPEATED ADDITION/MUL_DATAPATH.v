module mul_datapath (Y,X,eqz, LdA, LdB, LdP, clrP, decB, data_in, clk);
input LdA, LdB, LdP, clrP, decB, clk;
input [15:0] data_in;
output eqz;
wire [15:0] X,Y, Z, Bout;
output [15:0] Y,X;
PIPO1 A (X, data_in, LdA, clk);
PIPO2 P (Y, Z, LdP, clrP, clk);
CNTR B (Bout, data_in, LdB, decB, clk);
ADD AD (Z, X, Y);
EQZ COMP (eqz, Bout);
endmodule

