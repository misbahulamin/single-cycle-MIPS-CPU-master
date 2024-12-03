`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/10 18:02:55
// Design Name: 
// Module Name: ram
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


module ram(clk,we,addr,indata,outdata);
input clk,we;
input [31:0] indata;
input [9:0] addr;
output  [31:0]outdata;
reg [31:0] ram[1023:0];
integer i;
initial begin
    for(i=0;i<1024;i=i+1) 
       ram[i]=32'b0;
end
always@(posedge clk)
if(we) begin
    ram[addr]<=indata;
end
assign outdata=ram[addr];
endmodule
