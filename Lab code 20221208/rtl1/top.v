`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/29 14:39:49
// Design Name: 
// Module Name: top
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


module top(
    input wire clk,rst,
    output wire [31:0] pc,instr,mem_wdata,imm_extend,alu_result,wdata,pc_next_jump,
    output we
    );

wire [31:0] mem_rdata;
mips mips(
    .clk(clk),
    .rst(rst),
    .we(we),
    .pc(pc),
    .alu_result(alu_result),
    .mem_wdata(mem_wdata),
    .imm_extend(imm_extend),
    .pc_next_jump(pc_next_jump),
    .wdata(wdata),
    .instr(instr),
    .mem_rdata(mem_rdata)
);

rom rom(
    .addr(pc),
    .data(instr)
);

ram ram(
    .clk(clk),
    .we(we),
    .addr(alu_result[9:0]),
    .indata(mem_wdata),
    .outdata(mem_rdata)
);
endmodule
