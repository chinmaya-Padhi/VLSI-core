`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2025 07:26:55
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();
    reg a,b;
    wire s,c;
    half_adder_str ha(a,b,s,c);
    initial
    begin
    a=1'b0;b=1'b0;
    #5
    a=1'b0;b=1'b1;
    #5
    a=1'b1;b=1'b0;
    #5
    a=1'b1;b=1'b1;
    #5
    
    $finish;
    end
endmodule
