`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:08:34 05/23/2017 
// Design Name: 
// Module Name:    path 
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
module M_datapath(input clk,
					   input reset,
					  
					   input MIO_ready,
					   input IorD,
					   input IRWrite,
					   input [1:0] RegDst,
					   input RegWrite,
					   input [1:0]MemtoReg,
					   input ALUSrcA,
					  
					   input [1:0]ALUSrcB,
					   input [1:0]PCSource,
					   input PCWrite,
					   input PCWriteCond,	
					   input Branch,
					   input [2:0]ALU_operation,
					  
					  output [31:0]PC_Current,
					   input [31:0]data2CPU,
					  output [31:0]Inst,
					  output [31:0]data_out,
					  output [31:0]M_addr,
					  
					  output zero,
					  output overflow
					  );
	wire pc_ce;
	wire [31:0] ALUout_Q;
	wire [31:0] Imm_32;
	wire [31:0] MDR;
	wire [31:0] notuse;
	wire [4: 0] NotUse;
	wire [31:0] res;
	wire [4: 0] Wt_addr;
	wire [31:0] Wt_data;
   wire [31:0] rdata_A;
	wire [31:0] pc_next;
	wire [31:0] offset;
	wire [31:0] four;
	wire [31:0] branch_pc;
	wire [31:0] j_reg_r;
	wire [31:0] jump_addr;
	wire [31:0] ALU_A;
	wire [31:0] ALU_B;
   
	assign pc_ce = MIO_ready & (PCWrite | (PCWriteCond & (~(Branch ^ zero))));
	assign offset[31:0] = {Imm_32[29:0],2'b00};
	assign four[31:0] = 32'h00000004;
	assign branch_pc[31:0] = ALUout_Q[31:0];
	assign j_reg_r[31:0] = ALUout_Q[31:0];
	assign jump_addr[31:0] = {PC_Current[31:28], Inst[25:0], 2'b00};
	
   REG32  	  ALUOut(.CE(1'b1), 
							.clk(clk), 
							.D(res[31:0]), 
							.rst(1'b0), 
							.Q(ALUout_Q[31:0]));
   REG32  			IR(.CE(IRWrite), 
							.clk(clk), 
							.D(data2CPU[31:0]), 
							.rst(reset), 
							.Q(Inst[31:0]));
   REG32  	  regMDR(.CE(1'b1), 
							.clk(clk), 
							.D(data2CPU[31:0]), 
							.rst(1'b0), 
							.Q(MDR[31:0]));
   REG32  	  		PC(.CE(pc_ce), 
							.clk(clk), 
							.D(pc_next[31:0]), 
							.rst(reset), 
							.Q(PC_Current[31:0]));

   MUX4T1_32  		  pc_select(.I0(res[31:0]), 
										.I1(branch_pc[31:0]), 
										.I2(jump_addr[31:0]), 
										.I3(j_reg_r[31:0]), 
										.s(PCSource[1:0]), 
										.o(pc_next[31:0]));
										
   MUX4T1_5  	Wt_addr_select(.I0(Inst[20:16]), 
										.I1(Inst[15:11]), 
										.I2(5'b11111), 
										.I3(5'b00000), 
										.s(RegDst[1:0]), 
										.o(Wt_addr[4:0]));
										
   MUX2T1_32 		  ALU_dataA(.I0(PC_Current[31:0]), 
										.I1(rdata_A[31:0]), 
										.s(ALUSrcA), 
										.o(ALU_A[31:0]));
								
   MUX4T1_32  		  ALU_dataB(.I0(data_out[31:0]), 
										.I1(four[31:0]), 
										.I2(Imm_32[31:0]), 
										.I3(offset[31:0]), 
										.s(ALUSrcB[1:0]), 
										.o(ALU_B[31:0]));
										
   MUX2T1_32 	 M_addr_select(.I0(PC_Current[31:0]), 
										.I1(ALUout_Q[31:0]), 
										.s(IorD), 
										.o(M_addr[31:0]));
							 
   MUX4T1_32   Wt_data_select(.I0(ALUout_Q[31:0]), 
										.I1(MDR[31:0]), 
										.I2({Inst[15:0],16'h0000}), 	
										.I3(PC_Current[31:0]), 
										.s(MemtoReg[1:0]), 
										.o(Wt_data[31:0]));
							 
   ALU  							U1(.A(ALU_A[31:0]), 
										.ALU_operation(ALU_operation[2:0]), 
										.B(ALU_B[31:0]), 
										.overflow(overflow), 
										.res(res[31:0]), 
										.zero(zero));
								
   Regs  		   			U2(.clk(clk), 
										.L_S(RegWrite), 
										.rst(reset), 
										.R_addr_A(Inst[25:21]), 
										.R_addr_B(Inst[20:16]), 
										.Wt_addr(Wt_addr[4:0]), 
										.Wt_data(Wt_data[31:0]), 
										.rdata_A(rdata_A[31:0]), 
										.rdata_B(data_out[31:0]));
							
   Ext_32  		  			  ext(.imm_16(Inst[15:0]), 
										.Imm_32(Imm_32[31:0]));
	
endmodule
