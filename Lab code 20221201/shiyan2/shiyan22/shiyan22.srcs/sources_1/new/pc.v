`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/18 19:51:22
// Design Name: 
// Module Name: pc
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


module pc(
    input wire clk,
    input wire rst,
    input [31:0] pc_next,
    output reg [31:0] pc
    );
    initial begin
        pc <= 0;
    end
    always @(posedge clk or negedge rst)
        begin
        if (!rst) begin
        pc <= 0;
        end
        else begin
        pc <= pc_next;
        end
     end
endmodule
