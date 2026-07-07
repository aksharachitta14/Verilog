//Design Full_Subtractor using Half_subtractor
//Half_subtractor
module half_sub(a,b,difference,borrow);
	input a,b;
	output difference,borrow;
	assign difference=a^b;
	assign borrow=(~a)&b;
endmodule

//Full_subtractor
module Fsub_using_Hsub(a,b,c,difference,borrow);
	input a,b,c;
	output difference,borrow;
	wire w1,w2,w3;
	half_sub u1(.a(a),.b(b),.difference(w1),.borrow(w2));
	half_sub u2(.a(w1),.b(c),.difference(difference),.borrow(w3));
	or u3(borrow,w2,w3);
endmodule

//TestBench
module top;
	reg a,b,c;
	wire difference,borrow;
	Fsub_using_Hsub dut(a,b,c,difference,borrow);
	initial begin
	    repeat(10)begin
			{a,b,c}=$random;
			#1;
			$display("A=%b B=%b C=%b Difference=%b Borrow=%b",a,b,c,difference,borrow);
		end
    end
endmodule
/*output
 A=1 B=0 C=0 Difference=1 Borrow=0
# A=0 B=0 C=1 Difference=1 Borrow=1
# A=0 B=0 C=1 Difference=1 Borrow=1
# A=0 B=1 C=1 Difference=0 Borrow=1
# A=1 B=0 C=1 Difference=0 Borrow=0
# A=1 B=0 C=1 Difference=0 Borrow=0
# A=1 B=0 C=1 Difference=0 Borrow=0
# A=0 B=1 C=0 Difference=1 Borrow=1
# A=0 B=0 C=1 Difference=1 Borrow=1
# A=1 B=0 C=1 Difference=0 Borrow=0*/
