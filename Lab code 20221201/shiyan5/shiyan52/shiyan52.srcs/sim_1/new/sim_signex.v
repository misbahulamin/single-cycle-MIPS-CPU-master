`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/29 05:09:57
// Design Name: 
// Module Name: sim_signex
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


module sim_signex( );
    reg [15:0] a=16'h0;
    wire [31:0] y;
    signex uut(.a(a),.y(y));
    initial begin
        #20; a=16'h3;
        #20; a=16'h9;
        #20; a=16'h888e;
    end
endmodule
