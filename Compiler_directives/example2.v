module top;
	reg a,b,c;

	`ifdef BEH 
		reg sum,carry;
	`else
		wire sum,carry;
	`endif

	`ifdef DATAFLOW
		assign sum=a^b^c;
		assign carry=a&b | b&c | a&c;
		
		initial begin
			$display("===DATAFLOW===");
		end
	`elsif BEH
		always @(*)begin
			sum=a^b^c;
			carry=a&b | b&c | a&c;
		end
		initial begin
			$dispaly("===BEHAVE===");
		end

		`elsif GATELEVEL
			wire n1,n2,n3;
              xor g1(n1,a,b);
              xor g2(sum,c,n1);
              and g3(n2,a,b);
              and g4(n3,c,n1);
              or g5(carry,n2,n3);
			  initial begin
			  	$display("===GATE LEVEL===");
			  end
		`else
			  initial begin
			  	$display("==No Arguments Passed in Vlog==");
			  end
		`endif
		initial begin
			repeat(10)begin
				{a,b,c}=$random;
				#1;
				$display("A=%0d B=%0d C=%0d SUM=%0d CARRY=%0d",a,b,c,sum,carry);
			end
		end
endmodule

/*output
# ===GATE LEVEL===
# A=1 B=0 C=0 SUM=1 CARRY=0
# A=0 B=0 C=1 SUM=1 CARRY=0
# A=0 B=0 C=1 SUM=1 CARRY=0
# A=0 B=1 C=1 SUM=0 CARRY=1
# A=1 B=0 C=1 SUM=0 CARRY=1
# A=1 B=0 C=1 SUM=0 CARRY=1
# A=1 B=0 C=1 SUM=0 CARRY=1
# A=0 B=1 C=0 SUM=1 CARRY=0
# A=0 B=0 C=1 SUM=1 CARRY=0
# A=1 B=0 C=1 SUM=0 CARRY=1
*/

