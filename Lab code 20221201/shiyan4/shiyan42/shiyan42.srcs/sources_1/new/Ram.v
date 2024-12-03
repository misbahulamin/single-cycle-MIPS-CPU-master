`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/19 01:00:18
// Design Name: 
// Module Name: Ram
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


module Ram(
    input clk, //�洢��ʱ���źţ�������ʱ��ram�ڲ�д������
    input ena, //�洢����Ч�źţ��ߵ�ƽʱ�洢�������У��������z
    input wena, //�洢����д��Ч�źţ��ߵ�ƽΪд��Ч���͵�ƽΪ����Ч����enaͬʱ��Чʱ�ſɶԴ洢�����ж�д
    input [6:0] addr,    //�����ַ��ָ�����ݶ�д�ĵ�ַ
    input [31:0] data_in,   //�洢��д������ݣ���CLK������ʱ��д��
    output [31:0] data_out  //�洢������������
    );
    reg [31:0] ram [31:0];
    always @(posedge clk)
    begin
         if (ena & wena)  //CLK ena wena ͬʱ��Ч��д��
              ram[addr] <= data_in;
    end
    assign data_out = (ena & ~wena) ? ram[addr] : 32'hz;   //ena��  wena�� ��
 
endmodule
