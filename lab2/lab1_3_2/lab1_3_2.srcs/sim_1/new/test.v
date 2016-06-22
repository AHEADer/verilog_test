`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/23 09:11:15
// Design Name: 
// Module Name: test
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


module test(

    );
    reg [1:0] x, y;
        reg s;
        wire [1:0] m;
        
        lab1_3_2 DUT (.x(x), .y(y), .s(s), .m(m));
        
     
        initial
        begin
          x = 0; y = 0; s = 0;
          #10 x = 1;
          #10 y = 1;
          #10 x = 3; y = 0;
          #10 x = 2; y = 3;
          #10 s = 1;
          #10 x = 1;
          #10 y = 1;
          #10 x = 3; y = 0;
          #10 x = 2; y = 3;
        #20;
        end
        
endmodule
