`timescale 1ns / 1ps

module main(input clk, input reset, input a_in, output reg parity
);
    reg[1:0] state, nextstate;
    parameter S0=2'b00, S1=2'b01, S2=2'b010, S3=2'b11;
    always @(posedge clk or posedge reset) // always block to update state
    if (reset)
    state <= S0;
    else
    state <= nextstate;
    always @(state) // always block to compute output
    begin
    case(state)
        S0: parity = 0;
        S1: parity = 0;
        S2: parity = 0;
        S3: parity = 1;
    endcase
    end
    always @(state or a_in) // always block to compute nea_intstate
    begin
    nextstate = S0;
    case(state)
        S0: if(a_in)
            nextstate = S1;
        S1: if(a_in)
            nextstate = S2;
            else
            nextstate = S1;
        S2: if(a_in)
            nextstate = S3;
            else
            nextstate = S2;
        S3: if(a_in)
            nextstate = S1;
            else
            nextstate = S3;
    endcase
    end
endmodule
