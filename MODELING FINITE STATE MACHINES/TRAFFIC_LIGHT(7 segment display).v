module challenge(
    input fast_clk,
	 input [0:2] light,
    output reg [7:0] seg,       
    output reg [3:0] digit
     );
	 reg [27:0] count;
	 reg [1:0] digit_select;     
    reg [16:0] digit_timer;    
	 
	 //parameter s=8'b01001001;
	 parameter r=8'b01110011;
	 parameter y=8'b10001001;
	 parameter g=8'b01000011;
	 parameter letter=8'b11111101
	 ;
	 
	 
	always @(posedge fast_clk)
	begin
	if(digit_timer == 49_999) begin         
                digit_timer <= 0;                   
                digit_select <=  digit_select + 1;
            end
            else
                digit_timer <=  digit_timer + 1;
    end
	 always @(digit_select) begin
	   case(digit_select) 
            2'b00 : digit = 4'b0001;            // Turn on ones digit
            2'b01 : digit = 4'b0010;				// Turn on tens digit
				2'b10 : digit = 4'b0100;
            2'b11 : digit = 4'b1000;
        endcase
    end
	always @(posedge fast_clk)
	begin
	case(digit_select)
   2'b00 : begin    
	case(light)
	3'b100: seg = r;
	3'b010: seg = g;
	3'b001: seg = y;
	endcase
	end

	2'b01 : begin
	case(light)
	3'b100: seg =letter;
	3'b010: seg = letter;
	3'b001: seg = letter;

  endcase
  end
  2'b10 : begin
	case(light)
	3'b100: seg = letter;
	3'b010: seg = letter;
	3'b001: seg = letter;

  endcase
  end
  2'b11 : begin
	case(light)
	3'b100: seg = letter;
	3'b010: seg = letter;
	3'b001: seg = letter;
  endcase 
end
default: seg=letter;
endcase
end
endmodule
