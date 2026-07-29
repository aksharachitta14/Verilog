//Bitwise Operator
module bitwise;
	reg [3:0]a,b;
	initial begin
		a=4'b1010;
		b=4'b1100;
		$display("a=%b b=%b",a,b);
		$display("Bitwise and a&b=%b",a&b);
		$display("Bitwise or a|b=%b",a|b);
		$display("Bitwise xor a^b=%b",a^b);
		$display("Bitwise xnor a~^b=%b",a~^b);
		$display("Bitwise not ~a=%b",~a);
	end
endmodule

/*output
 a=1010 b=1100
# Bitwise and a&b=1000
# Bitwise or a|b=1110
# Bitwise xor a^b=0110
# Bitwise xnor a~^b=1001
# Bitwise not ~a=0101
*/
