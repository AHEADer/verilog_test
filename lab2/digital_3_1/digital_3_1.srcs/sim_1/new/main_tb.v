`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/03 14:58:22
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
    reg tAi, tBi, tCarry;
    wire tF;
    main test_case (
    .Ai(tAi),.Bi(tBi),.Carry(tCarry),.F(tF)
    );
     initial
       begin
           tAi = 0;tBi = 0;tCarry = 0;
           #10 tAi = 1;
           #10 tBi = 1;
           #10 tCarry = 1;
           #10 tAi = 0;
           #10 tBi = 0;
           #10 tCarry = 0;
       end

    
    //always
    //begin
    //tAi=#10 ~tAi;
    //tBi=#20 ~tBi;
    //tCarry = #40 ~tCarry;
    //end
    
endmodule
