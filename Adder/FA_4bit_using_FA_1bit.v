//Design 4bit Full_adder using 1bit Full_adder

//1Bit Full_adder
module fa_1bit(a,b,c,sum,carry);
	input a,b,c;
	output sum,carry;
	assign sum=a^b^c;
	assign carry=(a&b)|(b&c)|(c&a);
endmodule

//4Bit Full_adder
module fa_4bit(a,b,c,sum,carry);
	input [3:0]a,b;
	input c;
	output [3:0]sum;
	output carry;
	wire n1,n2,n3;
	fa_1bit u1(.a(a[0]),.b(b[0]),.c(c),.sum(sum[0]),.carry(n1));
	fa_1bit u2(.a(a[1]),.b(b[1]),.c(n1),.sum(sum[1]),.carry(n2));
	fa_1bit u3(.a(a[2]),.b(b[2]),.c(n2),.sum(sum[2]),.carry(n3));
	fa_1bit u4(.a(a[3]),.b(b[3]),.c(n3),.sum(sum[3]),.carry(carry));
endmodule

//TestBench
module top;
	reg [3:0]a,b;
	reg c;
	wire [3:0]sum;
	wire carry;
	fa_4bit dut(a,b,c,sum,carry);
	initial begin
		repeat(10)begin
			{a,b,c}=$random;
			#1;
			$display("A=%b B=%b C=%b Sum=%b Carry=%B",a,b,c,sum,carry);
		end
	end
endmodule

/*output
A=1001 B=0010 C=0 Sum=1011 Carry=0
# A=0100 B=0000 C=1 Sum=0101 Carry=0
# A=0000 B=0100 C=1 Sum=0101 Carry=0
# A=0011 B=0001 C=1 Sum=0101 Carry=0
# A=1000 B=0110 C=1 Sum=1111 Carry=0
# A=1100 B=0110 C=1 Sum=0011 Carry=1
# A=0011 B=0010 C=1 Sum=0110 Carry=0
# A=0000 B=1001 C=0 Sum=1001 Carry=0
# A=1000 B=0000 C=1 Sum=1001 Carry=0
# A=1000 B=0110 C=1 Sum=1111 Carry=0*/
