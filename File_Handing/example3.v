`define VALUE 20
module top;
	integer intA[`VALUE-1:0];
	integer i,fh;
	initial begin
		fh=$fopen("array_values.log");
		for(i=0;i<`VALUE;i=i+1)begin
			intA[i]=$urandom_range(10,90);
			$fdisplay(fh,"IntA[%0d]=%0d",i,intA[i]);
		end
		$fclose(fh);
	end
endmodule
