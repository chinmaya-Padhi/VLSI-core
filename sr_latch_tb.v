`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.02.2025 18:22:54
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb();
    reg s,r;
    wire q,qbar;
    sr_latch sr1(~s,~r,q,qbar);
    initial
    begin
    s=1'b0;r=1'b0;
    #5
    s=1'b0;r=1'b1;
    #5
    s=1'b1;r=1'b0;
    #5
    s=1'b1;r=1'b1;
    #5
    $finish;
    end
endmodule
