//Design Full_Subtractor using Behavioural,Dataflow,Structural models

// Code your testbench here
// or browse Examples
//Behavioural Model
/*module full_sub(a,b,c,difference,borrow);
	input a,b,c;
	output reg difference,borrow;
	always @(*)begin
		difference=a^b^c;
      borrow=(~a&b)|(b&c)|(c&~a);
	end
endmodule*/

//Dataflow Model
/*module full_sub(a,b,c,difference,borrow);
	input a,b,c;
	output difference,borrow;
	assign difference=a^b^c;
	assign borrow=(~a&b)|(b&c)|(c&~a);
endmodule*/

//Structural models
module full_sub(a,b,c,difference,borrow);
	input a,b,c;
	output difference,borrow;
	wire w1,w2,w3;
	xor g1(difference,a,b,c);
	and g2(w1,(~a),b);
	and g3(w2,b,c);
	and g4(w3,c,(~a));
  	or g5(borrow,w1,w2,w3);
endmodule

//TestBench
module top;
	reg a,b,c;
	wire difference,borrow;
	full_sub dut(a,b,c,difference,borrow);
	initial begin
		repeat(8)begin
			{a,b,c}=$random;
          #1;
			$display("A=%b B=%b C=%b Difference=%b Borrow=%b",a,b,c,difference,borrow);
		end
	end
endmodule
/*output
# A=1 B=0 C=0 Difference=1 Borrow=0
# A=0 B=0 C=1 Difference=1 Borrow=1
# A=0 B=0 C=1 Difference=1 Borrow=1
# A=0 B=1 C=1 Difference=0 Borrow=1
# A=1 B=0 C=1 Difference=0 Borrow=0
# A=1 B=0 C=1 Difference=0 Borrow=0
# A=1 B=0 C=1 Difference=0 Borrow=0
# A=0 B=1 C=0 Difference=1 Borrow=1*/
