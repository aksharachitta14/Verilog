`timescale 1ns/1ps
module top;
	reg clk;
	//clock generation(10ns period)
	initial begin
		clk=0;
		forever #5 clk=~clk;
	//	forever #10 clk=~clk;//20ns clock period
	//	forever #25 clk=~clk;//50ns clock period
	end
endmodule

/*
clock starts at 0
ever 5ns it toggles
one complete cycle=10ns
Frequency=100MHz
*/
