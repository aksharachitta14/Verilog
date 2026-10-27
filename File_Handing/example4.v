module top;
	integer i,fh;
	reg[35*8:0]rd_fh;
	initial begin
		fh=$fopen("abc.v","r");
		for(i=0;i<20;i=i+1)begin
			$fgets(rd_fh,fh);
			$write("Read_data=%0s",rd_fh);
		end
		$fclose(fh);
	end
endmodule
/*output
# Read_data=IntA[0]=28
# Read_data=IntA[1]=38
# Read_data=IntA[2]=47
# Read_data=IntA[3]=81
# Read_data=IntA[4]=86
# Read_data=IntA[5]=56
# Read_data=IntA[6]=23
# Read_data=IntA[7]=53
# Read_data=IntA[8]=75
# Read_data=IntA[9]=29
# Read_data=IntA[10]=88
# Read_data=IntA[11]=24
# Read_data=IntA[12]=40
# Read_data=IntA[13]=55
# Read_data=IntA[14]=70
# Read_data=IntA[15]=24
# Read_data=IntA[16]=61
# Read_data=IntA[17]=90
# Read_data=IntA[18]=81
# Read_data=IntA[19]=47
*/
