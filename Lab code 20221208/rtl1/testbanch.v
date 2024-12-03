`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/29 18:57:38
// Design Name: 
// Module Name: testbanch
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


module testbanch();
    reg clk;
    reg rst;
    wire [31:0] pc,instr,mem_wdata,imm_extend,alu_result,wdata,pc_next_jump;
    wire we;
    top uut(clk,rst,pc,instr,mem_wdata,imm_extend,alu_result,wdata,pc_next_jump,we);

    initial begin
        rst <= 0;
        #20;
        rst <=1;
    end

    always begin
		clk <= 1;
		#10;
		clk <= 0;
		#10;
        
	
	end

    always @(negedge clk) begin
		if(we) begin
			/* code */
			if(alu_result === 84 & mem_wdata === 7) begin
				/* code */
				$display("Simulation succeeded");
				$stop;
			end else if(alu_result !== 80) begin
				/* code */
				$display("Simulation Failed");
				$stop;
			end
		end
	end
endmodule
