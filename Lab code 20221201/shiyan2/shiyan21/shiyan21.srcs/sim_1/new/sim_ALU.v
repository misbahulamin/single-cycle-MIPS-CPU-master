`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/18 06:12:10
// Design Name: 
// Module Name: sim_ALU
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


module sim_ALU();
    reg [31:0] a=32'h18;
    reg [31:0] b=32'h11;
    reg [2:0]  f=3'b000;
    wire [31:0] s;
    ALU uut(.a(a),.b(b),.f(f),.s(s));
    initial begin
        #100 f=3'b001;
        #100 begin a=32'h6;b=32'h7;f=3'b000;end;
        #100 begin a=32'h6;b=32'h3;f=3'b001;end;
        #100 begin a=32'h6;b=32'h4;f=3'b010;end;
        #100 begin a=32'h6;b=32'h4;f=3'b011;end;
        #100 begin a=32'h6;b=32'h5;f=3'b100;end;
        #100 begin a=32'h6;b=32'h8;f=3'b101;end;
        #100 begin a=32'h6;b=32'h8;f=3'b110;end;
        #100 begin a=32'h6;b=32'h8;f=3'b111;end;
     end
endmodule
