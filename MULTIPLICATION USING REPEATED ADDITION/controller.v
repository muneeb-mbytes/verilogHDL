module controller (LdA, LdB, LdP, clrP, decB, done, clk, eqz, start);
input clk, eqz, start;
output reg LdA, LdB, LdP, clrP, decB, done;
reg [2:0] state;
parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100;
always @(posedge clk)
begin
case (state)
S0:
if (start) state <= S1;
S1:
state <= S2;
S2:
state <= S3;
S3:
#2 if (eqz) state <= S4;
S4:
state <= S4;
default: state <= S0;
endcase
end
always @(state)
begin
case (state)
S0:
begin #1 LdA = 0; LdB = 0; LdP = 0; clrP = 0; decB = 0; end
S1:
begin #1 LdA = 1; end
S2:
begin #1 LdA = 0; LdB = 1; clrP = 1; end
S3:
begin #1 LdB = 0; LdP = 1; clrP = 0; decB = 1; end
S4:
begin #1 done = 1; LdB = 0; LdP = 0; decB = 0; end
default: begin #1 LdA = 0; LdB = 0; LdP = 0; clrP = 0; decB = 0; end
endcase
end
endmodule 
