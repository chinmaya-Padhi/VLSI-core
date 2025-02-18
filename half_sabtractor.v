`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2025 16:14:19
// Design Name: 
// Module Name: half_sabtractor
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


module half_sabtractor(
    input a,b,
    output diff,borrow
    );
    assign diff=a^b;
    assign borrow=~a&b;
endmodule
