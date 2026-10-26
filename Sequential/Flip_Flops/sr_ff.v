module sr_ff(clk,rst,s,r,q);
	input clk,rst,s,r;
	output reg q;
	always @(posedge clk)begin
		if(rst==1)begin
			q<=0;
		end
		else begin
			case({s,r})
				2'b00:q=q;
				2'b01:q=1'b0;
				2'b10:q=1'b1;
				default q=1'bx;
			endcase
		end
	end
endmodule

//Tb
module top;
	reg clk,rst,s,r;
	wire q;
	sr_ff dut(clk,rst,s,r,q);

	initial begin
		clk=0;
		forever #5 clk=~clk;
	end

	initial begin
		rst=1;
		s=0;
		r=0;
		repeat (2)@(posedge clk)
		rst=0;
	end
	initial begin
		repeat(10)begin
			s=$urandom_range(0,1);
			r=$urandom_range(0,1);
			#10;
			$display("Time=%0t CLK=%0b RST=%0b S=%0b R=%0b Q=%0b",$time,clk,rst,s,r,q);
		end
	end
	initial begin
		#100;
		$finish();
	end
endmodule

/*output
# Time=10 CLK=1 RST=0 S=0 R=0 Q=0
# Time=20 CLK=1 RST=0 S=0 R=0 Q=0
# Time=30 CLK=1 RST=0 S=1 R=0 Q=1
# Time=40 CLK=1 RST=0 S=0 R=1 Q=0
# Time=50 CLK=1 RST=0 S=1 R=1 Q=x
# Time=60 CLK=1 RST=0 S=1 R=0 Q=1
# Time=70 CLK=1 RST=0 S=0 R=1 Q=0
# Time=80 CLK=1 RST=0 S=0 R=1 Q=0
# Time=90 CLK=1 RST=0 S=1 R=0 Q=1
*/
