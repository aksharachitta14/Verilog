module top;
	initial begin
		#2 $display("Enter 1 at %0t",$time);//2ns
		#4 $display("Enter 2 at %0t",$time);//2+4=6ns
		fork	
			#6 $display("Enter 3 at %0t",$time);//6+6=12ns
			#8 $display("Enter 4 at %0t",$time);//6+8=14ns
			begin
				#5 $display("Enter 5 at %0t",$time);//6+5=11ns
				#3 $display("Enter 6 at %0t",$time);//11+3=14ns
			end
		join
		
		#2 $display("Enter 7 at %0t",$time);//14+2=16ns
	end
endmodule
/*output
# Enter 1 at 2
# Enter 2 at 6
# Enter 5 at 11
# Enter 3 at 12
# Enter 4 at 14
# Enter 6 at 14
# Enter 7 at 16
*/
