// Besic Gates
module	Basic_gates(	i_a,
						i_b,
						o_y	);
						
	input				i_a;
	input				i_b;
	
	output	[6:0]		o_y;
	
	assign	o_y[0]	=	!(i_a);
	assign	o_y[1]	=	i_a & i_b;
	assign	o_y[2]	=	i_a | i_b;
	assign	o_y[3]	=	~(i_a & i_b);
	assign	o_y[4]	=	~(i_a | i_b);
	assign	o_y[5]	=	i_a ^ i_b;
	assign	o_y[6]	=	~(i_a ^ i_b);
	
endmodule

// Test bench
module top();

	wire [6:0]  o_y;
	
	reg			i_a;
	reg			i_b;
	
	Basic_gates		dut (	.i_a(i_a),
							.i_b(i_b),
							.o_y(o_y) );
							
	initial begin
		i_a=1'b0;	i_b=1'b0;
	#10 i_a=1'b0;	i_b=1'b1;
	#10 i_a=1'b1;	i_b=1'b0;
	#10 i_a=1'b1;	i_b=1'b1;
	#10;
	$finish;
	end

endmodule
