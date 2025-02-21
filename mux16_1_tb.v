`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2025 23:09:32
// Design Name: 
// Module Name: mux16_1_tb
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


module mux16_1_tb();
     reg i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15;
    reg s0, s1, s2, s3;
    wire y;
    
    mux16_01 uut (.i0(i0), .i1(i1), .i2(i2), .i3(i3), .i4(i4), .i5(i5), .i6(i6), .i7(i7),
                  .i8(i8), .i9(i9), .i10(i10), .i11(i11), .i12(i12), .i13(i13), .i14(i14), .i15(i15),
                  .s0(s0), .s1(s1), .s2(s2), .s3(s3), .y(y));
    
    initial begin
        {i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15} = 16'b1111111111111111;
        
        s0 = 0; s1 = 0; s2 = 0; s3 = 0; #5;
        s0 = 0; s1 = 0; s2 = 0; s3 = 1; #5;
        s0 = 0; s1 = 0; s2 = 1; s3 = 0; #5;
        s0 = 0; s1 = 0; s2 = 1; s3 = 1; #5;
        s0 = 0; s1 = 1; s2 = 0; s3 = 0; #5;
        s0 = 0; s1 = 1; s2 = 0; s3 = 1; #5;
        s0 = 0; s1 = 1; s2 = 1; s3 = 0; #5;
        s0 = 0; s1 = 1; s2 = 1; s3 = 1; #5;
        s0 = 1; s1 = 0; s2 = 0; s3 = 0; #5;
        s0 = 1; s1 = 0; s2 = 0; s3 = 1; #5;
        s0 = 1; s1 = 0; s2 = 1; s3 = 0; #5;
        s0 = 1; s1 = 0; s2 = 1; s3 = 1; #5;
        s0 = 1; s1 = 1; s2 = 0; s3 = 0; #5;
        s0 = 1; s1 = 1; s2 = 0; s3 = 1; #5;
        s0 = 1; s1 = 1; s2 = 1; s3 = 0; #5;
        s0 = 1; s1 = 1; s2 = 1; s3 = 1; #5;
        
        $finish;
    end
endmodule

