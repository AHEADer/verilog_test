`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/07 10:12:26
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
    
    reg D, Clk;
    wire Q;
    main DUT (D, Clk, Q);
    always
    begin
    #10 Clk=~Clk;
    end
    
    initial
    begin
    Clk=0;
    D=0;
    #30 D = ~D;
    #30 D = ~D;
    #40 D = ~D;
    #20 D = ~D;
    end
endmodule
