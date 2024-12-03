`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/18 05:56:26
// Design Name: 
// Module Name: sim_Add
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


module sim_Add();
    reg [31:0] pc=32'h0;
    reg [31:0] A=32'h4;
    wire [31:0] pc_next;
    Add uut(.pc(pc),.A(A),.pc_next(pc_next));
    initial begin
       #200 begin pc=32'h6;A=32'h4;end;
       #200 begin pc=32'h8;A=32'h4;end;
       #200 begin pc=32'he;A=32'h4;end;
       end
endmodule
