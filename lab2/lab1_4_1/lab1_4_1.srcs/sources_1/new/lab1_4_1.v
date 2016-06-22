`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/23 09:30:55
// Design Name: 
// Module Name: lab1_4_1
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


module lab1_4_1(
    input  u, y, w, s0, s1,
    output m
    );
        assign #3 m = (~s1&((~s0 & u) | (s0 & y))) | (s1 & w);
        
endmodule
