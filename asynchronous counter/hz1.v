`timescale 1ns / 1ps

module oneHz_gen(
    input clk,
    //input reset_button,
    output clk_1Hz
    );
    
    reg [25:0] ctr_reg = 0;                 // 26 bits to cover 25000000
    reg clk_out_reg = 0;
    
    always @(posedge clk)
       
            if(ctr_reg == 24999999) begin  // 50MHz / 1Hz / 2 = 25,000,000
                ctr_reg <= 0;
                clk_out_reg <= ~clk_out_reg;
            end
            else
                ctr_reg <= ctr_reg + 1;
    
    assign clk_1Hz = clk_out_reg;
    
endmodule