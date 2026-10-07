//Q. Write a Verilog code to find the average of 5 integer array elements.

module top;
	integer arr[0:4];
	integer sum;
	integer avg;
	integer i;
	initial begin
		//store values
		for(i=0;i<5;i=i+1)begin
			arr[i]=i;
			$display("arr[%0d]=%0d",i,arr[i]);
		end
		//initialize sum
		sum=0;
		//add array elements
		for(i=0;i<5;i=i+1)begin
			sum=sum+arr[i];
		end
		$display("sum=%0d",sum);
		//calculate average
		avg=sum/5;
		$display("avg=%0d",avg);

	end
endmodule

/*output
# arr[0]=0
# arr[1]=1
# arr[2]=2
# arr[3]=3
# arr[4]=4
# sum=10
# avg=2
*/
