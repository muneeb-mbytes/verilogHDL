module ADD (Z, X, Y);
input [15:0] X, Y;
output reg [15:0] Z;
always @(*)
begin
Z= X + Y;
end
endmodule 
