//Q.Write a Verilog function to find the maximum of two 8-bit numbers.

module top;
	reg [7:0]a,b;
	reg [7:0]c;
	function reg[7:0] max_num;
		input [7:0]x,y;
		begin
			if(x>y)
				max_num=x;
			else
				max_num=y;
		end
	endfunction
	initial begin
		a=8'd56;
		b=8'd34;
		c=max_num(a,b);
		$display("Maximum = %0d",c);
	end
endmodule

/*output
# Maximum = 56
*/
