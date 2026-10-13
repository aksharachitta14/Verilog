//Q.Design a 4-bit Comparator

//1bit comparator
module comp_1bit(a,b,lt,gt,eq);
	input a,b;
	output lt,gt,eq;
	assign lt=~a&b;
	assign gt=a&~b;
  assign eq=~(a^b);
endmodule


//4bit Comparator
module comp_4bit(a,b,lt,gt,eq);
	input [3:0]a,b;
	output lt,gt,eq;
	wire lt0,gt0,eq0;
	wire lt1,gt1,eq1;
	wire lt2,gt2,eq2;
	wire lt3,gt3,eq3;
	comp_1bit u0(a[0],b[0],lt0,gt0,eq0);
	comp_1bit u1(a[1],b[1],lt1,gt1,eq1);
	comp_1bit u2(a[2],b[2],lt2,gt2,eq2);
	comp_1bit u3(a[3],b[3],lt3,gt3,eq3);
	assign gt=gt3|(eq3&gt2)|(eq3&eq2&gt1)|(eq3&eq2&eq1&gt0);
	assign lt=lt3|(eq3&lt2)|(eq3&eq2&lt1)|(eq3&eq2&eq1&lt0);
	assign eq= eq3&eq2&eq1&eq0;

endmodule

//TestBench
module top;
	reg [3:0]a,b;
	wire lt,gt,eq;
    comp_4bit dut(.a(a),.b(b),.lt(lt),.gt(gt),.eq(eq));
	initial begin
		repeat(10)begin
			{a,b}=$random;
			#1;
          $display("A=%b B=%b LT=%b GT=%b EQ=%b",a,b,lt,gt,eq);
		end
	end
endmodule

/*output
# A=0010 B=0100 LT=1 GT=0 EQ=0
# A=1000 B=0001 LT=0 GT=1 EQ=0
# A=0000 B=1001 LT=1 GT=0 EQ=0
# A=0110 B=0011 LT=0 GT=1 EQ=0
# A=0000 B=1101 LT=1 GT=0 EQ=0
# A=1000 B=1101 LT=1 GT=0 EQ=0
# A=0110 B=0101 LT=0 GT=1 EQ=0
# A=0001 B=0010 LT=1 GT=0 EQ=0
# A=0000 B=0001 LT=1 GT=0 EQ=0
# A=0000 B=1101 LT=1 GT=0 EQ=0
*/
