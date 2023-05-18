module PIPO1 (X, data_in,LdA, clk);
input [15:0] data_in;
input LdA, clk;
output reg [15:0] X;
wire sr;
always @(posedge clk && LdA)
if (sr)
  X<=16'b0;
else 
  X <= data_in;
endmodule 





