`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/19 01:09:33
// Design Name: 
// Module Name: sim_ram
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


module sim_ram();
    reg clk;
    reg ena;
    reg wena;
    reg [6:0] addr;
    reg [31:0] data_in;
    wire [31:0] data_out;
    Ram uut (.clk(clk),.ena(ena),.wena(wena),.addr(addr),.data_in(data_in),.data_out(data_out));
    integer count = 0;
    always begin
       #50;
       clk = ~clk;
       end
    initial begin
       //count <= 0;
       clk <= 0;
       ena <= 0;
       wena <= 0;
       addr <= 0;
       data_in <= 32'h345;
       #100;
       addr <= 5'h1f;
       #100;
       count <= 0;
       addr <= 7'b0;
       #100;
       while(count<31)
       begin
           ena <= 1;
           wena <= 1;
           #80;
           wena <= 0;
           #20;
           addr <= addr+1;
           count <= count+1;
       end
       $stop;
    end
endmodule
