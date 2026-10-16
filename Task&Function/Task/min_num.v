//Q.Write a Verilog task to find the minimum of two numbers and display the result.

module top;
	reg [7:0]a,b;
	reg [7:0]c;
	task min_num;
		input [7:0]x,y;
		output [7:0]z;
		begin
			if(x<y)
				z=x;
			else
				z=y;
		end
	endtask
	initial begin
		a=20;
		b=30;
		min_num(a,b,c);
		$display("Minmum = %0d",c);
	end
endmodule
/*output
# Minmum = 20
*/
