`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2025 12:08:49
// Design Name: 
// Module Name: decoder_2_4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder_2_4(
    input i0,i1,e,
    output y0,y1,y2,y3
    );
    assign y0=(~i1)&(~i0)&e;
    assign y1=(~i1)&(i0)&e;
    assign y2=(i1)&(~i0)&e;
    assign y3=(i1)&(i0)&e;
endmodule
