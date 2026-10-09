//Q.Write a Verilog code to read a string from the command line using $value$plusargs and display it.

module top;
	integer count;
	initial begin
		$value$plusargs("AKSHARA=%0d",count);
		$display("\t-->Count=%0d",count);
	end
endmodule


/*run.do file
vlib work
vlog string_command_line.v
vsim -novopt -suppress 12110 top +AKSHARA=10
run -all 
*/

/*output
# 	-->Count=10
*/
