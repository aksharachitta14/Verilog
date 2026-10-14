//Q,.Write a program with three parallel branches that print messages after delays of 5, 10, and 15 time units. Print "Done" after all branches complete.

module top;
	initial begin
		fork
			#5 $display("Branch 1 at %0t",$time);//5ns
			#10 $display("Branch 2 at %0t",$time);//10ns
			#15 $display("Branch 3 at %0t",$time);//15ns
		join
		$display("Done at time %0t",$time);
	end
endmodule

/*output
# Branch 1 at 5
# Branch 2 at 10
# Branch 3 at 15
# Done at time 15
*/
