`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2025 20:52:12
// Design Name: 
// Module Name: fl_adder_tb
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


module fl_adder_tb();
    reg a,b,cin;
    wire s,c;
    fl_adder f1(a,b,cin,s,c);
    initial
    begin
    a=1'b0;b=1'b0;cin=1'b0;
    #5
    a=1'b0;b=1'b0;cin=1'b1;
    #5
    a=1'b0;b=1'b1;cin=1'b0;
    #5
    a=1'b0;b=1'b1;cin=1'b1;
    #5
    a=1'b1;b=1'b0;cin=1'b0;
    #5
    a=1'b1;b=1'b0;cin=1'b1;
    #5
    a=1'b1;b=1'b1;cin=1'b0;
    #5
    a=1'b1;b=1'b1;cin=1'b1;
    #5
    
    $finish;
    end
    
endmodule
