//Q.Write a Verilog code to count how many odd numbers are present in an integer array of 5 elements.

module top;
	integer arr[0:4];
	integer count;
	integer i;
	initial begin
		for(i=0;i<5;i=i+1)begin
			arr[i]=i;
			$display("arr[%0d]=%0d",i,arr[i]);
		end
		count=0;
		for(i=0;i<5;i=i+1)begin
			if(arr[i]%2==1)begin
				$display("odd=%0d",arr[i]);
				count=count+1;
			end
		end
		$display("count=%0d",count);
	end
endmodule

/*output
# arr[0]=0
# arr[1]=1
# arr[2]=2
# arr[3]=3
# arr[4]=4
# odd=1
# odd=3
# count=2
*/
