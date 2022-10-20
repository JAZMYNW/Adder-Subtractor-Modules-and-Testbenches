`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 01:40:31 PM
// Design Name: 
// Module Name: testbench_addersub
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


module testbench_addersub ;
       
    reg M;
    reg [3:0] A, B; 
    wire C;
    wire [3:0] S;
    wire V;
    
    adder_subtractor as(.A(A), .B(B), .M(M), .C(C), .V(V), .S(S));
    
    initial begin
    M = 0;
    A = 0;
    B = 0;
    end
    
    always begin
    #10 {A,B,M} = {A,B,M} + 1'b1;
    end
endmodule
