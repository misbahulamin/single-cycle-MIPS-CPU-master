`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/28 16:36:16
// Design Name: 
// Module Name: datapath
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


module datapath(
input wire clk,rst,
input wire [31:0] instr,mem_rdata,
output wire [31:0] pc,alu_result,mem_wdata,imm_extend,wdata,pc_next_jump,
input wire regdst,branch,regwrite,alusrc,jump,memtoreg,
input wire [2:0] alucontrol
);

wire [31:0] pc_plus4,pc_next,rdata1,rdata2,alu_srcB,imm_sl2,pc_branch,instr_sl2;
wire [4:0] write2reg;
wire zero,pcsrc;

assign mem_wdata=rdata2;
assign pcsrc = zero & branch;

mux2 #(32) mux2_pc_next(.s(pcsrc),.a(pc_plus4),.b(pc_branch),.y(pc_next));

shift shift_jump(.a(instr),.y(instr_sl2));

mux2 #(32) mux2_pc_jump(.s(jump),.a(pc_next),.b({pc_plus4[31:28],instr_sl2[27:0]}),.y(pc_next_jump));

pc pc1(.clk(clk),.rst(rst),.pc_next(pc_next_jump),.pc(pc));

add add_pc_plus4(.a(pc),.b(32'h4),.y(pc_plus4));

shift shift(.a(imm_extend),.y(imm_sl2));

add add_pc_branch(.a(imm_sl2),.b(pc_plus4),.y(pc_branch));

signext signext(.a(instr[15:0]),.y(imm_extend));

mux2 #(32) mux2_wdata(.s(memtoreg),.a(alu_result),.b(mem_rdata),.y(wdata));

mux2 #(5) mux2_waddr(.s(regdst),.a(instr[20:16]),.b(instr[15:11]),.y(write2reg));

regfile regfile(.clk(clk),.rst(rst),.raddr1(instr[25:21]),.rdata1(rdata1),.raddr2(instr[20:16]),.rdata2(rdata2),
.we(regwrite),.waddr(write2reg),.wdata(wdata));


mux2 #(32) mux2_alu(.s(alusrc),.a(rdata2),.b(imm_extend),.y(alu_srcB));

alu alu(.a(rdata1),.b(alu_srcB),.op(alucontrol),.s(alu_result),.zero(zero));

endmodule