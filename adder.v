module adder(sum, cout, a, b);
input [7:0] a, b;
output [7:0] sum;
output cout;
assign #5 {cout,sum} = a + b;
endmodule
