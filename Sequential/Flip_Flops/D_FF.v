module d_ff(clk,rst,d,q);
	input clk,rst,d;
	output reg q;

	always @(posedge clk) begin
		if(rst==1)
			q<=0;
		else
			q<=d;
	end
endmodule


//TB
module top;
	reg clk,rst,d;
	wire q;
	d_ff dut(clk,rst,d,q);

	initial begin
		clk=0;
		forever #5 clk=~clk;
	end

	initial begin
		rst=1;
		d=0;
		repeat (2)@(posedge clk)
		rst=0;
	end

	initial begin
		repeat (10) begin
			d=$random;
			#10;
			$display("Time%0t CLK=%b RST=%0b D=%0b Q=%0b",$time,clk,rst,d,q);
		end	
	end
	initial begin
		#100;
		$finish();
	end
endmodule

/*output
 Time10 CLK=1 RST=0 D=0 Q=0
# Time20 CLK=1 RST=0 D=1 Q=1
# Time30 CLK=1 RST=0 D=1 Q=1
# Time40 CLK=1 RST=0 D=1 Q=1
# Time50 CLK=1 RST=0 D=1 Q=1
# Time60 CLK=1 RST=0 D=1 Q=1
# Time70 CLK=1 RST=0 D=1 Q=1
# Time80 CLK=1 RST=0 D=0 Q=0
# Time90 CLK=1 RST=0 D=1 Q=1
*/
