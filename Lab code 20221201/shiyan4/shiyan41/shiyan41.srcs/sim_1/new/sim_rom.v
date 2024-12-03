`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/19 00:44:23
// Design Name: 
// Module Name: sim_rom
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


module sim_rom();
    reg [6:0] address;
    reg oe;
    wire [31:0] dataromout;
    Rom uut(.address(address),.oe(oe),.dataromout(dataromout));
    initial begin
       address = 7'b0;
       #20; address = 7'b0000100;
       #20; address = 7'b0001000;
       #20; address = 7'b0001100;
       #20; address = 7'b0100000;
       #20; address = 7'b0011100;
    end
    initial begin
         oe =  0;
    end
    always begin
       #10; oe = ~ oe;
    end
endmodule
