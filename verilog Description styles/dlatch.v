module level_sensitive_latch (D, Q, En); 
input D, En;
 output Q;
 assign Q = En ? D : Q; 
endmodule

