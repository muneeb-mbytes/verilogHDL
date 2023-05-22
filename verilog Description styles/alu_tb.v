// Inputs
	reg [15:0] x;
	reg [15:0] y;

// Outputs
	wire [15:0] z;
	wire sign;
	wire zero;
	wire carry;
	wire parity;
	wire overflow;

// Instantiate the Unit Under Test (UUT)
	alu_16bit uut (
		.x(x), 
		.y(y), 
		.z(z), 
		.sign(sign), 
		.zero(zero), 
		.carry(carry), 
		.parity(parity), 
		.overflow(overflow)
	);
	initial begin
    
// Initialize Inputs
		$dumpfile("alu.vcd");
		$dumpvars(0,alu_tb);
  $monitor($time,"x=%h,y=%h,z=%h,sign=%b,zero=%b,carry=%b,parity=%b,overflow=%b",x,y,z,sign,zero,carry,parity,overflow);
    
// Wait 100 ns for global reset to finish
		#5 x=16'h8fff;   y=16'h8000;
    #5 x=16'hfffe;   y=16'h0002;
    #5 x=16'haaaa;   y=16'h5555;	
	end
endmodule
