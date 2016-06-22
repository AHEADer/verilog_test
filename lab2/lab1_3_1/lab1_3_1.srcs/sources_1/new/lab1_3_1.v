`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/23 09:21:51
// Design Name: 
// Module Name: lab1_3_1
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


module lab1_3_1(
   input x,
   input y,
   input s,
   output m
    );
    reg  result;
        always @ (x or y or s)
        begin
        if(s==0)
            result=y;
        else
            result=x;
        end
        
        assign m = result;
endmodule
