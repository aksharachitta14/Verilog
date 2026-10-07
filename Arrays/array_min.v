//Q. Write a Verilog code to find the minimum value in an integer array of 5 elements.

module top;
	integer arr[0:4];
	integer i;
	integer min;
	initial begin
		//store value in array
		for(i=0;i<5;i=i+1)begin
			arr[i]=i;
			$display("arr[%0d]=%0d",i,arr[i]);
		end
		//take the first array value as maximum
		min=arr[0];
		//compare all array values with max
		for(i=0;i<5;i=i+1)begin
			if(min>arr[i])
				min=arr[i];
		end
		//print min value
		$display("Min=%0d",min);
	end
endmodule

/*output
# arr[0]=0
# arr[1]=1
# arr[2]=2
# arr[3]=3
# arr[4]=4
# Min=0
*/
