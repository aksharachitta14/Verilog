//Conditional Operator
module conditional;
	reg [3:0]a,b;
	reg [3:0]max;

	initial begin
		a=4'd8;
		b=4'd4;
		max=(a>b)?a:b;
		$display("a=%d b=%d",a,b);
		$display("Maximum =%d",max);
	end
endmodule

/*output
# a= 8 b= 4
# Maximum = 8
*/
