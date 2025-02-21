`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2025 07:48:20
// Design Name: 
// Module Name: fa_str_tb
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


module fa_str_tb();
   reg a,b,cin;
   wire sum,carry;
   full_adder_str f1(a,b,cin,sum,carry);
   
   initial
   begin
   a=1'b0; b=1'b0;cin=1'b0;
   #5
   a=1'b0; b=1'b0;cin=1'b1;
   #5
   a=1'b0; b=1'b1;cin=1'b0;
   #5
   a=1'b0; b=1'b1;cin=1'b1;
   #5
   a=1'b1; b=1'b0;cin=1'b0;
   #5
   a=1'b1; b=1'b0;cin=1'b1;
   #5
   a=1'b1; b=1'b1;cin=1'b0;
   #5
   a=1'b1; b=1'b1;cin=1'b1;
   #5
   $finish;
   end
endmodule
