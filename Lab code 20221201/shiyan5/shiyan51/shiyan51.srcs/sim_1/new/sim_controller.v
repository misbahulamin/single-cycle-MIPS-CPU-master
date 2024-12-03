`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/29 04:43:18
// Design Name: 
// Module Name: sim_controller
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


module sim_controller();
    reg [5:0] op = 6'b0;
    reg [5:0] funct=6'b0;
    reg zero=0;
    wire regwrite;
    wire regdst;
    wire alusrc;
    wire memwrite;
    wire memtoreg;
    wire jump;
    wire pcsrc;
    wire [2:0] alucontrol;
    controller uut(.op(op),.funct(funct),.zero(zero),.regwrite(regwrite),.regdst(regdst),.alusrc(alusrc),.memwrite(memwrite),.memtoreg(memtoreg),.jump(jump),.pcsrc(pcsrc),.alucontrol(alucontrol));
    initial begin
       #120; op<=6'b000000;
            #20; funct=6'b100000;
            #20; funct=6'b100010;
            #20; funct=6'b100100;
            #20; funct=6'b100101;
            #20; funct=6'b101010;
            #20; funct=6'b111111;
       #20;  op<=6'b100011;
            funct=6'b0;
       #20;  op<=6'b101011;
            funct=6'b0;
       #40;  op<=6'b000100;
            funct=6'b0;
            #20; zero=0;
            #20; zero=1;
       #20;  op<=6'b001000;
           funct=6'b0;
       #20;  op<=6'b000010;
           funct=6'b0; 
       #20;  op<=6'b000101;
    end  
endmodule
