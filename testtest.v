`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:05:09 06/14/2017
// Design Name:   microctrl
// Module Name:   F:/newbs/OExp12_IP2MCPU/testtest.v
// Project Name:  OExp12_IP2MCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: microctrl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testtest;

	// Inputs
	reg clk;
	reg rst;
	reg [5:0] opcode;

	// Outputs
	wire [17:0] out;

	// Instantiate the Unit Under Test (UUT)
	microctrl uut (
		.clk(clk), 
		.rst(rst), 
		.opcode(opcode), 
		.out(out)
	);

	initial begin
	   clk = 0;
		rst = 0;
		opcode = 6'b000010;

		// Wait 100 ns for global reset to finish
		#100;
		
		
		// Initialize Inputs
		clk = 1;
		rst = 0;
		opcode = 6'b000010;

		// Wait 100 ns for global reset to finish
		#50;
      
		
		clk = 0;
		rst = 0;
		opcode = 6'b000010;



		// Wait 100 ns for global reset to finish
		#50;
		
		clk = 1;
		rst = 0;
		opcode = 6'b000010;



		// Wait 100 ns for global reset to finish
		#50;
		
		clk = 0;
		rst = 0;
		opcode =6'b000010;



		// Wait 100 ns for global reset to finish
		#50;
		
		clk = 1;
		rst = 0;
		opcode = 6'b000010;

		// Wait 100 ns for global reset to finish
		#50;
		
		clk = 0;
		rst = 0;
		opcode = 6'b000010;

		// Wait 100 ns for global reset to finish
		#50;
		
		clk = 1;
		rst = 0;
		opcode = 6'b000010;

		// Wait 100 ns for global reset to finish
		#50;


		clk = 0;
		rst = 0;
		opcode = 6'b000010;

		// Wait 100 ns for global reset to finish
		#50;
		
		clk = 1;
		rst = 0;
		opcode = 6'b000010;

		// Wait 100 ns for global reset to finish
		#50;
		
		clk = 0;
		rst = 0;
		opcode = 6'b000010;

		// Wait 100 ns for global reset to finish
		#50;
		
		clk = 1;
		rst = 0;
		opcode = 6'b000010;

		// Wait 100 ns for global reset to finish
		#50;
	
	
	   clk = 0;
		rst = 0;
		opcode = 6'b000010;

		// Wait 100 ns for global reset to finish
		#50;
		
		clk = 1;
		rst = 0;
		opcode = 6'b000010;

		// Wait 100 ns for global reset to finish
		#50;
		
		clk = 0;
		rst = 0;
		opcode = 6'b000010;

		// Wait 100 ns for global reset to finish
		#50;
		
		clk = 1;
		rst = 0;
		opcode = 6'b000010;

		// Wait 100 ns for global reset to finish
		#50;

	end
      
endmodule

