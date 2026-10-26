module t_ff(clk,rst,t,q);
	input clk,rst,t;
	output reg q;
	always @(posedge clk)begin
		if(rst==1)
			q<=0;
		else begin
			if(t==0)
				q<=q;
			else
				q<=~q;
		end	
	end
endmodule

//TB
module top;
	reg clk,rst,t;
	wire q;
	t_ff dut(clk,rst,t,q);

	initial begin
		clk=0;
		forever #5 clk=~clk;
	end
	initial begin
		rst=1;
		t=0;
		repeat (2)@(posedge clk)
			rst=0;
	end
	initial begin
		repeat(10)begin
			t=$urandom_range(0,1);
			#10;
			$display("Time=%0t CLK=%0b RST=%0b T=%0b Q=%0b",$time,clk,rst,t,q);
		end
	end
	initial begin
		#100;
		$finish();
	end
endmodule

/*output
# Time=10 CLK=1 RST=0 T=0 Q=0
# Time=20 CLK=1 RST=0 T=0 Q=0
# Time=30 CLK=1 RST=0 T=0 Q=0
# Time=40 CLK=1 RST=0 T=0 Q=0
# Time=50 CLK=1 RST=0 T=1 Q=1
# Time=60 CLK=1 RST=0 T=0 Q=1
# Time=70 CLK=1 RST=0 T=0 Q=1
# Time=80 CLK=1 RST=0 T=1 Q=0
# Time=90 CLK=1 RST=0 T=1 Q=1
*/
