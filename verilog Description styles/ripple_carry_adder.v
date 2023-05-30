module ripple_adder(s, cout, a, b, cin
    );
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire c1,c2,c3;

fulladder fa0 (s[0], c1, a[0], b[0], cin);
fulladder fa1 (s[1], c2, a[1], b[1], c1);
fulladder fa2 (s[2], c3, a[2], b[2], c2);
fulladder fa3 (s[3], cout, a[3], b[3], c3);

endmodule

module fulladder(s,cout,a,b,c);
input a,b,c;
output s,cout;
wire s1,c1,c2;

xor G1(s1,a,b), G2(s,s1,c), G3(cout,c2,c1);
and G4(c1,a,b), G5(c2,s1,c);


endmodule

