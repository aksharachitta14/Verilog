module top;
	reg [3:0]i;
	reg [1:0]s;
	`ifdef BEH
		reg y;
	`else
		wire y;
	`endif

	`ifdef DATAFLOW
		assign y=(s[1]==0)?
				 ((s[0]==0)?i[0]:i[1]):
				 ((s[0]==0)?i[2]:i[3]);
		initial begin
			$display("===DATAFLOW===");
		end
	`elsif BEH
		always@(*)begin
			y=(s[1]==0)?((s[0]==0)?i[0]:i[1]):((s[0]==0)?i[2]:i[3]);
		end
	initial begin
		$display("===BEHAVE===");
	end
	`elsif GATELEVEL
		wire w1,w2,w3,w4;
		and d1(w1,~s[1],~s[0],i[0]);
		and d2(w2,~s[1],s[0],i[1]);
		and d3(w3,s[1],~s[0],i[2]);
		and d4(w4,s[1],s[0],i[3]);
		or d5(y,w1,w2,w3,w4);
		initial begin
			$display("===GATELEVEL===");
		end
	`endif
	initial begin
		repeat(10)begin
			{i,s}=$random;
			#1;
			$display("i=%0b s=%0b y=%0b",i,s,y);
		end
	end
endmodule

/*output
# ===DATAFLOW===
# i=1001 s=0 y=1
# i=0 s=1 y=0
# i=10 s=1 y=1
# i=1000 s=11 y=1
# i=11 s=1 y=1
# i=11 s=1 y=1
# i=1001 s=1 y=0
# i=100 s=10 y=1
# i=0 s=1 y=0
# i=11 s=1 y=1
*/
