//Design 1x8_Demux using 1x4_Demux

//1x4_Demux
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

//1x8_Demux
module demux_1x8(i,s,y);
	input i;
	input [2:0]s;
	output [7:0]y;
	wire [3:0]w;
	demux_1x4 u1(.i(i),.s({1'b0,s[2]}),.y(w));
	demux_1x4 u2(.i(w[0]),.s(s[1:0]),.y(y[3:0]));
	demux_1x4 u3(.i(w[1]),.s(s[1:0]),.y(y[7:4]));
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
