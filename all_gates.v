`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2025 15:58:16
// Design Name: 
// Module Name: all_gates
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


module all_gates(
    input a,b,
    output y0,y1,y2,y3,y4,y5,y6
    );
    // not gate 
    assign y0=~a;
    // and gate
    assign y1=a&b;
    // or gate
    assign y2=a|b;
    // nand gate
    assign y3=~(a&b);
    // nor gate
    assign y4=~(a|b);
    // xor gate
    assign y5=a^b;
    // xnor gate
    assign y6=~(a^b);
endmodule
