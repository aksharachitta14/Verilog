module top;
	initial begin	
		$display("Enter 1 at %0t",$time);//0ns
		#2 $display("Enter 1 at %0t",$time);//2ns
		#4 $display("Enter 2 at %0t",$time);//2+4=6ns
		#5 $display("Enter 3 at %0t",$time);//6+5=11ns
	end
endmodule
/*output
# Enter 1 at 0
# Enter 1 at 2
# Enter 2 at 6
# Enter 3 at 11
*/
