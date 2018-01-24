`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:24:10 05/24/2016 
// Design Name: 
// Module Name:    MCPU_ctrl 
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
module MCPU_ctrl(input clk,
                 input reset,
                 input zero,
                 input overflow,
                 input MIO_ready,
                 input [31:0] inst_in,

                 output reg PCWrite,
                 output reg PCWriteCond,
                 output reg Branch,
                 output reg mem_w,
                 output reg CPU_MIO,
                 output reg IRWrite,
                 output reg IorD,
                 output reg RegWrite,
                 output reg [1:0] PCSource,
                 output reg [4:0] state_out,
                 output reg [3:0] ALU_Control,
                 output reg [1:0] ALUSrc_A,
                 output reg [1:0] ALUSrc_B,
                 output reg [1:0] DatatoReg,
                 output reg [1:0] RegDst
                );
    parameter AND = 4'b0000, OR = 4'b0001, XOR = 4'b0010, NOR = 4'b0011, SADD = 4'b0100, SSUB = 4'b0101, UADD = 4'b0110, USUB = 4'b0111, SLL = 4'b1000, SRL = 4'b1001, SRA = 4'b1010, SLT = 4'b1011, SLTU = 4'b1100;
    parameter IF = 5'b00000, ID = 5'b00001, EX_R = 5'b00010, EX_MEM = 5'b00011, EX_I = 5'b00100, EX_BEQ = 5'b00101, EX_BNE = 5'b00110, EX_J = 5'b00111, EX_JAL = 5'b01000, EX_JR = 5'b01001,EX_JALR = 5'b01010, MEM_RD = 5'b01011, MEM_WD = 5'b01100, WB_R = 5'b01101, WB_I = 5'b01110, WB_LW = 5'b01111, WB_LUI = 5'b10000, ERROR = 5'b11111;
    `define CPU_ctrl_signals {PCWrite, PCWriteCond, Branch, mem_w, CPU_MIO, IRWrite, IorD, RegWrite, PCSource, ALUSrc_A, ALUSrc_B, DatatoReg, RegDst}

    // 
    always @(posedge clk or posedge reset) begin
        if(reset == 1)
            state_out <= IF;
        else
            case(state_out)
                IF: begin
                    if(MIO_ready)
                        state_out <= ID;
                    else
                        state_out <= IF;
                end
                ID: begin
                    case(inst_in[31:26])
                        6'b000000: begin // R type
                            case(inst_in[5:0])
                                6'b100000: state_out <= EX_R;    // add
                                6'b100010: state_out <= EX_R;    // sub
                                6'b100100: state_out <= EX_R;    // and
                                6'b100101: state_out <= EX_R;    // or
                                6'b100110: state_out <= EX_R;    // xor
                                6'b100111: state_out <= EX_R;    // nor
                                6'b101010: state_out <= EX_R;    // slt
                                6'b000000: state_out <= EX_R;    // sll
                                6'b000010: state_out <= EX_R;    // srl
                                6'b001000: state_out <= EX_JR;   // jr
                                6'b001001: state_out <= EX_JALR; // jalr
                                default:   state_out <= ERROR;
                            endcase
                        end
                        6'b001000: state_out <= EX_I;    // addi
                        6'b001100: state_out <= EX_I;    // andi
                        6'b001101: state_out <= EX_I;    // ori
                        6'b001110: state_out <= EX_I;    // xori
                        6'b001111: state_out <= WB_LUI;  // lui
                        6'b100011: state_out <= EX_MEM;  // lw
                        6'b101011: state_out <= EX_MEM;  // sw
                        6'b000100: state_out <= EX_BEQ;  // beq
                        6'b000101: state_out <= EX_BNE;  // bne
                        6'b001010: state_out <= EX_I;    // slti
                        6'b000010: state_out <= EX_J;    // j
                        6'b000011: state_out <= EX_JAL; // jal
                        default:   state_out <= ERROR;
                    endcase
                end
                EX_R: begin
                    state_out <= WB_R;
                end
                EX_MEM: begin
                    case(inst_in[31:26])
                        6'b101011: state_out <= MEM_WD; // sw
                        6'b100011: state_out <= MEM_RD; // lw
                        default:   state_out <= ERROR;
                    endcase
                end
                EX_I: begin
                    state_out <= WB_I;
                end
                EX_BEQ: begin
                    state_out <= IF;
                end
                EX_BNE: begin
                    state_out <= IF;
                end
                EX_JR: begin
                    state_out <= IF;
                end
                EX_JAL: begin
                    state_out <= IF;
                end
                EX_J: begin
                    state_out <= IF;
                end
                EX_JALR: begin
                    state_out <= IF;
                end
                MEM_WD: begin
                    state_out <= IF;
                end
                MEM_RD: begin
                    state_out <= WB_LW;
                end
                WB_R: begin
                    state_out <= IF;
                end
                WB_I: begin
                    state_out <= IF;
                end
                WB_LW: begin
                    state_out <= IF;
                end
                WB_LUI: begin
                    state_out <= IF;
                end
                ERROR: begin
                    state_out <= IF;
                end
                default: begin
                    state_out <= IF;
                end
            endcase
    end

    // 
    always @* begin
        case(state_out)
            IF: begin
                `CPU_ctrl_signals = 18'b1000_0100_0001_0100_00;
                ALU_Control = SADD;
            end
            ID: begin
                `CPU_ctrl_signals = 18'b0000_0010_0001_1100_00;
                ALU_Control = SADD;
            end
            EX_R: begin
                if(inst_in[5:0] == 6'b000000 || inst_in[5:0] == 6'b000010) // sll or srl
                    `CPU_ctrl_signals = 18'b0000_0010_0010_1000_00;
                else
                    `CPU_ctrl_signals = 18'b0000_0010_0000_0000_00;
                case(inst_in[5:0])
                    6'b100000: ALU_Control = SADD; // add
                    6'b100010: ALU_Control = SSUB; // sub
                    6'b100100: ALU_Control = AND;  // and
                    6'b100101: ALU_Control = OR;   // or
                    6'b100110: ALU_Control = XOR;  // xor
                    6'b100111: ALU_Control = NOR;  // nor
                    6'b101010: ALU_Control = SLT;  // slt
                    6'b000000: ALU_Control = SLL;  // sll
                    6'b000010: ALU_Control = SRL;  // srl
                        
                endcase
            end
            EX_MEM: begin
                `CPU_ctrl_signals = 18'b0000_0000_0000_1000_00;
                ALU_Control = SADD;
            end
            EX_I: begin
                `CPU_ctrl_signals = 18'b0000_0000_0000_1000_00;
                case(inst_in[31:26])
                    6'b001000: ALU_Control = SADD; // addi 
                    6'b001100: ALU_Control = AND;  // andi
                    6'b001101: ALU_Control = OR;   // ori
                    6'b001110: ALU_Control = XOR;  // xori
                    6'b001010: ALU_Control = SLT;  // slti
                endcase
            end
            EX_BEQ: begin
                if(zero)
                    `CPU_ctrl_signals = 18'b0110_1000_0100_0000_00;
                else
                    `CPU_ctrl_signals = 18'b0100_1000_0100_0000_00;
                ALU_Control = SSUB;
            end
            EX_BNE: begin
                if(zero)
                    `CPU_ctrl_signals = 18'b0100_1000_0100_0000_00;
                else
                    `CPU_ctrl_signals = 18'b0110_1000_0100_0000_00;
                ALU_Control = SSUB;
            end
            EX_J: begin
                `CPU_ctrl_signals = 18'b1000_1000_1000_0000_00;
                // ALU_Control = ;
            end
            EX_JR: begin
                `CPU_ctrl_signals = 18'b1000_1000_1100_0000_00;
                // ALU_Control = ;
            end
            EX_JAL: begin
                `CPU_ctrl_signals = 18'b1000_1001_1000_0011_10;
                // ALU_Control = ;
            end
            EX_JALR: begin
                `CPU_ctrl_signals = 18'b1000_1001_1100_0011_10;
                // ALU_Control = ;
            end
            MEM_RD: begin
                `CPU_ctrl_signals = 18'b0000_0010_0000_0000_00;
                // ALU_Control = ;
            end
            MEM_WD: begin
                `CPU_ctrl_signals = 18'b0001_1010_0000_0000_00;
                // ALU_Control = ;
            end
            WB_R: begin
                `CPU_ctrl_signals = 18'b0000_1011_0000_0000_01;
                // ALU_Control = ;
            end
            WB_I: begin
                `CPU_ctrl_signals = 18'b0000_1001_0000_0000_00;
                // ALU_Control = ;
            end
            WB_LW: begin
                `CPU_ctrl_signals = 18'b0000_1001_0000_0001_00;
                // ALU_Control = ;
            end
            WB_LUI: begin
                `CPU_ctrl_signals = 18'b0000_1001_0000_0010_00;
                // ALU_Control = ;
            end
            ERROR: begin
                `CPU_ctrl_signals = 18'b0000_0000_0000_0000_00;
                ALU_Control = 4'b0000;
            end
            default: begin
                `CPU_ctrl_signals = 18'b0000_0000_0000_0000_00;
                ALU_Control = 4'b0000;
            end
        endcase
    end

endmodule
