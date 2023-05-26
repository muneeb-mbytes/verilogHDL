//behavioral description of full adder using assign statement

module full_adder (sum, carry, a, b, c);
input a, b, c;
output sum, carry;
assign sum = a ^ b ^ c;
assign carry= (a & b) | (b & c) | (c & a);
endmodule
