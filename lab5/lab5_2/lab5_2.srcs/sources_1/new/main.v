`timescale 1ns / 1ps

module moore_3processes(input clk, input reset, input[1:0] a_in, output reg parity,
output reg[2:0] state, nextstate
);
    //reg[2:0] state, nextstate;
    parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100, S5=3'b101, S6=3'b110, S7=3'b111;
    always @(posedge clk or posedge reset) // always block to update state
    if (reset)
    state <= S0;
    else
    state <= nextstate;
    always @(state) // always block to compute output
    begin
    case(state)
        S0: parity = 0;
        //S1: parity = parity;
        //S2: parity = parity;
        //S3: parity = parity;
        S4: parity = 0;
        S5: parity = 1;
        S6: parity = ~parity;
        //S7:
    endcase
    end
    always @(state or a_in) // always block to compute nea_intstate
    begin
    nextstate = S0;
    case(state)
        S0: if(a_in==1)
            nextstate = S1;
            else if(a_in==2)
            nextstate = S2;
            else if(a_in==3)
            nextstate = S3;
        S1: if(a_in==0)
            nextstate = S0;
            else if(a_in==1)
            nextstate = S1;
            else if(a_in==2)
            nextstate = S2;
            else if(a_in==3)
            nextstate = S3;
        S2: if(a_in==0)
            nextstate = S6;
            else if(a_in==1)
            nextstate = S1;
            else if(a_in==2)
            nextstate = S2;
            else if(a_in==3)
            nextstate = S3;
        S3: if(!a_in)
            nextstate = S5;
            else if(a_in==1)
            nextstate = S1;
            else if(a_in==2)
            nextstate = S2;
            else if(a_in==3)
            nextstate = S3;
        S4: if(a_in==1)
            nextstate = S1;
            else if(a_in==2)
            nextstate = S2;
            else if(a_in==3)
            nextstate = S3;
        S5: if(a_in==1)
            nextstate = S1;
            else if(a_in==2)
            nextstate = S2;
            else if(a_in==3)
            nextstate = S3;            
        S6: if(a_in==0)
            nextstate = S7;
            else if(a_in==1)
            nextstate = S1;
            else if(a_in==2)
            nextstate = S2;
            else if(a_in==3)
            nextstate = S3;
        S7: if(a_in==0)
            nextstate = S7;
            else if(a_in==1)
            nextstate = S1;
            else if(a_in==2)
            nextstate = S2;
            else if(a_in==3)
            nextstate = S3;
    endcase
    end
endmodule
