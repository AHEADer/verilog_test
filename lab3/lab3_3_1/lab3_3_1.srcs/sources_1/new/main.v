`timescale 1ns / 1ps


module ROM_4x2 (ROM_data, ROM_addr);
    output [1:0] ROM_data;
    input [1:0] ROM_addr;
    reg [1:0] ROM [3:0]; // defining 4x2 ROM
    assign ROM_data = ROM[ROM_addr]; // reading ROM content at the address ROM_addr
    initial $readmemb ("ROM_data.txt", ROM, 0, 3); // load ROM content from ROM_data.txt file
endmodule
