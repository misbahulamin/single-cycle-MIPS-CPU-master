`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/01 10:48:51
// Design Name: 
// Module Name: main_dec
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


module main_dec(
    input wire [5:0] op,
    output wire regdst,branch,regwrite,alusrc,memwrite,jump,memtoreg,
    output wire [1:0] aluop
    );
    reg[8:0] controls;
    assign {regwrite,regdst,alusrc,branch,memwrite,memtoreg,jump,aluop} = controls;
	always @(*) begin
		case (op)
			6'b000000:controls <= 9'b110000010;//R-TYRE
			6'b100011:controls <= 9'b101001000;//LW
			6'b101011:controls <= 9'b001010000;//SW
			6'b000100:controls <= 9'b000100001;//BEQ
			6'b001000:controls <= 9'b101000000;//ADDI
			6'b000010:controls <= 9'b000000100;//J
			default:  controls <= 9'b000000000;//illegal op
		endcase
	end
endmodule

