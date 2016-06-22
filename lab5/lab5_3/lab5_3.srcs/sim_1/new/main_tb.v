`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/13 09:00:01
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
    reg reset,clk;
    wire [2:0] out, state, nextstate;
    main DUT (clk, reset, out, state, nextstate);
    
    initial
    begin
    clk=0;
    reset=1;
    #20 reset=0;
    end
    
    always
    #10 clk=~clk;
    
endmodule
