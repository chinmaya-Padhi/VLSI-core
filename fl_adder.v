`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 20:38:21
// Design Name: 
// Module Name: fl_adder
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


module fl_adder(
    input a,b,cin,
    output sum,carry
    );
    wire s1,c1,c2;
    half_adder h1(a,b,s1,c1);
    half_adder h2(s1,cin,sum,c2);
    or o2(carry,c1,c2);
endmodule
 /*   module half_adder(
        input x,y,
        output s,c
    );
    assign s=x^y;
    assign c=x&y;
    endmodule */
