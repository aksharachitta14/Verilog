//Equality Operator
module equality;
	reg [3:0]a,b;
	initial begin
		//tese case 1
		a=4'b1010;
		b=4'b1010;
		$display("case 1");
		$display("a=%b b=%b",a,b);
		$display("a==b =%b",a==b);
		$display("a!=b =%b",a!=b);
		$display("a===b =%b",a===b);
		$display("a!==b =%b",a!==b);
		$display("=====================");
		//tese case 2
		a=4'b1010;
		b=4'b1011;
		$display("case 2");
		$display("a=%b b=%b",a,b);
		$display("a==b =%b",a==b);
		$display("a!=b =%b",a!=b);
		$display("a===b =%b",a===b);
		$display("a!==b =%b",a!==b);
		$display("=====================");
		//tese case 3(unknow values)
		a=4'b10x0;
		b=4'b10x0;
		$display("case 1");
		$display("a=%b b=%b",a,b);
		$display("a==b =%b",a==b);
		$display("a!=b =%b",a!=b);
		$display("a===b =%b",a===b);
		$display("a!==b =%b",a!==b);
	end
endmodule

/*output
# case 1
# a=1010 b=1010
# a==b =1
# a!=b =0
# a===b =1
# a!==b =0
# =====================
# case 2
# a=1010 b=1011
# a==b =0
# a!=b =1
# a===b =0
# a!==b =1
# =====================
# case 1
# a=10x0 b=10x0
# a==b =x
# a!=b =x
# a===b =1
# a!==b =0
*/
