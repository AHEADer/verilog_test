`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/09 12:45:53
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
    reg D, Clk;
    wire Qa, Qb, Qc;
    D_ff_behavior DUT1(.D(D),.Clk(Clk),.Q(Qb));
    D_ff_behavior DUT2(.D(D),.Clk(~Clk),.Q(Qc));
    D_latch_behavior DUT3(.D(D),.Enable(Clk),.Q(Qa));
    
    initial
    begin
    Clk = 0;
    D = 0;
    #15 D=~D;
    #8 D=~D;
    #3 D=~D;
    #8 D=~D;
    #10 D=~D;
    #8 D=~D;
    #3 D=~D;
    #3 D=~D;
    #8 D=~D;
    #3 D=~D;
    #3 D=~D;
    #15 D=~D;   
    end
    
    always
    begin
    #20 Clk = ~Clk;
    end
endmodule
