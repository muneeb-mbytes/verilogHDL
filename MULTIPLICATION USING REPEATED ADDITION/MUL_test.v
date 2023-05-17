module MUL_test;
reg [15:0] data_in;
wire [15:0] Y;
reg clk, start;
wire done;
mul_datapath DP (Y,eqz, LdA, LdB, LdP, clrP, decB, data_in, clk);
controller CON (LdA, LdB, LdP, clrP, decB, done, clk, eqz, start);
initial
begin
clk = 1'b0;
#10; start = 1'b1;
end
always #5 clk = ~clk;
initial
begin
#10; data_in = 16'd4;
#10; data_in = 16'd3;
end
initial
begin
$monitor ($time, " %d %b", DP.Y, done);
end
endmodule
