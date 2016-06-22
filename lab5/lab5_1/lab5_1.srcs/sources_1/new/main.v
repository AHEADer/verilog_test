`timescale 1ns / 1ps


module main(
input clk, input reset, input in, output reg out,
output [1:0] ostate
    );
    reg[1:0] state, nextstate;
    reg out_;
    parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;
    assign ostate = state;
    always @(posedge clk or posedge reset)
    if (reset)
        state <= S0;
    else
        state <= nextstate;
    
    always @(posedge clk or posedge reset)
        out = out_;
    
    always @(state or in)
    begin
        out = 1'b0;
        case(state)
            S0: if(in)
                out_ = 0;
            S1: if(in)
                out_ = 0;
            S2: if(in)
                out_ = 0;
            S3: 
                out = 1;
    endcase
    end
    
    always @(state or in)
    begin
    nextstate = S3;
    case(state)
    S0: if(in)
    nextstate = S1;
    S1: if(in)
    nextstate = S2;
    else
    nextstate = S1;
    S2: if(in)
        nextstate = S3;
        else
        nextstate = S2;
    S3: if(in)
            nextstate = S1;
        else
            nextstate = S0;
    endcase
    end

    
endmodule
