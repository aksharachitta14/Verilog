//Q.Write a Verilog code to find both the maximum and minimum values in an integer array of 5 elements.

module top;
	integer arr[0:4];
	integer max,min;
	integer i;
	initial begin
		for(i=0;i<5;i=i+1)begin
			arr[i]=i;
			$display("arr[%0d]=%0d",i,arr[i]);
		end
		max=arr[0];
		min=arr[4];
		for(i=0;i<5;i=i+1)begin
			if(max < arr[i])begin
				max=arr[i];
			end
			if(min>arr[i])begin 
				min=arr[i];
			end
		end
				$display("Maximum Number=%0d",max);
				$display("Minimum Number=%0d",min);
	end
endmodule

/*output
# arr[0]=0
# arr[1]=1
# arr[2]=2
# arr[3]=3
# arr[4]=4
# Maximum Number=4
# Minimum Number=0
*/
