`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:50:45 06/14/2017 
// Design Name: 
// Module Name:    microctrl 
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
module microctrl(

	input clk,
	input rst,
	input [5:0] opcode,
	output reg[17:0] out
    );
	 
	 reg[3:0] mpc;
	 
	 initial begin
		mpc=0;
		end
		
		always @* begin
			case(mpc)
				0: out = {16'h0851, 2'b11};
				1: out = {16'h1800, 2'b01};
				2: out = {16'h3000, 2'b10};
				3: out = {16'h00C0, 2'b11};
				4: out = {16'h0300, 2'b00};
				5: out = {16'h00A0, 2'b00};
				6: out = {16'hA000, 2'b11};
				7: out = {16'h0500, 2'b00};
				8: out = {16'h6006, 2'b00};
				9: out = {16'h0009, 2'b00};
				default: out = 0;
			 endcase
		end
		
		always @(posedge clk or posedge rst) begin
			if (rst==1)
				mpc = 0;
			else begin
				case(out[1:0])
					0: mpc = 0;
					3: mpc=mpc+1;
					1: case(opcode)
						6'b000000: mpc = 6; //R-type
						6'b100011: mpc = 2; //LW
						6'b101011: mpc = 2; //SW
						6'b000100: mpc = 8; //BEQ
						6'b000010: mpc = 9; //J
						default: mpc = 0;
					endcase
				2:case(opcode)
						6'b100011: mpc=3; //LW
						6'b101011: mpc=5; //SW
						default: mpc = 0;
					endcase
				endcase
			end
		end
endmodule
