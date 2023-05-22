`timescale 1ns / 1ps

module top(x,y,not_x,nand_out,nor_out,and_out,or_out,xor_out,xnor_out);
input x;
input y;
output not_x;
output nand_out;
output nor_out;
output and_out;
output or_out;
output xor_out;
output xnor_out;

cmosnot notgate1(x, not_x);
cmosnand nandgate(x, y, nand_out);
cmosnor norgate(x, y, nor_out);
cmosnot notgate2(nand_out, and_out);
cmosnot notgate3(nor_out, or_out);
cmosxor xorgate(x, y, xor_out);
cmosnot notgate4(xor_out, xnor_out);

endmodule
