`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.02.2025 17:50:13
// Design Name: 
// Module Name: T_ff
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


module T_ff(
    input t,clk,pre,rst,
    output reg Q // reg because Q is assigned inside an always block. 
    //In Verilog, signals updated in always blocks must be declared as reg .
    );
    always @(negedge clk, posedge pre, posedge rst) begin
        // preset/reset have higher priority over the toggle function
        if (pre) begin
            Q <= 1'b1; // Immediately set output to 1
        end   
        else if(rst) begin
            Q <= 1'b0; //Immediately clear output to 0
        end
        else if (t) begin // Synchronous toggle operation (lowest priority)
            Q <= ~Q; // Toggle output if t is high
        end
        // No else clause needed  Q retains value when t is low
    end
endmodule
