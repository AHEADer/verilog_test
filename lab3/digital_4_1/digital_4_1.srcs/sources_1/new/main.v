`timescale 1ns / 1ps

module four_bits_binary_counter(
input d_in, c_in, b_in, a_in, Ld, Clr,M_in,Clk,
output reg Qd=0, Qc=0, Qb=1, Qa=0,
output Qcc_
    );
    reg [3:0] ori_num;
    reg Qcc = 0;
    assign Qcc_ = ~Qcc;
    
    always @(posedge Clk)
    begin
    
   
    if (~Clr)
    begin
    Qd<=0;Qc<=0;Qb<=0;Qa<=0;
    Qcc<=0;
    end else if (~Ld)
    begin
    Qd <= d_in; Qc<=c_in; Qb<=b_in; Qa=a_in;Qcc<=0;
    end
    else if(M_in)
    begin
    {Qcc, Qd, Qc, Qb, Qa} = {0, Qd, Qc, Qb, Qa} + 1; 
    end else
    begin
        {Qcc, Qd, Qc, Qb, Qa} = {0, Qd, Qc, Qb, Qa} - 1;
    end
    end
endmodule

module eight_counter_with_initial_two(
input Clk,M_in,
output result,Qd, Qc, Qb, Qa
);
    reg Q8 = 0;
    assign result = ~Q8;
    assign Ld = (M_in&Qd&Qa) | (~M_in&~Qd&~Qc&~Qa);
    
    
    four_bits_binary_counter test(.d_in(1^M_in), .c_in(0), .b_in(0^M_in), .a_in(1^M_in),
          .Ld(~Ld), .Clr(1), .M_in(M_in), .Clk(Clk),
        .Qd(Qd), .Qc(Qc), .Qb(Qb), .Qa(Qa), .Qcc_(Qcc));
    
     always @(posedge Clk)
     begin
     if(Ld)
        Q8<=1;
     else
        Q8<=0;
     
     end
endmodule
