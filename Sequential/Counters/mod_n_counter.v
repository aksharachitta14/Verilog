module mod_n(clk,rst,a);
	parameter N=10;
	input clk,rst;
	output reg [$clog2(N)-1:0]a;
	always @(posedge clk)begin
		if(!rst)begin
			if(a==N-1)
				a<=0;
			else 
				a<=a+1;
		end
		else
			a<=0;
		$display("CLK=%0b RST=%0b A=%b",clk,rst,a);
	end
endmodule

//TB
module top;
	parameter N=10;
	reg clk,rst;
	wire [N-1:0]a;
	mod_n #(.N(N)) dut(clk,rst,a);//#(.N(N))==parameter overriding
		initial begin
			clk=0;
			forever #5 clk=~clk;
		end
		initial begin
			rst=1;
			repeat(2)@(posedge clk);
			rst=0;
		end
		initial begin
			#150;
			$finish();
		end
endmodule

/*output
# CLK=1 RST=1 A=xxxx
# CLK=1 RST=1 A=0000
# CLK=1 RST=0 A=0000
# CLK=1 RST=0 A=0001
# CLK=1 RST=0 A=0010
# CLK=1 RST=0 A=0011
# CLK=1 RST=0 A=0100
# CLK=1 RST=0 A=0101
# CLK=1 RST=0 A=0110
# CLK=1 RST=0 A=0111
# CLK=1 RST=0 A=1000
# CLK=1 RST=0 A=1001
# CLK=1 RST=0 A=0000
# CLK=1 RST=0 A=0001
# CLK=1 RST=0 A=0010
*/
