`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2025 22:14:19
// Design Name: 
// Module Name: mux16_01
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


module mux16_01(
    input i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,s0,s1,s2,s3,
    output y
    );
    wire y0,y1,y2,y3;
    mux_4_1 mux1(i0,i1,i2,i3,s0,s1,y0);
    mux_4_1 mux2(i4,i5,i6,i7,s0,s1,y1);
    mux_4_1 mux3(i8,i9,i10,i11,s0,s1,y2);
    mux_4_1 mux4(i12,i13,i14,i15,s0,s1,y3);
    mux_4_1 mux5(y0,y1,y2,y3,s2,s3,y);
endmodule
