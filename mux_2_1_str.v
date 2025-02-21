`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2025 08:07:37
// Design Name: 
// Module Name: mux_2_1_str
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


module mux_2_1_str(i0,i1,s0,y);
    input i0,i1,s0;
    output y;
    assign y=(~s0)&i0+s0&i1;
endmodule
