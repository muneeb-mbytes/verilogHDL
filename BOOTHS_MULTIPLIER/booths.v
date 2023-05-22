module shiftreg (data_out,data_in,
s_in, clk, ld, clr, sft);
  input s_in, clk, ld, clr, sft;
  input [15:0] data_in;
  output reg [15:0] data_out;
always @(posedge clk)
  begin
    if (clr)
      data_out <= 0;
  else if (ld)
      data_out <= data_in;
  else if (sft)
      data_out <= {s_in,data_out[15:1]};
  end
endmodule


module PIPO (data_out,data_in, clk, load);
  input [15:0] data_in;
  input load, clk;
  output reg [15:0] data_out;
always @(posedge clk)
  if (load) data_out <= data_in;
endmodule



module dff (d, q, clk, clr);
  input d, clk, clr;
  output reg q;
always @(posedge clk)
  if (clr)
    q <= 0;
  else 
    q <= d;
endmodule


module ALU (out, in1, in2, addsub);
  input [15:0] in1, in2;
  input addsub;
  output reg [15:0] out;
always @(*)
  begin
    if (addsub == 0) 
      out = in1 - in2;
    else 
    out = in1 + in2;
  end 
endmodule

    
module counter (data_out, decr, ldcnt, clk)
  input decr, clk;
  output [4:0] data_out;
always @(posedge clk)
  begin
    if (ldcnt) 
      data_out < 5’b10000;
    else if (decr) 
      data_out <= data_out – 1;
  end
endmodule




















