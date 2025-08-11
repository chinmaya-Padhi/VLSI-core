// 2 : 4 decoder

modul decoder2_4 (	o_y0,
					o_y1,
					o_y2,
					o_y3,
					i_i0,
					i_i1);
					
	output			o_y0;
	output			o_y1;
	output			o_y2;
	output			o_y3;
	
	input			i_i0;
	input			i_i1;
	
	assign o_y0 =  ~(i_i1) & ~(i_i0);
	assign o_y1 =  ~(i_i1) & i_i0;
	assign o_y2 =  i_i1    & ~(i_i0);
	assign o_y3 =  i_i1    & i_i0;
	
endmodule
