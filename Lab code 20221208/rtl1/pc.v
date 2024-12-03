`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/07 11:04:10
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

module pc(clk,rst,pc_next,pc);  
input clk;//时钟
input rst;//是否重置地址。0-初始化PC，否则接受新地址       
input[31:0] pc_next;
output reg[31:0] pc;
initial begin
pc  <= 0;
end
always @(posedge clk or negedge rst)  
begin  
if (!rst) //如果为0则初始化PC，否则接受新地址
begin  
pc <= 0;  
end  
else   
begin
pc =  pc_next;  
end  
end  
endmodule
