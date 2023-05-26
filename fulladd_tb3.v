module testbench;
reg a, b, c; wire sum, cout;
integer i;
//instantiate full adder
full_adder FA (sum, cout, a, b, c);
initial
begin
  for (i=0; i<8; i=i+1)
   begin
    {a,b,c} = i; #5;
      $display ("T=%2d, a=%b, b=%b, c=%b, sum=%b, cout=%b",
                 $time, a, b, c, sum, cout);
   end
   #5 $finish;
end
endmodule
