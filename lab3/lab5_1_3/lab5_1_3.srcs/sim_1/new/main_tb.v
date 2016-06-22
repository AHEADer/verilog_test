`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/07 09:32:31
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
    reg D, Enable;
    wire Q, Qbar;
    main DUT (D,Enable,Q,Qbar);
    initial
    begin
    D = 0;
    Enable = 0;
    
    #10 D = 1;
    #10 Enable = 1;
    #10 D = 0;
    #10 D = 1;
    #10 Enable = 0;
    #10 D = 0;
    #10 D = 1;
    #10 D = 0;
    #10 Enable = 1;
    #10 D = 1;
    #10 D = 0;
    end
endmodule
