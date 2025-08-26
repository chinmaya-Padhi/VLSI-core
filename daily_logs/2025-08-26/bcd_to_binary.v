// BCD to Binary convertion
module bcd_to_binary (	o_bin,
						i_D1,
						i_D0 );
						
	output 	[7:0]		o_bin;
	input	[3:0]		i_D1;
	input	[3:0]		i_D0;
	
	assign	o_bin = (i_D1*4'd10)+i_D0;
	
endmodule

// Test bench
module top();
	
	wire	o_bin;
	
	reg		i_D1;
	reg		i_D0;
	
	bcd_to_binary	dut	(	.o_bin(o_bin),
							.i_D1(i_D1),
							.i_D0(i_D0) );
							
	initial	begin
	#10 i_D1=4'd5 ; i_D0=4'd9;
	#10;
	$finish;
	end
	
endmodule
