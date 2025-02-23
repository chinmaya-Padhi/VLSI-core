`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 21:45:58
// Design Name: 
// Module Name: p_adder
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


module p_adder(
    input a1,b1,a2,b2,a3,b3,a4,b4,cin,
    output s1,s2,s3,s4,c4
    );
    wire c1,c2,c3;

    fl_adder fa1(a1,b1,cin,s1,c1);
    fl_adder fa2(a2,b2,c1,s2,c2);
    fl_adder fa3(a3,b3,c2,s3,c3);
    fl_adder fa4(a4,b4,c3,s4,c4);
endmodule
