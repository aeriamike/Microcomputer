`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:50:29 05/08/2017 
// Design Name: 
// Module Name:    add_32_4 
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
module add_32_4(input[31:0] a, 
				  input[31:0] b, 
				  output[31:0]c
    );
	
	assign c[31:0] = a[31:0] + 4;
	

endmodule
