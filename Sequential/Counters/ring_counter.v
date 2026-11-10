module ring_counter(clk,rst,a);
	input clk,rst;
	output reg [3:0]a;
	always @(posedge clk)begin
		if(rst==1)
			a<=4'b0100;
		else
			a<={a[0],a[3],a[2],a[1]};
		$display("A=%b",a);
	end
endmodule

//Tb
module top;
	reg clk,rst;
	wire [3:0]a;
	ring_counter dut(clk,rst,a);
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
		#100;
		$finish();
	end
endmodule

/*output
# A=xxxx
# A=0100
# A=0100//the reset is high for two positive clock edges
# A=0010
# A=0001
# A=1000
# A=0100
# A=0010
# A=0001
# A=1000
*/
