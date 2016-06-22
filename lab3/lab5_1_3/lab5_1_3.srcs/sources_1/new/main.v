`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/07 08:50:41
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


module main(input D, input Enable, output Q, output Qbar);

wire G3,G4;

assign #2 G3 = (~D)&Enable;
assign #2 G4 = D&Enable;
assign #2 Q = ~(Qbar|G3);
assign #2 Qbar = ~(G4|Q);

endmodule
