`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/05/31 10:45:42
// Design Name: 
// Module Name: SR_latch_gate
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


module SR_latch_gate(input R, input S, input E, output Q, output Qbar);
    wire RE, ES;
    assign RE = R&E;
    assign ES = E&S;
    assign #1 Q = ~(Qbar|RE);
    assign #1 Qbar = ~(Q|ES); 
endmodule
