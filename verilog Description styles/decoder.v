module generate_decoder (out, in, select); 
input in; input [0:1] select; 
output [0:3] out; 
assign out[select] = in; 
endmodule

