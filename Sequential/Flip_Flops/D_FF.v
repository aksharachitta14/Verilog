//Design D_flip flop in 3 modeling style
//Structural Model
module  d_ff(clk,d,q,qb);
	input clk,d;
	output q,qb;
	wire nd,s,r;
	nor(nd,d);
	nand(s,d,clk);
	nand(r,nd,clk);
	nand(q,s,qb);
	nand(qb,c,q);
endmodule

//Dataflow Model
module d_ff(clk,d,q);
	input clk,d;
	output reg q;
	always@(*)begin
		if(clk)
			q=d;
	end
endmodule

//Behavioral Model
module d_ff(clk,d,q);
	input clk,d;
	output q;
	always@(posedge clk)begin
		q<=d;
	end
endmodule

//TestBench
module top;
	reg clk,rst,d;
	wire q;
	d_ff dut(.clk(clk),
			 .rst(rst),
			 .d(d),
			 .q(q));
	initial begin
		clk=0;
		forever #5 clk=~clk;
	end 
	initial begin
		rst=1;
		repeat(2)@(posedge clk)
		rst=0;
	end
	initial begin
		repeat(10)begin
			@(negedge clk);
			d=$random;
			@(posedge clk);
			$display("Time=%t CLK=%b RST=%b D=%b Q=%b",$time,clk,rst,d,q);
		end
		$finish;
	end
endmodule
