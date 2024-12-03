`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/23 18:47:25
// Design Name: 
// Module Name: two_input_nand
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


module two_input_nand(
    input wire[31:0] s,
    input wire[31:0] a,
    input wire[31:0] b,
    output reg[31:0] y
    );
    always @(*) begin
         case(s)
             32'h0:begin
                y <= a;
             end
             32'h1:begin
                y <= b;
             end
          endcase
      end         
endmodule
