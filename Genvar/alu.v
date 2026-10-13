//Q.Design a 4-bit ALU using hierarchical modeling and genvar

module alu_1bit(a,b,sel,cin,y,cout);
	input a,b,cin;
	input [1:0]sel;
	output reg y;
	output cout;
	wire sum;

	assign sum=a^b^cin;
	assign cout=a&b|b&cin|cin&a;

	always@(*)begin
		case(sel)
			2'b00:y=sum;//addition
			2'b01:y=a&b;//and
			2'b10:y=a|b;//or
			2'b11:y=a^b;//xor
		endcase
	end
endmodule

//4bit ALU
module alu_4bit(a,b,sel,y,carry);
	input [3:0]a,b;
	input [1:0]sel;
	output[3:0]y;
	output carry;
	wire [4:0]c;

	assign c[0]=1'b0;
	assign carry=c[4];

	genvar i;
	generate
		for(i=0;i<4;i=i+1)begin
			alu_1bit u1(.a(a[i]),.b(b[i]),.sel(sel),.cin(c[i]),.y(y[i]),.cout(c[i+1]));
		end
	endgenerate
endmodule

//tb
module top;
	reg [3:0]a,b;
	reg [1:0]sel;
	wire [3:0]y;
	wire carry;
	integer i;
	alu_4bit dut(.a(a),.b(b),.sel(sel),.y(y),.carry(carry));

	initial begin
		a=4'd5;
		b=4'd4;
		for(i=0;i<4;i=i+1)begin
			sel=i;
			#1;
			$display("A=%0d B=%0d SEL=%b Y=%0d CARRY=%b",a,b,sel,y,carry);
		end
	end
endmodule

/*output
# A=5 B=4 SEL=00 Y=9 CARRY=0
# A=5 B=4 SEL=01 Y=4 CARRY=0
# A=5 B=4 SEL=10 Y=5 CARRY=0
# A=5 B=4 SEL=11 Y=1 CARRY=0
*/
