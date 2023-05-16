module cyclic_lamp (clock, light);
  input clock;
  output reg [0:2] light;
  parameter S0=0, S1=1, S2=2;
  parameter RED=3'b100, GREEN=3'b010, YELLOW=3'b001;
  reg [0:1] state;
always @(posedge clock)
case (state)
  S0: begin // S0 means RED
        light <= GREEN; state <= S1;
      end
  S1: begin // S1 means GREEN
        light <= YELLOW; state <= S2;
      end
  S2: begin // S2 means YELLOW
        light <= RED; state <= S0;
      end
  default: begin
            light <= RED;
            state <= S0;
           end
endcase
endmodule
