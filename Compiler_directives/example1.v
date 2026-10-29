`define VALUE 10

module top;
	integer intA[`VALUE-1:0];
	integer i;
	initial begin
		for(i=0;i<`VALUE;i=i+1)begin
			intA[i]=$urandom_range(10,100);
			#1;
			$display("IntA[%0d]=%0d",i,intA[i]);
		end
	end
endmodule

/*output
# IntA[0]=99
# IntA[1]=10
# IntA[2]=62
# IntA[3]=27
# IntA[4]=13
# IntA[5]=88
# IntA[6]=87
# IntA[7]=70
# IntA[8]=87
# IntA[9]=90
*/
