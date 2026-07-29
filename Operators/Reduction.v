//Reduction Operators
module reduction;
	reg [3:0]a;
	initial begin
		a=4'b1011;
		$display("a=%b",a);
		$display("Reduction and &a=%b",&a);
		$display("Reduction or |a=%b",|a);
		$display("Reduction xor ^a=%b",^a);
		$display("Reduction xnor ~^a=%b",~^a);
		$display("Reduction nand ~&a=%b",~&a);
		$display("Reduction nor ~|a=%b",~|a);
		$display("Reduction not !a=%b",!a);
	end
endmodule

/*output
# a=1011
# Reduction and &a=0
# Reduction or |a=1
# Reduction xor ^a=1
# Reduction xnor ~^a=0
# Reduction nand ~&a=1
# Reduction nor ~|a=0
# Reduction not !a=0
*/
