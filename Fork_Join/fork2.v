module top;
	initial begin
		$display("Enter 1 at time %0t",$time);//0ns
		#2 $display("Enter 2 at time %0t",$time);//2ns
		fork
			#5 $display("Enter 3 at time %0t",$time);//(2+5)=7ns
			#7 $display("Enter 4 at time %0t",$time);//(2+7)=9ns
			#9 $display("Enter 5 at time %0t",$time);//(2+9)=11ns
		join
		#10 $display("Enter 6 at time %0t",$time);//(11+10)=21ns
	end

endmodule

/*output
# Enter 1 at time 0
# Enter 2 at time 2
# Enter 3 at time 7
# Enter 4 at time 9
# Enter 5 at time 11
# Enter 6 at time 21
*/
