//Q. Write a Verilog code to find the maximum value in an integer array of 5 elements.

module top;
	integer arr[0:4];
	integer i;
	integer max;
	initial begin
		//store values in the array
		for(i=0;i<5;i=i+1)begin
			arr[i]=i;
			$display("arr[%0d]=%0d",i,arr[i]);
		end
		//take the first array value as maximum
		max=arr[0];
		//compare all array valueswith max
		for(i=0;i<5;i=i+1)begin
			if(arr[i]>max)
			max=arr[i];
		end
		//print the max value
		$display("max=%0d",max);
	end
endmodule

/*output
# arr[0]=0
# arr[1]=1
# arr[2]=2
# arr[3]=3
# arr[4]=4
# max=4
*/
