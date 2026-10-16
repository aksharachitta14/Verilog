//Q.Write a Verilog function to find the minimum of two 8-bit numbers.

module top;
	reg [7:0]a,b;
	reg [7:0]c;
	function reg[7:0] min_num;
		input [7:0]x,y;
		begin
			if(x<y)
				min_num=x;
			else
				min_num=y;
		end
	endfunction
	initial begin
		a=8'd56;
		b=8'd34;
		c=min_num(a,b);
		$display("Minimum = %0d",c);
	end
endmodule

/*output
# Minimum = 34
*/
