//Pyramid
module pyramid;
	integer i,j;
	initial begin
		for(i=1;i<=5;i=i+1)begin
			//space
			for(j=1;j<=5-i;j=j+1)begin
				$write(" ");
			end
			//stars
			for(j=1;j<=2*i-1;j=j+1)begin
				$write("*");
			end
			$display("");
		end
	end
endmodule

/*
We use 2*i - 1 because a pyramid requires odd numbers of stars (1, 3, 5, 7, 9, ...), and 2*i - 1 generates exactly that sequence.
case1:
i=1
spaces=5-1=4
stars=2x1-1=1
output=*
case2:
i=2
spaces=5-2=3
stars=2x2-1=3
output:***
case3:
i=3
spaces=5-3=2
stars=2x3-1=5
output=*****
*/

/*output
     *
    ***
   *****
  *******
 *********
*/
