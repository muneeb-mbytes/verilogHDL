module generate_set_of_MUX (a, b, f, sel);
 input [0:3] a, b;
 input sel; 
output [0:3] f; 
assign f = sel ? a : b; 
endmodule

