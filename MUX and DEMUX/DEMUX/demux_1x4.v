//Design demux_1x4 using 
//Behavioral Model
module demux_1x4(i,s,y);
	input i;
	input [1:0]s;
	output reg [3:0]y;
	always @(*)begin
		y[0]=i&~s[1]&~s[0];
		y[1]=i&~s[1]&s[0];
		y[2]=i&s[1]&~s[0];
		y[3]=i&s[1]&s[0];
	end
endmodule

//Dataflow Model
/*module demux_1x4(i,s,y);
	input i;
	input [1:0]s;
	output [3:0]y;
	assign y[0]=i&~s[1]&~s[0];
	assign y[1]=i&~s[1]&s[0];
	assign y[2]=i&s[1]&~s[0];
	assign y[3]=i&s[1]&s[0];
endmodule*/


//Structural Model
/*module demux_1x4(i,s,y);
	input i;
	input [1:0]s;
	output [3:0]y;
    not g1(s0_bar, s[0]);
    not g2(s1_bar, s[1]);
    and g3(y[0], i, s1_bar, s0_bar);
    and g4(y[1], i, s1_bar, s[0]);
    and g5(y[2], i, s[1], s0_bar);
    and g6(y[3], i, s[1], s[0]);
endmodule*/


//Test_Bench
module top;
	reg i;
	reg [1:0]s;
	wire [3:0]y;
	demux_1x4 dut(i,s,y);
	initial begin
		repeat(10)begin
			{i,s}=$random;
			#1;
			$display("I=%b S=%b Y=%b",i,s,y);
		end
	end
endmodule

/*output
# I=1 S=00 Y=0001
# I=0 S=01 Y=0000
# I=0 S=01 Y=0000
# I=0 S=11 Y=0000
# I=1 S=01 Y=0010
# I=1 S=01 Y=0010
# I=1 S=01 Y=0010
# I=0 S=10 Y=0000
# I=0 S=01 Y=0000
# I=1 S=01 Y=0010*/
