`timescale 1ns / 1ps

module seg7_control(
    input clk1,
	 	input [15:0] bcd,
    output reg [7:0] seg,       // segment pattern 0-9
    output reg [3:0] digit      // digit select signals
    );
	 
	 // Parameters for segment patterns
	 parameter ZERO  = 8'b00000011;  // 0
    parameter ONE   = 8'b10011111;  // 1
    parameter TWO   = 8'b00100101;  // 2 
    parameter THREE = 8'b00001101;  // 3
    parameter FOUR  = 8'b10011001;  // 4
    parameter FIVE  = 8'b01001001;  // 5
    parameter SIX   = 8'b01000001;  // 6
    parameter SEVEN = 8'b00011111;  // 7
    parameter EIGHT = 8'b00000001;  // 8
    parameter NINE  = 8'b00001001;  // 9
	  parameter letter = 8'b11111101; // 
	 // To select each digit in turn
	 reg [1:0] digit_select;     // 2 bit counter for selecting each of 4 digits
    reg [16:0] digit_timer;     // counter for digit refresh
    
    // Logic for controlling digit select and digit timer
    always @(posedge clk1) begin
		    if(digit_timer == 49_999) begin         // The period of 50MHz clock is 20ns (1/(50*1,000,000) seconds)
                digit_timer <= 0;                   // 20ns x 50,000 = 1ms
                digit_select <=  digit_select + 1;
            end
            else
                digit_timer <=  digit_timer + 1;
    end
    
    // Logic for driving the 4 bit anode output based on digit select
	     always @(digit_select) begin
	   case(digit_select) 
            2'b00 : digit = 4'b0001;   // Turn on ones digit
            2'b01 : digit = 4'b0010;   // Turn on tens digit
            2'b10 : digit = 4'b0100;   // Turn on hundreds digit
            2'b11 : digit = 4'b1000;   // Turn on thousands digit
        endcase
    end
	   // Logic for driving segments based on which digit is selected and the value of each digit
    always @*
        case(digit_select)
            2'b00 : begin       // ONES DIGIT
                        case(bcd[3:0])
			                   4'b0000 : seg = ZERO;
                            4'b0001 : seg = ONE;
                            4'b0010 : seg = TWO;
                            4'b0011 : seg = THREE;
                            4'b0100 : seg = FOUR;
                            4'b0101 : seg = FIVE;
                            4'b0110 : seg = SIX;
			                   4'b0111 : seg = SEVEN;
                            4'b1000 : seg = EIGHT;
                            4'b1001 : seg = NINE;
                        endcase
                    end
                    
            2'b01 : begin       // TENS DIGIT
                        case(bcd[7:4])
			                   4'b0000 : seg = ZERO;
                            4'b0001 : seg = ONE;
                            4'b0010 : seg = TWO;
                            4'b0011 : seg = THREE;
                            4'b0100 : seg = FOUR;
									  4'b0101 : seg = FIVE;
                            4'b0110 : seg = SIX;
                            4'b0111 : seg = SEVEN;
                            4'b1000 : seg = EIGHT;
                            4'b1001 : seg = NINE;
			endcase
                    end
          2'b10 : begin       // HUNDREDS DIGIT
 			              case(bcd[11:8])
			                   4'b0000 : seg = ZERO;
                            4'b0001 : seg = ONE;
                            4'b0010 : seg = TWO;
                            4'b0011 : seg = THREE;
                            4'b0100 : seg = FOUR;
									  4'b0101 : seg = FIVE;
                            4'b0110 : seg = SIX;
                            4'b0111 : seg = SEVEN;
                            4'b1000 : seg = EIGHT;
                            4'b1001 : seg = NINE;
			endcase
                          
									  
                    end
                    
          2'b11 : begin       // MINUTES ONES DIGIT
 			            seg = letter;
                            
									  
                    end 
        endcase

endmodule

								