`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 01:35:45 PM
// Design Name: 
// Module Name: addersub
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


module adder_subtractor(
    input[3:0] A,
    input[3:0] B,
    input M,
    output C,
    output V,
    output[3:0] S,
    wire[3:0] w,
    wire w_o
    
    );
    
    xor G1(w[0], M, B[0]);
    xor G2(w[1], M, B[1]);
    xor G3(w[2], M, B[2]);
    xor G4(w[3], M, B[3]);
    
   four_adder F1(.Cin(M), .A(A), .B(w), .C3(C), .S(S), .cout(w_o));
   
   xor G5(V,w_o,C);
    
endmodule
