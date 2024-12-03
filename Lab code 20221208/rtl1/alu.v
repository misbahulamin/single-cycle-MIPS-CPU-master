`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/02 14:55:59
// Design Name: 
// Module Name: alu
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
////////////////////////////////////////////////////////////////////////////////

module alu(
    input wire [31:0] a,
    input wire [31:0] b,
    input wire [2:0]  op,
    output reg [31:0] s,
    output wire zero
    );

    always @(*) begin
        case(op)
            3'b000:begin
                s<=a & b;
            end 
            3'b001:begin
                s<=a | b;
            end 
            3'b010:begin
                s<=a + b;
            end 
            3'b110:begin
                s<=a - b;
            end 
            3'b111:begin
                s<= (a < b);
            end 
            3'b011:begin
                s<= a ^ b; 
            end
            default:begin
                s<=32'b0;
            end
        endcase
    end
    assign zero = (s == 32'b0);
endmodule