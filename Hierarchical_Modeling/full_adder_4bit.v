//Q.Write a Verilog program to implement a 4-bit Full Adder using four 1-bit Full Adder modules.

//1-bit full_adder
module full_adder(a,b,cin,sum,carry);
	input a,b,cin;
	output sum,carry;
	assign sum=a^b^cin;
	assign carry= a&b|b&cin|a&cin;
endmodule

//4-bit full_adder
module full_adder_4bit(a,b,cin,sum,carry);
	input [3:0]a,b;
	input cin;
	output [3:0]sum;
	output carry;
	wire [4:0]c;
	assign c[0]=cin;
	assign carry=c[4];
	full_adder FA0(a[0],b[0],c[0],sum[0],c[1]);
	full_adder FA1(a[1],b[1],c[1],sum[1],c[2]);
	full_adder FA2(a[2],b[2],c[2],sum[2],c[3]);
	full_adder FA3(a[3],b[3],c[3],sum[3],c[4]);

endmodule

//tb
module top;
	reg [3:0]a,b;
	reg cin;
	wire [3:0]sum;
	wire carry;
	full_adder_4bit dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
	initial begin
		repeat(10)begin
			a=$urandom_range(1,20);
			b=$urandom_range(1,20);
			cin=$urandom_range(0,1);
			#1;
			$display("A=%0d B=%0d Cin=%0b Sum=%0d Carry=%0b",a,b,cin,sum,carry);
		end
	end
endmodule

/*output
# A=13 B=11 Cin=0 Sum=8 Carry=1
# A=3 B=7 Cin=0 Sum=10 Carry=0
# A=3 B=3 Cin=1 Sum=7 Carry=0
# A=3 B=3 Cin=0 Sum=6 Carry=0
# A=0 B=3 Cin=1 Sum=4 Carry=0
# A=5 B=3 Cin=1 Sum=9 Carry=0
# A=12 B=10 Cin=1 Sum=7 Carry=1
# A=1 B=14 Cin=1 Sum=0 Carry=1
# A=14 B=10 Cin=1 Sum=9 Carry=1
# A=3 B=1 Cin=1 Sum=5 Carry=0
*/
