//Q. Write a Verilog code to store 5 values in an integer array using a for loop, where each value is the index multiplied by 10.

module top;
	integer arr[5:0];
	integer i;
	initial begin
		for(i=0;i<5;i=i+1)begin
			arr[i]=i*10;
			$display("arr[%0d]=%0d",i,arr[i]);
		end
	end
endmodule

/*output
# arr[0]=0
# arr[1]=10
# arr[2]=20
# arr[3]=30
# arr[4]=40
*/
