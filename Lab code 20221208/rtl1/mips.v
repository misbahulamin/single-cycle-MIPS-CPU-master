`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/29 14:39:31
// Design Name: 
// Module Name: mips
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


module mips(
    input wire clk,rst,
    output wire we,
    output wire [31:0] pc,alu_result,mem_wdata,imm_extend,pc_next_jump,wdata,
    input wire [31:0] instr,mem_rdata
);
wire regdst,branch,regwrite,alusrc,jump,memtoreg,memwrite;
wire [2:0] alucontrol;
datapath datapath(
    .clk(clk),
    .rst(rst),
    .instr(instr),
    .mem_rdata(mem_rdata),
    .pc(pc),
    .alu_result(alu_result),
    .mem_wdata(mem_wdata),
    .imm_extend(imm_extend),
    .pc_next_jump(pc_next_jump),
    .wdata(wdata),
    .regdst(regdst),
    .branch(branch),
    .regwrite(regwrite),
    .alusrc(alusrc),
    .jump(jump),
    .memtoreg(memtoreg),
    .alucontrol(alucontrol)
);

controller controller(
    .op(instr[31:26]),
    .funct(instr[5:0]),
    .regdst(regdst),
    .branch(branch),
    .regwrite(regwrite),
    .alusrc(alusrc),
    .alucontrol(alucontrol),
    .memwrite(we),
    .jump(jump),
    .memtoreg(memtoreg)
);

endmodule
