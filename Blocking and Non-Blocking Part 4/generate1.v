module generate1(
    input[N-1:0] a,
    input [N-1:0] b,
    output [N-1:0] f
    );
	parameter N = 16;
	genvar p;
  //generate block
	generate for (p=0;p<N;p=p+1)
	 begin
    // xor primitive
	  xor XG (f[p],a[p],b[p]);
	 end
	endgenerate
endmodule
