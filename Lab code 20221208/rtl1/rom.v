`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/10 17:12:40
// Design Name: 
// Module Name: rom
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


module rom(
    input [31:0] addr,
    output [31:0] data
    );
    reg[31:0] romdata;
    always @(*)
    case(addr[31:2])
    5'h0:romdata=32'h20020005;
    5'h1:romdata=32'h2003000c;
    5'h2:romdata=32'h2067fff7;
    5'h3:romdata=32'h00e22025;
    5'h4:romdata=32'h00642824;
    5'h5:romdata=32'h00a42820;
    5'h6:romdata=32'h10a7000a;
    5'h7:romdata=32'h0064202a;
    5'h8:romdata=32'h10800001;
    5'h9:romdata=32'h20050000;
    5'ha:romdata=32'h00e2202a;
    5'hb:romdata=32'h00853820;
    5'hc:romdata=32'h00e23822;
    5'hd:romdata=32'hac670044;
    5'he:romdata=32'h8c020050;
    5'hf:romdata=32'h08000011;
    5'h10:romdata=32'h20020001;
    5'h11:romdata=32'hac020054;
    5'h12:romdata=32'h00441826;
    //New Instruction
    5'h0: romdata = 32'h00000020;
    5'h6: romdata = 32'h20020005;
    5'hE: romdata = 32'h00000020;
    5'hB: romdata = 32'h10000004;
    5'hD: romdata = 32'h0000002A;
    5'h2: romdata = 32'h00000022; // sub rd, rs, rt
    5'h12: romdata = 32'hAC220054; // sw rt, offset(base)
    5'h8: romdata = 32'h8C220004; // lw rt, offset(base)
    5'h11: romdata = 32'h00000026; // xor rd, rs, rt
    5'hF: romdata = 32'h00000024; // and rd, rs, rt
    5'h10: romdata = 32'h08000010; // jmp target
    5'h3: romdata = 32'h00e22025; // or $a0, $a3, $v0
    
    default:romdata=32'h0;
    endcase
    assign data=romdata;
    
endmodule