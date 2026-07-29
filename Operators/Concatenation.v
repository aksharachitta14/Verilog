//Concatenation Operator
module concatenation;
	reg [1:0]a,b;
	reg [3:0]y;
	initial begin
		a=2'b10;
		b=2'b01;
		y={a,b};
		$display("a=%b",a);
		$display("b=%b",b);
		$display("y={a,b}=%b",y);
	end
endmodule

/*output
# a=10
# b=01
# y={a,b}=1001
*/
