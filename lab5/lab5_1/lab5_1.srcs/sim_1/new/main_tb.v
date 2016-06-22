`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/12 23:56:19
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
    reg in, clk, reset;
    wire out;
    wire [1:0] state;
    main DUT(clk, reset, in, out, state);
    initial
    begin
    in=0;
    reset=0;
    clk=0; 
    #20 in=~in;
    #20 in=~in;
    #20 in=~in;
    #40 in=~in;
    #20 in=~in;
    #60 in=~in;
    #20 in=~in;
    end

    
    always
    #10.5 clk = ~clk;
endmodule
