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
