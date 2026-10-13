`timescale 1ns/1ps
module top;
	reg clk;
	initial begin
		clk=0;
	end
	always #5 clk=~clk;
	always #10 clk=~clk;//20ns clock period
	always #25 clk=~clk;//50ns clock period
endmodule

/*
clock starts at 0
ever 5ns it toggles
one complete cycle=10ns
Frequency=100MHz
*/
