module MUL_test;
reg [15:0] data_in;
wire [15:0] Y,X;
reg clk, start;
wire done;
mul_datapath DP (Y,X,eqz, LdA, LdB, LdP, clrP, decB, data_in, clk);
controller CON (LdA, LdB, LdP, clrP, decB, done, clk, eqz, start);
initial
begin
clk = 1'b0;
#3 start = 1'b1;
//#500 $finish;
end
always #5 clk = ~clk;
initial
begin
#17;
 data_in = 6;
 #10;
 data_in = 5;
end
initial
begin
$monitor ($time, " %d %d %d %b", DP.Y,DP.X,DP.Z, done);
end
endmodule
