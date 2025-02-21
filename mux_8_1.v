`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2025 19:43:37
// Design Name: 
// Module Name: mux_8_1
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


module mux_8_1(
    input i0,i1,i2,i3,i4,i5,i6,i7,so,s1,s2,
    output y
    );
    wire y0,y1;
    mux_4_1 mux1(i0,i1,i2,i3,s1,s0,y0);
    mux_4_1 mux2(i4,i5,i6,i7,s1,s0,y1);
    mux_4_1 mux3(y1,yo,s3,s2,y);
    
endmodule
