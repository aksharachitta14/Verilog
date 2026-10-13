//Q.Design a 4-bit ripple-carry full adder using hierarchical modeling and a generate for loop.

//`define VALUE
module full_adder(a,b,cin,sum,carry);
	input a,b,cin;
	output sum,carry;
	assign sum=a^b^cin;
	assign carry=a&b|b&cin|cin&a;
endmodule

module full_adder_nbit(a,b,cin,sum,carry);
	parameter VALUE=4;
	input [VALUE-1:0]a,b;
	input cin;
	output [VALUE-1:0]sum;
	output carry;

	wire [VALUE:0]n;
	assign n[0]=cin;
	assign carry=n[VALUE];

	genvar i;
		for(i=0;i<VALUE;i=i+1)begin
			full_adder u1(.a(a[i]),.b(b[i]),.cin(n[i]),.sum(sum[i]),.carry(n[i+1]));
		end
endmodule

//tb
module top;
	parameter VALUE=4;
	reg [VALUE-1:0]a,b;
	reg cin;
	wire [VALUE-1:0]sum;
	wire carry;
	full_adder_nbit dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
	initial begin
		repeat (10)begin
			{a,b,cin}=$random;
			#1;
			$display("A=%0d B=%0d Cin=%0d Sum=%0d Carry=%0d",a,b,cin,sum,carry);
		end
	end
endmodule

/*output
# A=9 B=2 Cin=0 Sum=11 Carry=0
# A=4 B=0 Cin=1 Sum=5 Carry=0
# A=0 B=4 Cin=1 Sum=5 Carry=0
# A=3 B=1 Cin=1 Sum=5 Carry=0
# A=8 B=6 Cin=1 Sum=15 Carry=0
# A=12 B=6 Cin=1 Sum=3 Carry=1
# A=3 B=2 Cin=1 Sum=6 Carry=0
# A=0 B=9 Cin=0 Sum=9 Carry=0
# A=8 B=0 Cin=1 Sum=9 Carry=0
# A=8 B=6 Cin=1 Sum=15 Carry=0
*/
