//Indexing
module indexing;
	reg [7:0]data;
	initial begin
		data=8'b11110000;
		$display("Data=%b",data);
		$dsiplay("Bit 7=%b",data[7]);
		$display("Bit 3=%b",data[3]);
		$display("Bit 0=%b",data[0]);
		$display("================");
		$display("Data=%b",data);
		$display("Upper 4bits=%b",data[7:4]);
		$display("Lower 4bits=%b",data[3:0]);
		$display("Bits[5:2]=%b",data[5:2]);
	end
endmodule

/*output
# Data=11110000
# Bit 7=1
# Bit 3=0
# Bit 0=0
# ================
# Data=11110000
# Upper 4bits=1111
# Lower 4bits=0000
# Bits[5:2]=1100
*/
