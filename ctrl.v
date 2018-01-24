`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:43:05 05/25/2017 
// Design Name: 
// Module Name:    ctrl 
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
module ctrl(input  clk,
				input  reset,
				input  [31:0] Inst_in,
				input  zero,
				input  overflow,
				input  MIO_ready,
				output reg MemRead,
				output reg MemWrite,
				output reg[2:0]ALU_operation,
				output [4:0]state_out,
				
				output reg CPU_MIO,
				output reg IorD,
				output reg IRWrite,
				output reg [1:0]RegDst,
				output reg RegWrite,
				output reg [1:0]MemtoReg,
				output reg ALUSrcA,
				output reg [1:0]ALUSrcB,
				output reg [1:0]PCSource,
				output reg PCWrite,
				output reg PCWriteCond,
				output reg Branch
				);
				
	reg [4:0] state;
	reg [1:0] ALUop;
	parameter 	IF = 5'b00000, ID = 5'b00001, Mem_Exc = 5'b00010, Mem_RD = 5'b00011,
					LW_WB = 5'b00100, Mem_WD = 5'b00101, R_Exc = 5'b00110, R_WB = 5'b00111,
					Beq_Exc = 5'b01000, J_Exc = 5'b01001, I_Exc = 5'b01010, I_WB = 5'b01011,
					Lui_WB = 5'b01100,Bne_Exc = 5'b01101, Jr_Exc = 5'b01110, Jal_Exc = 5'b01111, 
					Error = 5'b11111;

	`define Datapath_signals {PCWrite, PCWriteCond, IorD, MemRead, MemWrite, IRWrite, MemtoReg, PCSource, ALUSrcB, ALUSrcA, RegWrite, RegDst, CPU_MIO, ALUop}
//	`define Datapath_signals {PCWrite, PCWriteCond, IorD, MemRead, MemWrite,
//	                          IRWrite, MemtoReg, PCSource,
//									  ALUSrcB, ALUSrcA, RegWrite,
//									  RegDst, CPU_MIO,
//									  ALUop}
	
	parameter 	valueIF = 19'b10010_10000_0100_001_00,
					valueID = 19'b00000_00000_1100_000_00,
			 valueMem_Exc = 19'b00000_00000_1010_000_00,
			  valueMem_RD = 19'b00110_00000_0000_001_00,
			   valueLW_WB = 19'b00000_00100_0001_000_00,
			  valueMem_WD = 19'b00101_00000_0000_001_00,
			   valueR_Exc = 19'b00000_00000_0010_000_10,
				 valueR_WB = 19'b00000_00000_0011_010_00,
		  	 valueBeq_Exc = 19'b01000_00001_0010_000_01,
			   valueJ_Exc = 19'b10000_00010_0000_000_00,
				valueI_Exc = 19'b00000_00000_1010_000_11,
				 valueI_WB = 19'b00000_00000_1011_000_00,
			  valueLui_WB = 19'b00000_01000_0001_000_00,
			 valueBne_Exc = 19'b01000_00001_0010_000_01,
			  valueJr_Exc = 19'b10000_00011_0010_000_00,
			 valueJal_Exc = 19'b10000_01110_0111_100_00;
			 
	parameter 	AND = 3'b000, OR = 3'b001, ADD = 3'b010, SUB = 3'b110,
					NOR = 3'b100,SLT = 3'b111, XOR = 3'b011, SRL = 3'b101;
	
	assign state_out = state;
	
