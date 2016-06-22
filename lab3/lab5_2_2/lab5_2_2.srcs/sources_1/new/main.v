`timescale 1ns / 1ps

module D_ff_behavior (input D, input Clk, output reg Q);
    always @ (posedge Clk)
    if(Clk)
    begin
        Q <= D;
        end
endmodule

module D_latch_behavior (input D, input Enable, output reg Q, output reg Qbar);
    always @ (D or Enable)
        if(Enable)
    begin
        Q <= D;
        Qbar <= ~D;
    end
endmodule