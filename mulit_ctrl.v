`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:20 10/06/2017 
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
				
				
	// Microprogramming section
	reg [4:0] state;
	reg [1:0] ALUop;
	
			
	//parameter IF: 0 		ID: 1	 	Mem_Exc: 3		Mem_RD: 3		LW_WB: 4		Mem_WD: 5		R_Exc: 6		R_WB: 7
	//Beq_Exc: 8		J_Exc: 9		I_Exc: 10		I_WB: 11 	Lui_WB: 12		Bne_Exc: 13		Jr_Exc: 14
	//Jal_Exc = 15 	Error: 16
			

	`define Datapath_signals {PCWrite, PCWriteCond, IorD, MemRead, MemWrite, IRWrite, MemtoReg, PCSource, ALUSrcB, ALUSrcA, RegWrite, RegDst, CPU_MIO, ALUop}

	parameter 	AND = 3'b000, OR = 3'b001, ADD = 3'b010, SUB = 3'b110,
					NOR = 3'b100,SLT = 3'b111, XOR = 3'b011, SRL = 3'b101;
	
	assign state_out = state;
	
	
	//checks the current state of instruction through the parameter "state"
	always @(posedge clk or posedge reset) begin
			if(reset == 1) state <= 0;
			else
				case(state)
					0:	if(MIO_ready) state <= 1;
							else state <= 0;
					1:	case(Inst_in[31:26])//check opcode
								6'b000000: if
												(Inst_in[5:0] == 6'b001000) state <= 14;
											  else 
												state <= 6;
								6'b100011: state <= 3;	//lw
								6'b101011: state <= 3;	//sw
								6'b000100: state <= 3;
								6'b000101: state <= 3;
								6'b000010: state <= 9;			//J
								6'b001000: state <= 10;		//addi
								6'b001100: state <= 10;		//andi
								6'b001101: state <= 10;		//ori
								6'b001110: state <= 10;		//xori
								6'b001010: state <= 10;		//slti
								6'b001111: state <= 12;
								6'b000011: state <= 15;
								default: state <= 16;
							endcase
					6: 	state <= 7;
					3:
							case(Inst_in[31:26])
								6'b100011: state <= 5;  	//lw
								6'b101011: state <= 5;		//sw
								default: state <= 16;
							endcase
							
							
					5: 	state <= 4;
					10:	state <= 11;
					
					//Goes back to the first state after the final step for each type of isntructions
					4: 	state <= 0;
					5: 	state <= 0;
					7:		state <= 0;
					8:		state <= 0;
					9:		state <= 0;
					
					11:	state <= 0;
					12:	state <= 0;
					13:	state <= 0;
					14:	state <= 0;
					15:	state <= 0;
					16: 	state <= 16;
					default: state <= 16;
				endcase
	end
	
    //implment signals in 18 bits to show what each of those control signals behaves
	
	always @* begin
		case(state)
			0:		begin `Datapath_signals <= 19'b10010_10000_0100_001_00;
								Branch = 0;
								ALU_operation <= ADD; end
			1:		begin `Datapath_signals <= 19'b00000_00000_1100_000_00;
								ALU_operation <= ADD; end
			2:	begin `Datapath_signals <= 19'b00000_00000_1010_000_00;
								ALU_operation <= ADD; end
			3:	begin `Datapath_signals <= 19'b00110_00000_0000_001_00;
								ALU_operation <= ADD; end
			4:	begin `Datapath_signals <= 19'b00000_00100_0001_000_00;
								ALU_operation <= ADD; end
			5:	begin `Datapath_signals <= 19'b00101_00000_0000_001_00;
								ALU_operation <= ADD; end
			6:	begin `Datapath_signals <= 19'b00000_00000_0010_000_10;
								case(Inst_in[5:0])                          //dealing with r types
									6'b100000: ALU_operation <= ADD;        //ALU varied by funct
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
			7:		begin `Datapath_signals <= 19'b00000_00000_0011_010_00;
								ALU_operation <= ADD; end
			8:	begin `Datapath_signals <= 19'b01000_00001_0010_000_01;
								Branch = 1;
								ALU_operation <= SUB; end
			9:	begin `Datapath_signals <= 19'b10000_00010_0000_000_00;
								ALU_operation <= ADD; end
			10:	begin `Datapath_signals <= 19'b00000_00000_1010_000_11;             //dealing with I types
								case(Inst_in[31:26])                                //ALU varied by opcodes
									6'b001000: ALU_operation <= ADD;                //ALUop is "11"
									6'b001100: ALU_operation <= AND;
									6'b001101: ALU_operation <= OR;
									6'b001110: ALU_operation <= XOR;
									6'b001010: ALU_operation <= SLT;
									default:   ALU_operation <= ADD;
								endcase
						end
			11:		begin `Datapath_signals <= 19'b00000_00000_1011_000_00;
								ALU_operation <= ADD; end
			12:	begin `Datapath_signals <= 19'b00000_01000_0001_000_00;
								ALU_operation <= ADD; end
			13:	begin `Datapath_signals <= 19'b01000_00001_0010_000_01;            //branch
								Branch = 0;
								ALU_operation <= SUB; end
			14:	begin `Datapath_signals <= 19'b10000_00011_0010_000_00;
								ALU_operation <= ADD; end
			15:	begin `Datapath_signals <= 19'b10000_01110_0111_100_00;
								ALU_operation <= ADD; end
			default:	begin `Datapath_signals <= 19'b10010_10000_0100_001_00;
								ALU_operation <= ADD; end
		endcase
	end
	
	
endmodule

