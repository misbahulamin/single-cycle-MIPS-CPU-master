`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/18 22:20:40
// Design Name: 
// Module Name: sim_regfile
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


module sim_regfile();
    reg [4:0] raddr1;
    reg [4:0] raddr2;
    reg [4:0] waddr;
    reg [31:0] wdata;
    reg clk;
    reg we;
    // Outputs
    wire [31:0] rdata1;
    wire [31:0] rdata2;
    // Instantiate the unit uder test (UUT)
    regfile uut(.raddr1(raddr1),.raddr2(raddr2),.waddr(waddr),.wdata(wdata),.clk(clk),.we(we),.rdata1(rdata1),.rdata2(rdata2));
    always begin
        #3 clk=~clk;
    end
    initial begin
    // Initialize inputs
        raddr1 = 5'b0;
        raddr2 = 5'b0;
        waddr = 5'b0;
        wdata = 32'h0;
        clk = 0;
        we = 0;
        // Wait 100ns for global reset to finish
        #10
            raddr1 = 5'b00001;
            raddr2 = 5'b00110;
            waddr = 5'b00001;
            wdata = 32'h00FE_8888;
            we = 1;
        #10
            raddr1 = 5'b00001;
            raddr2 = 5'b00110;
            waddr = 5'b00110;
            wdata = 32'h00FE_0EEE;
            we = 0;
        #10 we = 1;
        #5
            raddr2 = 5'b00111;
            raddr1 = 5'b00110;
            waddr = 5'b00010;
            wdata = 32'h00FE_1EEE;
        #10
            raddr2 = 5'b00010;
            raddr1 = 5'b00110;
            waddr = 5'b00011;
            wdata = 32'h00FE_2EEE;
        #10
            raddr2 = 5'b00010;
            raddr1 = 5'b00011;
            waddr = 5'b00100;
            wdata = 32'h00FE_3EEE;           
        #10
            raddr2 = 5'b00100;
            raddr1 = 5'b00011;
            waddr = 5'b00101;
            wdata = 32'h00FE_4EEE;
        #10
            raddr2 = 5'b00100;
            raddr1 = 5'b00101;
            waddr = 5'b00110;
            wdata = 32'h00FE_5EEE;
        #10
            raddr2 = 5'b00100;
            raddr1 = 5'b00110;
            waddr = 5'b00111;
            wdata = 32'h00FE_6EEE;           
   end                                
endmodule
