`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2025 17:46:55
// Design Name: 
// Module Name: Parallel_Adder_TB
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

`timescale 1ns/1ps
module Parallel_Adder_TB();
    // Inputs
    reg a1, b1, a2, b2, a3, b3, a4, b4, cin;
    // Outputs
    wire s1, s2, s3, s4, c4;

    // Instantiate the p_adder module
    p_adder uut (
        .a1(a1), .b1(b1), .a2(a2), .b2(b2),
        .a3(a3), .b3(b3), .a4(a4), .b4(b4),
        .cin(cin), .s1(s1), .s2(s2), .s3(s3), .s4(s4), .c4(c4)
    );

    initial begin
        // Monitor values
        $monitor("Time=%0t | a1=%b b1=%b a2=%b b2=%b a3=%b b3=%b a4=%b b4=%b cin=%b | s1=%b s2=%b s3=%b s4=%b c4=%b", 
                 $time, a1, b1, a2, b2, a3, b3, a4, b4, cin, s1, s2, s3, s4, c4);
        
        // Test Cases
        a1=0; b1=0; a2=0; b2=0; a3=0; b3=0; a4=0; b4=0; cin=0; #10;
        a1=0; b1=1; a2=0; b2=1; a3=0; b3=1; a4=0; b4=1; cin=0; #10;
        a1=1; b1=0; a2=1; b2=0; a3=1; b3=0; a4=1; b4=0; cin=0; #10;
        a1=1; b1=1; a2=1; b2=1; a3=1; b3=1; a4=1; b4=1; cin=0; #10;
        a1=1; b1=1; a2=0; b2=1; a3=1; b3=0; a4=0; b4=1; cin=1; #10;
        a1=1; b1=0; a2=1; b2=1; a3=0; b3=0; a4=1; b4=0; cin=1; #10;
        
        $finish;
    end
endmodule
