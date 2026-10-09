//Q.Write a Verilog program using three events (e1, e2, e3) and four parallel processes to synchronize their execution.

module top;
	event e1,e2,e3;
	initial begin
		@e1;
		$display("Process_2");
		->e2;
	end
	initial begin
		@e2;
		$display("Process_3");
		$display("All Processes are done");
	//	->e3;
	end
	initial begin
		$display("Process_1");
		->e1;
	end
endmodule

/*output
# Process_1
# Process_2
# Process_3
# All Processes are done
*/
