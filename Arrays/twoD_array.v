//Q. Write a Verilog code to create a 3×4 integer array and fill it using nested for loops with i+j.

module top;
	integer arr[3:0][4:0];
	integer i,j;
	initial begin
		for(i=0;i<3;i=i+1)begin
			for(j=0;j<4;j=j+1)begin
				arr[i][j]=i+j;
			$display("arr[%0d][%0d]=%0d",i,j,arr[i][j]);
			end
		end
	end
endmodule

/*output
# arr[0][0]=0
# arr[0][1]=1
# arr[0][2]=2
# arr[0][3]=3
# arr[1][0]=1
# arr[1][1]=2
# arr[1][2]=3
# arr[1][3]=4
# arr[2][0]=2
# arr[2][1]=3
# arr[2][2]=4
# arr[2][3]=5
*/
