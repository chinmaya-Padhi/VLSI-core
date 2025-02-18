`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2025 16:53:50
// Design Name: 
// Module Name: DE_mux_1_4
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


module DE_mux_1_4(
    input i,s0,s1,
    output y0,y1,y2,y3
    );
    assign y0=(~s1)&(~s0)&i;
    assign y1=(~s1)&s0&i;
    assign y2=s1&(~s0)&i;
    assign y3=s1&s0&i;
endmodule
