//Q.Write a Verilog code to find the sum of all elements in an integer array of size 5, where the array values are in the range 10 to 50.

module top;
	integer arrA1[0:5];
	integer arrA2[0:5];
	integer arrA3[0:5];
	integer i;
	initial begin
		for(i=0;i<6;i=i+1)begin
			arrA1[i]=$urandom_range(10,50);
			arrA2[i]=$urandom_range(10,50);
			arrA3[i]=arrA1[i]+arrA2[i];
			$display("arrA1[%0d]=%0d arrA2[%0d]=%0d arrA3[%0d]=%0d",i,arrA1[i],i,arrA2[i],i,arrA3[i]);
		end
	end
endmodule

/*output
# arrA1[0]=29 arrA2[0]=18 arrA3[0]=47
# arrA1[1]=34 arrA2[1]=26 arrA3[1]=60
# arrA1[2]=32 arrA2[2]=13 arrA3[2]=45
# arrA1[3]=19 arrA2[3]=30 arrA3[3]=49
# arrA1[4]=43 arrA2[4]=46 arrA3[4]=89
# arrA1[5]=12 arrA2[5]=25 arrA3[5]=37
*/
