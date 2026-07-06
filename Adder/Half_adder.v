//Design a Half_Adder using Behavioural,Dataflow,Structural models

//Behavioural model
module half_adder(a,b,sum,carry);
	input a,b;
	output reg sum,carry;
	always @(a or b)begin
		sum = a^b;
		carry = a&b;
	end
endmodule
//Dataflow model
/*module half_adder(a,b,sum,carry);
	input a,b;
	output sum,carry;
		assign sum=a^b;
		assign carry=a+b;
endmodule*/

//Structural models
/*module half_adder(a,b,sum,carry);
	input a,b;
	output sum,carry;
		xor(sum,a,b);
		and(carry,a,b);
endmodule*/

//TestBench
module top;
	reg a,b;
	wire sum,carry;
	half_adder dut(a,b,sum,carry);
	initial begin
		repeat(4)begin
			{a,b}=$random;
			#1;
			$display("A=%b B=%b Sum=%b Carry=%b",a,b,sum,carry);
		end
	end
endmodule


/*output
# Loading work.half_adder
# A=0 B=0 Sum=0 Carry=0
# A=0 B=1 Sum=1 Carry=0
# A=0 B=1 Sum=1 Carry=0
# A=1 B=1 Sum=0 Carry=1*/
