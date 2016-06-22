`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/03 14:53:04
// Design Name: 
// Module Name: main
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


module main(
input Ai, Bi, Carry,
output F
    );
       wire t1,t2,t3,si,ci,stay;
    
    xor #2
        (t1,Ai,Bi),
        (si,t1,Carry);
        
    and #2
        (t2,Ai,Bi),
        (t3,t1,Carry);
     
    or #2
        (ci,t2,t3);
        
    xnor #2
        (stay,si,ci);
    assign #2.1 F = stay;
endmodule