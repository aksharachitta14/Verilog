module up_counter_3bit(clk,rst,a);
	input clk,rst;
	output reg [2:0]a;
	always @(posedge clk)begin
		if(!rst)
			a<=a+1;
		else
			a<=0;
		$display("CLK=%0b RST=%0b A=%b",clk,rst,a);
	end
endmodule


//Tb
module top;	
	reg clk,rst;
	wire [2:0]a;
	counter_3bit dut(clk,rst,a);
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
			#100;
			$finish();
		end
endmodule

/*output
# CLK=1 RST=1 A=xxx
# CLK=1 RST=0 A=000
# CLK=1 RST=0 A=001
# CLK=1 RST=0 A=010
# CLK=1 RST=0 A=011
# CLK=1 RST=0 A=100
# CLK=1 RST=0 A=101
# CLK=1 RST=0 A=110
# CLK=1 RST=0 A=111
# CLK=1 RST=0 A=000
*/
