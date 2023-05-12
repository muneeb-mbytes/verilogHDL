module sr_latch(S,R,Q,Qb);
	input S,R;
	output  Q,Qb;
        assign Q = ~(R & Qb);
	assign Qb= ~(S &  Q);
endmodule

