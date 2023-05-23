module fsm_seq_detector(
    input clk,
    input rst,
    input [9:0] x,
    output reg z
    );
parameter A=0,B=1,C=2,D=3;
reg [1:0] PS,NS;
always@(posedge clk or posedge rst)
begin
if(rst) begin
		PS<=A;
		end
else begin
	PS<=NS;
	end
end
always@(PS,x)
	begin
	case(PS)
		A:begin
			z<=x?0:0;
			NS<=x?B:A;
		  end
		B:begin
			z<=x?0:0;
			NS<=x?C:A;
		  end
		C:begin
			z<=x?1:0;
		   NS<=x?D:A;
		  end
		D:begin
			z<=x?1:0;
			NS<=x?D:A;
		  end
	endcase
end
endmodule
