//Shift Operator
module shift;
	reg [3:0]a,b;
	initial begin
		a=4'b1010;
		b=4'b1x10;
		//lest shift
		$display("---Left Shift---");
		$display("a<<1=%b",a<<1);
		$display("a<<2=%b",a<<2);
		$dispaly("b<<1=%b",b<<1);
		$display("b<<2=%b",b<<2);
		//right shift
		$display("---Right Shift---");
		$display("a>>1=%b",a>>1);
		$display("a>>2=%b",a>>2);
		$dispaly("b>>1=%b",b>>1);
		$display("b>>2=%b",b>>2);


	end
endmodule

/*output
# ---Left Shift---
# a<<1=0100
# a<<2=1000
# b<<1=x100
# b<<2=1000
# ---Right Shift---
# a>>1=0101
# a>>2=0010
# b>>1=01x1
# b>>2=001x
*/
