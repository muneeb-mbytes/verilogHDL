module genadd(
    input [N-1:0]a,
    input [N-1:0]b,
    input cin,
    output [N-1:0]sum,
    output cout
    );
	 parameter N=4;
	 wire [N:0] cinp;
	 assign cinp[0]=cin;
	 assign cout=cinp[N];
	 genvar p;
	 generate for (p=0; p<N; p=p+1)
	  begin 
     wire t1,t2,t3;	 
	  xor g1 (t1,a[p],b[p]);
	  xor g2 (sum[p],t1,cinp[p]);
	  and g3 (t2,a[p],b[p]);
	  and g4 (t3,t1,cinp[p]);
	  or  g5 (cinp[p+1],t2,t3);
	 end
	 endgenerate
endmodule
