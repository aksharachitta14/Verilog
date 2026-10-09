//Q.Write a Verilog program using two events (e1 and e2) and three parallel processes with the following execution order:START MIDDLE END

module top;
	event e1,e2;
	initial begin
		@e2;
		$display("END");
	end
	initial begin
		$display("START");
		->e1;
	end
	initial begin
	//	@e1;
	#1;
		$display("MIDDLE");
		->e2;
	end
endmodule

/*output
# START
# MIDDLE
# END
*/
