`timescale 1ns / 1ps

parameter width = 8;

module main(
    input S0,
    input S1,
    input S2,
    input S3,
    input clk
    );

    wire [width-1:0] m0, m1, m2, m3, r0, r1, r2, a0;
    Mux      M0 (S0, m3, r0, m0);
    Mux      M1 (S1, m3, r1, m1);
    Mux      M2 (S2, r0, r1, m2);
    Mux      M3 (S3, m2, r2, m3);
    Register R0 (clk, m0, r0);
    Register R1 (clk, m1, r1);
    Register ACC (clk, a0, r2);
    Adder    A0 (r2, m2, a0);
endmodule

module Mux
(
    input S,
    input [width-1:0] A,
    input [width-1:0] B,
    output [width-1:0] M
);
    assign M = S ? B : A;
endmodule

module Register
(
    input clk,
    input [width-1:0] D,
    output reg [width-1:0] Q
);
    always @(posedge clk)
        Q <= D;
endmodule

module Adder
(
    input [width-1:0] A,
    input [width-1:0] B,
    output [width-1:0] Q
);
    assign Q = A + B;
endmodule