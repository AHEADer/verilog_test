`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/06/10 21:30:23
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

/*
module main_tb(
    );
    reg d_in, c_in, b_in, a_in, Ld, Clr,M_in,Clk;
    wire Qd, Qc, Qb, Qa, Qcc;
    four_bits_binary_counter DUT (
     d_in, c_in, b_in, a_in, Ld, Clr,M_in,Clk,
     Qd, Qc, Qb, Qa, Qcc
        );
        initial
        begin
        d_in = 1;
        c_in = 1;
        b_in = 1;
        a_in = 1;
        M_in = 1;
        Clr = 0;
        Ld = 0;
        Clk = 0;
        #8 Ld = 1;
        #8 M_in = 0;
        end
        
        always
        begin
        #10 Clk = ~Clk;
        end
endmodule
*/

module main_tb(
);
    reg Clk,M_in;
    wire result,Qd, Qc, Qb, Qa;
    
    eight_counter_with_initial_two DUT(
    Clk,M_in,result,Qd, Qc, Qb, Qa
    );
    initial
    begin
    Clk = 0;
    M_in = 1;
    #400 M_in = 0;
    end
    
    always
    begin
    #10 Clk = ~Clk;
    end
endmodule