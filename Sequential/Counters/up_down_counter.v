module up_down_counter(clk,rst,mode,a);
	input clk,rst,mode;
	output reg [2:0]a;
	always @(posedge clk)begin
		if(!rst)begin
			if(mode==1)
				a<=a+1;
			else
				a<=a-1;
		end
		else
			a<=0;
		$display("CLK=%0b RST=%0b MODE=%0b A=%b",clk,rst,mode,a);
	end
endmodule

//Tb
module top;
	reg clk,rst,mode;
	wire [2:0]a;
	up_down_counter dut(clk,rst,mode,a);
	initial begin
		clk=0;
		forever #5 clk=~clk;
	end
	initial begin
		rst=1;
		//mode=1;//up_counter
		mode=0;//down_counter
		if(mode==1)		
			$display("===>Up_Counter<===");
		else
			$display("===>Down_Counter<===");
		repeat(2)@(posedge clk)
		rst=0;
	end
	initial begin
		#100;
		$finish();
	end
endmodule

/*output
# ===>Up_Counter<===
# CLK=1 RST=1 MODE=1 A=xxx
# CLK=1 RST=0 MODE=1 A=000
# CLK=1 RST=0 MODE=1 A=001
# CLK=1 RST=0 MODE=1 A=010
# CLK=1 RST=0 MODE=1 A=011
# CLK=1 RST=0 MODE=1 A=100
# CLK=1 RST=0 MODE=1 A=101
# CLK=1 RST=0 MODE=1 A=110
# CLK=1 RST=0 MODE=1 A=111
# CLK=1 RST=0 MODE=1 A=000

# ===>Down_Counter<===
# CLK=1 RST=1 MODE=0 A=xxx
# CLK=1 RST=0 MODE=0 A=000
# CLK=1 RST=0 MODE=0 A=111
# CLK=1 RST=0 MODE=0 A=110
# CLK=1 RST=0 MODE=0 A=101
# CLK=1 RST=0 MODE=0 A=100
# CLK=1 RST=0 MODE=0 A=011
# CLK=1 RST=0 MODE=0 A=010
# CLK=1 RST=0 MODE=0 A=001
# CLK=1 RST=0 MODE=0 A=000

*/
