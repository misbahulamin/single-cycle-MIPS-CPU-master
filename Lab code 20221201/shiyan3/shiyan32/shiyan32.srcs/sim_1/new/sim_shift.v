`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/19 00:22:54
// Design Name: 
// Module Name: sim_shift
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


module sim_shift();
    reg [31:0] a=32'h0;
    wire [31:0] y;
    shift uut(.a(a),.y(y));
    initial begin
        #20; a=32'h5;
        #20; a=32'h9;
        #20; a=32'h46;
    end
endmodule
