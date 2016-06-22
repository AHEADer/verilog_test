`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/09 14:13:32
// Design Name: 
// Module Name: main_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main_tb(
    );
    reg D, Clk, reset;
    wire Q;
    D_ff_with_synch_reset_behavior DUT(D, Clk, reset, Q);
    
    initial
    begin
    Clk = 0;
    D = 0;
    reset = 0;
    #20 D = ~D;
    #15 reset = ~reset;
    #5 reset = ~reset;
    #5 reset = ~reset;
    #10 reset = ~reset;
    #30 D = ~D;
    #3 reset = ~reset;
    #5 reset = ~reset;
    end
    
    always
    begin
    #10 Clk = ~Clk;
    end
endmodule
