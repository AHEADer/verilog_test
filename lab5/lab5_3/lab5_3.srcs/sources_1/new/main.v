`timescale 1ns / 1ps

module register(
x0,clk,out_
);
    parameter WIDTH = 3;
    input [WIDTH-1:0] x0;
    input clk;
    output [WIDTH-1:0] out_; 
    reg [WIDTH-1:0] tmp;
    
    assign out_ = tmp;
    
    always @(posedge clk) begin
    tmp = x0;
    end
    
endmodule

module ROM_8x3 (ROM_data, ROM_addr);
    output [2:0] ROM_data;
    input [2:0] ROM_addr;
    reg [2:0] ROM [7:0]; // defining 8x3 ROM
    assign ROM_data = ROM[ROM_addr]; // reading ROM content at the address ROM_addr
    initial $readmemb ("ROM_data.txt", ROM, 0, 7); // load ROM content from ROM_data.txt file
endmodule

module ROM_8x3_2 (ROM_data, ROM_addr);
    output [2:0] ROM_data;
    input [2:0] ROM_addr;
    reg [2:0] ROM [7:0]; // defining 8x3 ROM
    assign ROM_data = ROM[ROM_addr]; // reading ROM content at the address ROM_addr
    initial $readmemb ("ROM_data2.txt", ROM, 0, 7); // load ROM content from ROM_data.txt file
endmodule

module main(
input clk, input reset, output [2:0] out,
output reg [2:0] state,
output [2:0] nextstate
    );
    wire [1:0] Rom_o;
    parameter S0=3'b000, S1=3'b001, S2=3'b010, S3=3'b011, S4=3'b100, S5=3'b101;
    ROM_8x3 Rm(out, state);
    ROM_8x3_2 Rm2(nextstate, state);
    
    initial
    begin
    
    end
    
    always @(posedge clk or posedge reset)
    if (reset)
        state = 3'b000;
    else
       state <= nextstate;
    
endmodule

