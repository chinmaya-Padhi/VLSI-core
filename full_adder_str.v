`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2025 07:38:13
// Design Name: 
// Module Name: full_adder_str
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


module full_adder_str(a,b,cin,sum,carry);
    input a,b,cin;
    output sum,carry;
    
    wire s1,c1,c2;
    half_adder_str h1(a,b,s1,c1);
    half_adder_str h2(s1,cin,sum,c2);
    or o2(carry,c1,c2);
endmodule
