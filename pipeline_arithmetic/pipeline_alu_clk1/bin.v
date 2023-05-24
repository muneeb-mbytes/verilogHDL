`timescale 1ns / 1ps
//module to convert binary number to BCD number using double dabble algorithm
module bintobcd(
   input [11:0] F,
   output reg [15:0] bcd
   );
   
integer i;
always @(F) begin
    bcd=0;		
	for (i=0;i<12;i=i+1) begin					//Iterate once for each bit in input number
   if (bcd[3:0] >= 5) bcd[3:0] = bcd[3:0] + 3;		//If any BCD digit is >= 5, add three
	if (bcd[7:4] >= 5) bcd[7:4] = bcd[7:4] + 3;
	if (bcd[11:8] >= 5) bcd[11:8] = bcd[11:8] + 3;
//	if (bcd[15:12] >= 5) bcd[15:12] = bcd[15:12] + 3;
	bcd = {bcd[14:0],F[11-i]};				//Shift one bit, and shift in proper bit from input 
    end 
end
endmodule 

