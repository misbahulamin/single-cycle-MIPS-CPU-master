`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/07 14:44:09
// Design Name: 
// Module Name: regfile
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

             
module regfile(
    input   clk,rst,
    input  [ 4:0] raddr1,
    output [31:0] rdata1,
    input  [ 4:0] raddr2,
    output [31:0] rdata2,
    input   we,       
    input  [ 4:0] waddr,
    input  [31:0] wdata
);
    reg [31:0] rf[31:0];
    integer i;
    always @(posedge clk or negedge rst) 
    begin
        if(!rst)
        begin
            for(i=0;i<32;i=i+1) rf[i]<=0;
        end
        else
            begin
                if (we) 
                    rf[waddr]<=wdata;
            end 
    end
    assign rdata1 = (raddr1 != 0) ? rf[raddr1] : 0;
    assign rdata2 = (raddr2 != 0) ? rf[raddr2] : 0;
endmodule   