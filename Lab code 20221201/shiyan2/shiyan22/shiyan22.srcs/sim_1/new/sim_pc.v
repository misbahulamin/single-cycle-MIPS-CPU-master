`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/18 19:55:55
// Design Name: 
// Module Name: sim_pc
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


module sim_pc();
    reg clk;
    reg rst;
    reg [31:0] pc_next;
    wire [31:0] pc;
    pc uut(.clk(clk),.rst(rst),.pc_next(pc_next),.pc(pc));
    initial begin
         clk=0;
         rst=0;
         pc_next=32'h8;
         #100;
    end
    always #20 clk=~clk;
    always #20 rst=~rst;
endmodule
