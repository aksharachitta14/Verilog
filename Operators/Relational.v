//Relation Operator
module relation;
	reg [3:0]a,b;
	initial begin
		//Test case 1(a>b)
		a=4'd5;
		b=4'd3;
		$display("case 1");
		$display("a=%d b=%d",a,b);
		$display("a>b =%b",a>b);
		$display("a<b =%b",a<b);
		$display("a>=b =%b",a>=b);
		$display("a<=b =%b",a<=b);
		$display("=================");
		
		//Test case 2(a<b)
		a=4'd2;
		b=4'd7;
		$display("case 2");
		$display("a=%d b=%d",a,b);
		$display("a>b =%b",a>b);
		$display("a<b =%b",a<b);
		$display("a>=b =%b",a>=b);
		$display("a<=b =%b",a<=b);
		$display("=====================");

		//Test case 3(a==b)
		a=4'd5;
		b=4'd5;
		$display("case 3");
		$display("a=%d b=%d",a,b);
		$display("a>b =%b",a>b);
		$display("a<b =%b",a<b);
		$display("a>=b =%b",a>=b);
		$display("a<=b =%b",a<=b);
	end
endmodule

/*output
# case 1
# a= 5 b= 3
# a>b =1
# a<b =0
# a>=b =1
# a<=b =0
# =================
# case 2
# a= 2 b= 7
# a>b =0
# a<b =1
# a>=b =0
# a<=b =1
# =====================
# case 3
# a= 5 b= 5
# a>b =0
# a<b =0
# a>=b =1
# a<=b =1
*/
