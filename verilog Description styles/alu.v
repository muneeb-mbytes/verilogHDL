module alu_16bit(x,y,z,sign,zero,carry,parity,overflow
    );
	 input [15:0] x,y;
	 output [15:0]z;
	 output sign, zero,carry, parity, overflow;
	 
assign {carry,z}=x+y;//  16 bit add
assign sign=z [15];
assign zero=~|z;
assign parity =~^z;
assign overflow=(x[15] &y[15] &~z[15])| (~x[15] &y[15] &z[15]);
end module
