`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/23 18:52:16
// Design Name: 
// Module Name: sim_two_input_nand
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


module sim_two_input_nand();
       reg [31:0] a;
       reg [31:0] b;
       reg [31:0] s;
       wire [31:0] y;
       two_input_nand uut(.a(a), .b(b), .s(s), .y(y));
       always begin
          a=32'h6;b=32'h2;s=32'h0;#100;
          a=32'h34;b=32'h56;s=32'h1;#100;
          a=32'h8;b=32'h3;s=32'h1;#100;
          a=32'h45;b=32'h87;s=32'h0;#100;
          $finish;
          end
endmodule
