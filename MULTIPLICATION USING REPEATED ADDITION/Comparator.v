module EQZ (eqz, Bout);
input [15:0] Bout;
output eqz;
assign eqz = (Bout == 0);
endmodule
