`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/31 10:17:46
// Design Name: 
// Module Name: lab5_1_1_tb
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


module lab5_1_1_tb(

    );
    reg tr,ts;
    wire tq,tqbar;
        SR_latch_dataflow test_buff(
        .R(tr),.S(ts),.Q(tq),.Qbar(tqbar)
        );
initial
    begin
    tr=0;
    ts=0;
    #1 ts=1;
    #1 ts=0;
    #1 tr=1;
    #1 tr=0;
    ts =1;
    #1 tr=1;
    ts=0;
    #1 tr=0;
    ts=1;
    #1 tr=1;
    ts=0;
    #1 ts=1;
end
endmodule
