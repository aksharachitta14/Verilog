//Q.Write a Verilog code to reverse the elements of an integer array of 5 elements.

module top;
	integer arr[0:4];
	integer rev_arr[0:4];
	integer i,j;
	initial begin
		for(i=0;i<5;i=i+1)begin
			arr[i]=$urandom_range(10,50);
		end
		//reverse the values into rev_arr
		for(i=0;i<5;i=i+1)begin
			rev_arr[4-i]=arr[i];
		end
		$display("Original array=%0p",arr);
		$display("Reversed array=%0p",rev_arr);
	end
endmodule

/*output
# Original array=29 18 34 26 32
# Reversed array=32 26 34 18 29
*/