//IF = 5'b00000, ID = 5'b00001, Mem_Exc = 5'b00010, Mem_RD = 5'b00011,
//LW_WB = 5'b00100, Mem_WD = 5'b00101, R_Exc = 5'b00110, R_WB = 5'b00111,
//Beq_Exc = 5'b01000, J_Exc = 5'b01001, I_Exc = 5'b01010, I_WB = 5'b01011,
//Lui_WB = 5'b01100, Bne_Exc = 5'b01101, Jr_Exc = 5'b01110, Jal_Exc = 5'b01111, 
//Error = 5'b11111;

	always @(posedge clk or posedge reset) begin
			if(reset == 1) state <= IF;
			else
				case(state)
					IF:	if(MIO_ready) state <= ID;
							else state <= IF;
					ID:	case(Inst_in[31:26])
								6'b000000: if(Inst_in[5:0] == 6'b001000) state <= Jr_Exc;
											  else state <= R_Exc;
								6'b100011: state <= Mem_Exc;	//lw
								6'b101011: state <= Mem_Exc;	//sw
								6'b000100: state <= Beq_Exc;
								6'b000101: state <= Bne_Exc;
								6'b000010: state <= J_Exc;
								6'b001000: state <= I_Exc;		//addi
								6'b001100: state <= I_Exc;		//andi
								6'b001101: state <= I_Exc;		//ori
								6'b001110: state <= I_Exc;		//xori
								6'b001010: state <= I_Exc;		//slti
								6'b001111: state <= Lui_WB;
								6'b000011: state <= Jal_Exc;
								default: state <= Error;
							endcase
					R_Exc: 	state <= R_WB;
					Mem_Exc:
							case(Inst_in[31:26])
								6'b100011: state <= Mem_RD;	//lw
								6'b101011: state <= Mem_WD;		//sw
								default: state <= Error;
							endcase
					Mem_RD: 	state <= LW_WB;
					LW_WB: 	state <= IF;
					Mem_WD: 	state <= IF;
					R_WB:		state <= IF;
					Beq_Exc:	state <= IF;
					J_Exc:	state <= IF;
					I_Exc:	state <= I_WB;
					I_WB:		state <= IF;
					Lui_WB:	state <= IF;
					Bne_Exc:	state <= IF;
					Jr_Exc:	state <= IF;
					Jal_Exc:	state <= IF;
					Error: 	state <= Error;
					default: state <= Error;
				endcase
	end
	
//IF = 5'b00000, ID = 5'b00001, Mem_Exc = 5'b00010, Mem_RD = 5'b00011,
//LW_WB = 5'b00100, Mem_WD = 5'b00101, R_Exc = 5'b00110, R_WB = 5'b00111,
//Beq_Exc = 5'b01000, J_Exc = 5'b01001, I_Exc = 5'b01010, I_WB = 5'b01011,
//Lui_WB = 5'b01100, Bne_Exc = 5'b01101, Jr_Exc = 5'b01110, Jal_Exc = 5'b01111, 
//Error = 5'b11111;

	always @* begin
		case(state)
			IF:		begin `Datapath_signals <= valueIF;
								Branch = 0;
								ALU_operation <= ADD; end
			ID:		begin `Datapath_signals <= valueID;
								ALU_operation <= ADD; end
			Mem_Exc:	begin `Datapath_signals <= valueMem_Exc;
								ALU_operation <= ADD; end
			Mem_RD:	begin `Datapath_signals <= valueMem_RD;
								ALU_operation <= ADD; end
			LW_WB:	begin `Datapath_signals <= valueLW_WB;
								ALU_operation <= ADD; end
			Mem_WD:	begin `Datapath_signals <= valueMem_WD;
								ALU_operation <= ADD; end
			R_Exc:	begin `Datapath_signals <= valueR_Exc;
								case(Inst_in[5:0])
									6'b100000: ALU_operation <= ADD;
									6'b100010: ALU_operation <= SUB;
									6'b100100: ALU_operation <= AND;
									6'b100101: ALU_operation <= OR;
									6'b100110: ALU_operation <= XOR;
									6'b100111: ALU_operation <= NOR;
									6'b101010: ALU_operation <= SLT;
									6'b000010: ALU_operation <= SRL;
									default:   ALU_operation <= ADD;
								endcase
						end
			R_WB:		begin `Datapath_signals <= valueR_WB;
								ALU_operation <= ADD; end
			Beq_Exc:	begin `Datapath_signals <= valueBeq_Exc;
								Branch = 1;
								ALU_operation <= SUB; end
			J_Exc:	begin `Datapath_signals <= valueJ_Exc;
								ALU_operation <= ADD; end
			I_Exc:	begin `Datapath_signals <= valueI_Exc;
								case(Inst_in[31:26])
									6'b001000: ALU_operation <= ADD;
									6'b001100: ALU_operation <= AND;
									6'b001101: ALU_operation <= OR;
									6'b001110: ALU_operation <= XOR;
									6'b001010: ALU_operation <= SLT;
									default:   ALU_operation <= ADD;
								endcase
						end
			I_WB:		begin `Datapath_signals <= valueI_WB;
								ALU_operation <= ADD; end
			Lui_WB:	begin `Datapath_signals <= valueLui_WB;
								ALU_operation <= ADD; end
			Bne_Exc:	begin `Datapath_signals <= valueBne_Exc;
								Branch = 0;
								ALU_operation <= SUB; end
			Jr_Exc:	begin `Datapath_signals <= valueJr_Exc;
								ALU_operation <= ADD; end
			Jal_Exc:	begin `Datapath_signals <= valueJal_Exc;
								ALU_operation <= ADD; end
			default:	begin `Datapath_signals <= valueIF;
								ALU_operation <= ADD; end
		endcase
	end
	
	
endmodule
