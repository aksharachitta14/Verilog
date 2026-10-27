//Read data from a file using $fgets

module top;
	integer fd;
	integer status;
	reg [239:0]str;
	initial begin
		fd=$fopen("input.txt","r");
		if(fd!=0)begin
			status=$fgets(str,fd);
			$display("Data=%0s",str);
			$fclose(fd);
		end
		else
		$display("File opeing failed");
	end
endmodule

/*output
# Data=Akshara
*/
