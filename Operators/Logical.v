//Logical Operator
module logical;
	reg [3:0]a,b;
	initial begin
		a=4'b1010;
		b=4'b0101;
		$display("a=%b b=%b",a,b);
		$display("Logical and a && b =%b",a && b);
		$display("Logical or a || b =%b",a || b);
		$display("Logical not !a =%b",!a );
		$display("Logical not !b =%b",!b );
	end
endmodule

/*output
# a=1010 b=0101
# Logical and a && b =1
# Logical or a || b =1
# Logical not !a =0
# Logical not !b =0
*/
