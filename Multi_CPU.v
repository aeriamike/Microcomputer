`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:22 05/17/2016 
// Design Name: 
// Module Name:    Multi_CPU 
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
module Multi_CPU(	 input clk,
						 input reset,
						 input MIO_ready,
						output [31:0]PC_out,
						output [31:0]inst_out,
						output mem_w,
						output [31:0]Addr_out,
						output [31:0]Data_out,
						 input [31:0]Data_in,
						output CPU_MIO,
						 input INT,
						output [4:0]state
					  );
					  
	wire MemRead, MemWrite, MemRead_INV;
	wire zero, overflow;
	wire IorD, IRWrite, RegWrite, ALUSrcA, PCWrite, PCWriteCond;
	wire [1:0]RegDst;
	wire [1:0]MemtoReg;
	wire [1:0]ALUSrcB;
	wire [1:0]PCSource;
	wire [2:0]ALU_operation;
	M_datapath	  U11(.clk(clk),
							.reset(reset),
							.MIO_ready(MIO_ready),
							.IorD(IorD),
							.IRWrite(IRWrite),
							.RegDst(RegDst[1:0]),
							.RegWrite(RegWrite),
							.MemtoReg(MemtoReg[1:0]),
							.ALUSrcA(ALUSrcA),
							.ALUSrcB(ALUSrcB[1:0]),
							.PCSource(PCSource[1:0]),
							.PCWrite(PCWrite),
							.PCWriteCond(PCWriteCond),	
							.Branch(Branch),
							.ALU_operation(ALU_operation[2:0]),
							.PC_Current(PC_out[31:0]),
							.data2CPU(Data_in[31:0]),
							.Inst(inst_out[31:0]),
							.data_out(Data_out[31:0]),
							.M_addr(Addr_out[31:0]),
							.zero(zero),
							.overflow(overflow)
							);
	ctrl			  U12(.clk(clk),
							.reset(reset),
							.Inst_in(inst_out[31:0]),
							.zero(zero),
							.overflow(overflow),
							.MIO_ready(MIO_ready),
							.MemRead(MemRead),
							.MemWrite(MemWrite),
							.ALU_operation(ALU_operation[2:0]),
							.state_out(state[4:0]),
							.CPU_MIO(CPU_MIO),
							.IorD(IorD),
							.IRWrite(IRWrite),
							.RegDst(RegDst[1:0]),
							.RegWrite(RegWrite),
							.MemtoReg(MemtoReg[1:0]),
							.ALUSrcA(ALUSrcA),
							.ALUSrcB(ALUSrcB[1:0]),
							.PCSource(PCSource[1:0]),
							.PCWrite(PCWrite),
							.PCWriteCond(PCWriteCond),
							.Branch(Branch)
							);
	INV			myINV(.I(MemRead),
							.O(MemRead_INV)
							);
	AND2			myAND(.I0(MemRead_INV),
							.I1(MemWrite),
							.O(mem_w)
							);

endmodule
