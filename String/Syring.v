//Q.Write a Verilog code to store and display the name "AKSHARA" using a register.

module top;
	reg [7*8:0]str;
	initial begin
		str="AKSHARA";
		$display("\t-->String_Output=%0s",str);
	end
endmodule

/*output
# 	-->String_Output=AKSHARA
*/
