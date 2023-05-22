module fulladder (s, cout, a, b, cin); 
          input a, b, cin; 
          output s, cout; 
          assign s = sum(a, b, cin); 
          assign cout = carry(a, b, cin); 
			 
          

          function sum; 
          input x, y, z; 
          begin 
          sum = x ^ y ^ z; 
          end 
		    endfunction

          function carry; 
          input x, y, z; 
          begin 
          carry = (x&y) | (y&z) | (x&z); 
          end 
			 endfunction

endmodule
