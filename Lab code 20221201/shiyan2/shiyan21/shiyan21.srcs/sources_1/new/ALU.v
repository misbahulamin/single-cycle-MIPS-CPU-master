`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/18 06:06:15
// Design Name: 
// Module Name: ALU
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


module ALU(
     input wire [31:0] a,
     input wire [31:0] b,
     input wire [2:0] f,
     output reg [31:0] s
    );
    
    always @(*) begin
         case(f)
             3'b000: begin
                 s <= a + b;
             end
             3'b001: begin
                 s <= a - b;
             end
             3'b010: begin
                 s <= a & b;
             end
             3'b011: begin
                 s <= a | b;
             end
             3'b100: begin
                 s <= ~a;
             end
             3'b101: begin
                 s <= (a < b);
             end
             default: begin
                 s <= 32'b0;
             end
          endcase
      end
endmodule
