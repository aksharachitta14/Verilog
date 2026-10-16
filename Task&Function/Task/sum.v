//Q.Write a Verilog task to calculate the sum of all elements in an array and display the result.
//Initialize the result to 0 before calculating the sum.
module top;
	integer arr[7:0];
	reg [7:0]sum;
	task sum_elements;
		output [7:0]result;
		integer i;
		begin
			result=0;
			for(i=0;i<8;i=i+1)begin
				result=result+arr[i];
			end
		end
	endtask
	integer j;
	initial begin	
		for(j=0;j<8;j=j+1)begin
			arr[j]=$urandom_range(10,20);
			$display("Arr[%0d]=%0d",j,arr[j]);
		end
		/*arr[0]=8;
		arr[1]=7;
		arr[2]=6;
		arr[3]=5;
		arr[4]=4;
		arr[5]=3;
		arr[6]=2;
		arr[7]=1;*/

		sum_elements(sum);
		$display("Sum=%0d",sum);
	end
endmodule
/*output
===using for_loop===
# Arr[0]=17
# Arr[1]=20
# Arr[2]=18
# Arr[3]=13
# Arr[4]=15
# Arr[5]=19
# Arr[6]=13
# Arr[7]=20
# Sum=135

===using array index numbers===
# Sum=36
*/
