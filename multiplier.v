// 4 bit multiplier

module multiplier(	o_y,
					i_a,
					i_b);
	
	parameter       DATA_WIDTH = 4;
	
	output	[(DATA_WIDTH*2)-1] : 0	o_y;
	
	input 	[DATA_WIDTH-1 : 0]		i_a;
	input	[DATA_WIDTH-1 : 0]		i_b;
	
	assign o_y = i_a * i_b ;
	
endmodule
