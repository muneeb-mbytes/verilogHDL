module PIPO2 (Y,Z, LdP,clrP, clk);
input [15:0] Z;
input LdP, clrP, clk;
output reg [15:0] Y;
always @(posedge clk)
if (clrP) 
  Y <= 16'b0;
else if (LdP) 
  Y <= Z;//Y, Z, LdP, clrP, clk
endmodule
