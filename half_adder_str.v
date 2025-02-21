`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2025 23:35:44
// Design Name: 
// Module Name: half_adder_str
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


module half_adder_str(a,b,s,c);
    input a,b;
    output s,c;
    //parameter AND_DELAY=1 , XOR_DELAY=2;
    assign  s=a^b;
    assign  c=a&b;
    
endmodule
