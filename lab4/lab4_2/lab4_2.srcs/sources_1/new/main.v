`timescale 1ns / 1ps

parameter width = 8;

module main(
    input SUM_SEL,
    input NEXT_SEL,
    input LD_SUM,
    input LD_NEXT,
    input A_SEL,
    output NEXT_ZERO
    );
    wire [width-1:0] m0, m1, m2, s, n, a0, a1, d;
    Mux        M0 (SUM_SEL, 0, a0, m0);
    Mux        M1 (NEXT_SEL, 0, d, m1);
    Mux        M2 (A_SEL, n, a1, m2);
    Register   SUM (LD_SUM, m0, s);
    Register   NEXT (LD_NEXT, m1, n);
    Adder      A0 (s, d, a0);
    Adder      A1 (1, n, a1);
    Memory     Mem (m2, d);
    Comparator C (m1, NEXT_ZERO);
endmodule

module Comparator
//# (parameter width = 8)
(
    input [width-1:0] A,
    output Q
);
    assign Q = A == 0;
endmodule

module Memory
//# (parameter width = 8)
(
    input [width-1:0] A,
    output [width-1:0] D
);
    reg [width-1:0] ROM [width-1:0];
    assign D = ROM[A];
endmodule

module Mux
//# (parameter width = 8)
(
    input S,
    input [width-1:0] A,
    input [width-1:0] B,
    output [width-1:0] M
);
    assign M = S ? B : A;
endmodule

module Register
//# (parameter width = 8)
(
    input clk,
    input [width-1:0] D,
    output reg [width-1:0] Q
);
    always @(posedge clk)
        Q <= D;
endmodule

module Adder
//# (parameter width = 8)
(
    input [width-1:0] A,
    input [width-1:0] B,
    output [width-1:0] Q
);
    assign Q = A + B;
endmodule