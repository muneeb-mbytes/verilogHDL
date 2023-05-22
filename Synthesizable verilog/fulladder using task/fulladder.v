module fulladder (s, cout, a, b, cin); 
          input a, b, cin; 
          output reg s, cout; 

          always @(a or b or cin) 
          FA (s, cout, a, b, cin); 

          task FA; 
          output sum, carry; 
          input A, B, C; 
          begin 
              #5 sum = A ^ B ^ C; 
              carry = (A&B) | (B&C) | (C&A); 
           end 
         endtask
      endmodule   

