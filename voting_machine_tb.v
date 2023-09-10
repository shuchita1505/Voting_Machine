`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:44:37 06/06/2023
// Design Name:   voting_machine
// Module Name:   C:/.Xilinx/projrcts/shuchita_bhutani/shuchita_try2_tb.v
// Project Name:  voting_machine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: voting_machine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rutvik_try2_tb;

	// Inputs
	reg clk;
	reg rst;
	reg button1;
	reg button2;
	reg button3;
	reg button4;

	// Outputs
	wire led1;
	wire led2;
	wire led3;
	wire led4;
	wire [32:0]count_total;
	wire [32:0]count1;
	wire [32:0]count2;
	wire [32:0]count3;
	wire [32:0]count4;
	
	// Instantiate the Unit Under Test (UUT)
	voting_machine uut (
		.clk(clk), 
		.rst(rst), 
		.button1(button1), 
		.button2(button2), 
		.button3(button3), 
		.button4(button4), 
		.led1(led1), 
		.led2(led2), 
		.led3(led3), 
		.led4(led4),
		.count_total(count_total),
		.count1(count1),
	   .count2(count2),
	   .count3(count3),
		.count4(count4)
	);
	
	initial begin
		clk=0;
		forever
		#20 clk=~clk;
		end

	initial begin
		// Initialize Inputs
		rst = 0;button1 = 0;button2 = 0;button3 = 0;button4 = 0;
		#20rst = 0;button1 = 1;button2 = 0;button3 = 0;button4 = 0;
		#40rst = 0;button1 = 0;button2 = 1;button3 = 0;button4 = 0;
		#40rst = 0;button1 = 0;button2 = 0;button3 = 1;button4 = 0;
		#40rst = 0;button1 = 0;button2 = 0;button3 = 0;button4 = 1;
		#40rst = 0;button1 = 0;button2 = 0;button3 = 0;button4 = 0;
		
		$display("total vote = %d",count_total);
		$display("candidate 1 vote = %d",count1);
		$display("candidate 2 vote = %d",count2);
		$display("candidate 3 vote = %d",count3);
		$display("candidate 4 vote = %d",count4);

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule
