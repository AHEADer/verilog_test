`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/09 13:09:33
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

    );
endmodule

module D_ff_with_synch_reset_behavior(input D, input Clk, input reset, output
reg Q);
    always @(posedge Clk)
    if (reset)
    begin
        Q <= 1'b0;
    end else
    begin
        Q <= D;
    end
endmodule

module D_ff_with_asynch_reset_behavior(input D, input Clk, input clear,
output reg Q);
    always @(posedge Clk or posedge clear)
    if (clear)
    begin
        Q <= 1'b0;
    end else
    begin
        Q <= D;
    end
endmodule