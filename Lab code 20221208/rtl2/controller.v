`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/01 10:48:25
// Design Name: 
// Module Name: controller2
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


module controller(
    input wire [5:0] op,funct,
    output wire regdst,branch,regwrite,alusrc,memwrite,jump,memtoreg,
    output [2:0] alucontrol
    );
	wire [1:0] aluop;
	main_dec md(op,regdst,branch,regwrite,alusrc,memwrite,jump,memtoreg,aluop);
	alu_dec ad(funct,aluop,alucontrol);
endmodule

