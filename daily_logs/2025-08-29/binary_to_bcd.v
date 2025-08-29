// Binary to BCD convertion
module binary_to_bcd (  o_D1,
						o_D0,
						i_bin );
						
	output  reg     [3:0]	o_D1;
	output	reg  	[3:0]	o_D0;
	
	input			[7:0]	i_bin;
	
	integer					i;
	
	reg		[19:0]			shift;
	
	always  @(*)  begin
		shift=0;
		shift[7:0] = bin;
		
		//Double dabble algo
		for (i=0; i<8; i=i+1) begin
			if(shift[11:8] >=5)
				shift[11:8] = shift[11:8] + 3;
			if(shift[15:12] >=5)
				shift[15:12] = shift[15:12] +3;
			
			shift = shift << 1;
			
		end
		
		o_D1= shift[15:12];
		o_D0= shift[11:8];
		
	end
	
endmodule

//------------- Testbench-------------

module top();
	
	wire	[3:0]	o_D1;
	wire	[3:0]	o_D0;
	
	reg		[7:0] 	i_bin;
	
	binary_to_bcd  uut ( .o_D1(o_D1),
						 .o_D0(o_D0),
						 .i_bin(i_bin) );
						 
	initial   begin
		i_bin = 8'd59;
	#10;
	$finish;
	end
	
endmodule

// Explanation 
shift = 0000 0000 0011 1011   (20 bits)
          ^^^^ ^^^^ ^^^^^^^
          |    |    |
          |    |    binary input = 00111011 (59)
          |    ones BCD (shift[11:8]) = 0000
          tens BCD (shift[15:12]) = 0000

/*🔹 Iteration 1 (i = 0)

1.Check BCD digits:

	shift[11:8] = 0000 (0) → not ≥ 5 → no change.

	shift[15:12] = 0000 (0) → not ≥ 5 → no change.

Shift left:*/

shift = 0000 0000 0111 0110


(Binary MSB 0 shifted in, LSB dropped).

/*🔹 Iteration 2 (i = 1)

Check digits:

	ones = 0000 (0) → no change.

	tens = 0000 (0) → no change.

Shift left:*/

shift = 0000 0000 1110 1100

/*🔹 Iteration 3 (i = 2)

Check digits:

	ones = 0000 (0) → no change.

	tens = 0000 (0) → no change.

Shift left:*/

shift = 0000 0001 1101 1000

/*🔹 Iteration 4 (i = 3)

Check digits:

	ones = 0001 (1) → < 5 → no change.

	tens = 0000 (0) → no change.

Shift left:*/

shift = 0000 0011 1011 0000

/*🔹 Iteration 5 (i = 4)

Check digits:

	ones = 0011 (3) → < 5 → no change.

	tens = 0000 (0) → no change.

Shift left:*/

shift = 0000 0111 0110 0000

/*🔹 Iteration 6 (i = 5)

Check digits:

	ones = 0111 (7) → ≥ 5 → add 3 → becomes 1010 (10).

	tens = 0000 (0) → no change.

Shift left:*/

shift = 0000 1010 1100 0000

/*🔹 Iteration 7 (i = 6)

Check digits:

	ones = 1010 (10) → ≥ 5 → add 3 → becomes 1101 (13).

	tens = 0000 (0) → no change.

Shift left:*/

shift = 0001 1010 1000 0000

/*🔹 Iteration 8 (i = 7)

Check digits:

	ones = 1010 (10) → ≥ 5 → add 3 → becomes 1101 (13).

	tens = 0001 (1) → < 5 → no change.

Shift left:*/

shift = 0011 0100 0000 0000

/*🔹 Final Result

After 8 iterations:

	tens = shift[15:12] = 0101 (5)

	ones = shift[11:8] = 1001 (9)*/

✅ So Binary 59 → BCD 0101 1001 (which is 5 and 9).
























