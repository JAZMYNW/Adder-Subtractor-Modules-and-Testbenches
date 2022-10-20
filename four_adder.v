`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 12:48:52 PM
// Design Name: 
// Module Name: four_adder
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2022 05:59:41 PM
// Design Name: 
// Module Name: four_adder
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


module four_adder(
    input Cin,
    input [3:0]A,
    input [3:0]B,
    output [3:0]S,
    output cout,
    output C3
   
    );
     wire w1, w2, w3;
    
    full_adder G1(.B(B[0]), .A(A[0]), .Cin(Cin), .Cout(w1), .S(S[0]));
    full_adder G2(.B(B[1]), .A(A[1]), .Cin(w1), .Cout(w2), .S(S[1]));
    full_adder G3(.B(B[2]), .A(A[2]), .Cin(w2), .Cout(w3), .S(S[2]));
    full_adder G4(.B(B[3]), .A(A[3]), .Cin(w3), .Cout(cout), .S(S[3]));

   
    assign C3=w3;
endmodule
