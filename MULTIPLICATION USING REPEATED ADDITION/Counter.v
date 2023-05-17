module CNTR (Bout, data_in, LdB, decB, clk);
input [15:0] data_in;
input LdB, decB, clk;
output reg [15:0] Bout;
always @(posedge clk )
if (LdB) 
Bout <= data_in;
else if (decB)
 Bout <= Bout - 1;
endmodule 
