`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:34:21 05/08/2017 
// Design Name: 
// Module Name:    DataMem 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DataMem( addr, datain, dataout, clk, rst

    );
	 input clk;
	 input rst;
	 
	 input[31:0] addr;
	 input[31:0] datain;
	 output reg[31:0] dataout;
	 
	 reg [7:0] memory [0:63];
	 initial 
	 begin;
	  dataout = 0;
	 end
	 
	 always@(negedge clk) 
	 begin
	 
	 if(rst)
	 begin
	  memory[addr+3] = datain[31:24]; //使用对小端的模式，这里已经更改错误乘4的错误，谢谢指出
          memory[addr+2] = datain[23:16];
          memory[addr+1] = datain[15:8];
          memory[addr] = datain[7:0];
      end 
		else 
			begin // 0 为 读
          dataout[31:24] = memory[addr+3];
          dataout[23:16] = memory[addr+2];
          dataout[15:8] = memory[addr+1];
          dataout[7:0] = memory[addr];
      end
    end
	 
	 
	 

endmodule
