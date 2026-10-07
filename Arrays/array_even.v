//Q.Write a Verilog code to count how many even numbers are present in an integer array of 5 elements.

module top;
	integer arr[0:4];
	integer count;
	integer i;
	initial begin
		//store values
		for(i=0;i<5;i=i+1)begin
			arr[i]=i;
			$display("arr[%0d]=%0d",i,arr[i]);
		end
		//initialize count to 0
		count=0;
		//check eack array element for an even number
		for(i=0;i<5;i=i+1)begin
			if(arr[i]%2==0)begin
				$display("even=%0d",arr[i]);
				count=count+1;
			end
		end
		//print the count
		$display("count=%0d",count);
	end
endmodule

/*output
# arr[0]=0
# arr[1]=1
# arr[2]=2
# arr[3]=3
# arr[4]=4
# even=0
# even=2
# even=4
# count=3
*/
