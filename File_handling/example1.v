//Write the data into a file using $fdisplay

module top;
	integer fd;
	initial begin
		fd=$fopen("output.txt","w");
		$fdisplay(fd,"Hello verilog");
		$fdisplay(fd,"Welcome");
		$fclose(fd);
	end
endmodule 
