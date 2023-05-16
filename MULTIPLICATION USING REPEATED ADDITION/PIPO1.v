module PIPO1 (X, data_in,LdA, clk);
input [15:0] data_in;
input LdA, clk;
output reg [15:0] X;
always @(posedge clk)
if (LdA)
  X <= data_in;
endmodule 



