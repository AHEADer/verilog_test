`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/13 07:48:23
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
    reg clk, reset;
    reg [1:0] a_in;
    wire yout;
    wire [2:0] state, nextstate;
    moore_3processes DUT(clk, reset, a_in, yout, state);
    initial
    begin
    clk=0;
    reset=1;
    a_in = 2'b00;
    #20 reset=0;
    #20 a_in = 2'b11;
    #10 a_in = 2'b10;
    #10 a_in = 2'b00;
    #20 a_in = 2'b10;
    #10 a_in = 2'b00;
    #10 a_in = 2'b11;
    #10 a_in = 2'b00;
    #10 a_in = 2'b01;
    #10 a_in = 2'b00;
    
    end
    
    always
    #5 clk=~clk;
endmodule
