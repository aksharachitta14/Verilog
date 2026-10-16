//Q.Write a Verilog task to find the maximum of two numbers and display the result.

module top;
	reg [7:0]a,b;
	reg [7:0]c;
	task max_num;
		input [7:0]x,y;
		output [7:0]z;
		begin
			if(x>y)
				z=x;
			else
				z=y;
		end
	endtask
	initial begin
		a=20;
		b=30;
		max_num(a,b,c);
		$display("Maximum = %0d",c);
	end
endmodule
/*output
# Maximum = 30
*/
