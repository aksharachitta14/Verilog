module jk_ff(clk,rst,j,k,q);
	input clk,rst,j,k;
	output reg q;
	always @(posedge clk)begin
		if(rst==1)begin
			q<=0;
		end
		else begin
			case({j,k})
				2'b00:q<=q;
				2'b01:q<=1'b0;
				2'b10:q<=1'b1;
				2'b11:q<=~q;
			endcase
		end
	end
endmodule

//TB
module top;
	reg clk,rst,j,k;
	wire q;
	jk_ff dut(clk,rst,j,k,q);

	initial begin
		clk=0;
		forever #5 clk=~clk;
	end
	initial begin
		rst=1;
		j=0;
		k=0;
		repeat (2)@(posedge clk)
			rst=0;
	end
	initial begin
		repeat(10)begin
			j=$urandom_range(0,1);
			k=$urandom_range(0,1);
			#10;
			$display("Time=%0t CLK=%0b RST=%0b J=%0b K=%0b Q=%0b",$time,clk,rst,j,k,q);
		end
	end
	initial begin
		#100;
		$finish();
	end
endmodule

/*output
# Time=10 CLK=1 RST=0 J=0 K=0 Q=0
# Time=20 CLK=1 RST=0 J=0 K=0 Q=0
# Time=30 CLK=1 RST=0 J=1 K=0 Q=1
# Time=40 CLK=1 RST=0 J=0 K=1 Q=0
# Time=50 CLK=1 RST=0 J=1 K=1 Q=1
# Time=60 CLK=1 RST=0 J=1 K=0 Q=1
# Time=70 CLK=1 RST=0 J=0 K=1 Q=0
# Time=80 CLK=1 RST=0 J=0 K=1 Q=0
# Time=90 CLK=1 RST=0 J=1 K=0 Q=1
*/
