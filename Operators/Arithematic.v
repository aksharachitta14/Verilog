//Arithematic Operator
module arithematic;
	integer a,b,c;
		initial begin
			a=10;
			b=20;
			c=a+b;
			$display("Addition: a=%0d b=%0d c=%0d",a,b,c);
			a=30;
			b=20;
			c=a-b;
			$display("Subtraction: a=%0d b=%0d c=%0d",a,b,c);
			a=10;
			b=20;
			c=a*b;
			$display("Multiplication: a=%0d b=%0d c=%0d",a,b,c);
			a=10;
			b=20;
			c=a/b;
			$display("Division: a=%0d b=%0d c=%0d",a,b,c);
			a=10;
			b=20;
			c=a%b;
			$display("Modulus: a=%0d b=%0d c=%0d",a,b,c);
		end
endmodule


/*output
# Addition: a=10 b=20 c=30
# Subtraction: a=30 b=20 c=10
# Multiplication: a=10 b=20 c=200
# Division: a=10 b=20 c=0
# Modulus: a=10 b=20 c=10
*/
