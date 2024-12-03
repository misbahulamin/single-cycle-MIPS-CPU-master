`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/18 21:54:05
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
    input   clk,
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
    always @(posedge clk) 
    begin
       
                if (we) begin
                    rf[waddr]<= wdata;
            end 
    end
    assign rdata1 = (raddr1 == 5'h0) ? 32'h0 : rf[raddr1];
    assign rdata2 = (raddr2 == 5'h0) ? 32'h0 : rf[raddr2];
    
endmodule   
