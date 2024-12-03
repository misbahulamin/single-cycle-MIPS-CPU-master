`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/19 00:33:47
// Design Name: 
// Module Name: Rom
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


module Rom(
    input [6:0] address,
    input oe,
    output [31:0] dataromout,
    reg [31:0] romout
    );
    always @(*) begin
         if(oe)
            case(address[6:2])
            5'b00001:romout <= 32'h428c8;
            5'b00010:romout <= 32'h92008;
            5'b00011:romout <= 32'h63788;
            5'b01000:romout <= 32'h36389;
            5'b00100:romout <= 32'heeef8;
            5'b00101:romout <= 32'hbbcad;
            5'b00110:romout <= 32'h83665;
            5'b00111:romout <= 32'h8defc;
            5'b01000:romout <= 32'h9aade;
         default: romout <= 32'h0;
         endcase
         else romout <= 32'hzz;
         end
         assign dataromout = romout;
endmodule
