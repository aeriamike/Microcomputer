`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:34:18 05/06/2017 
// Design Name: 
// Module Name:    InstMem 
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
module InstMem( pc, instr
    );
	 input[31:0] pc;
	 output [31:0] instr;
	 reg [31:0] mem [0:64];
    initial begin
        $readmemb("my_test_rom.txt", mem);
   end

    always@(pc) begin
            instr <= mem[pc >> 2];
            //$display("the instruction now is %d", instruction);
        end


endmodule
