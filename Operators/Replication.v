//Replication Operator
module replication;
	reg [7:0]a,b,c;
	initial begin
		a={4{2'b10}};
		b={2{4'b1010}};
		c={3{2'b01}};
		$display("a=%b",a);
		$display("b=%b",b);
		$display("c=%b",c);
	end
endmodule

/*output
# a=10101010
# b=10101010
# c=00010101
*/
