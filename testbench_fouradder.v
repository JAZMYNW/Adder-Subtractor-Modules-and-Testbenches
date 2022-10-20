module testbench_fouradder(
    );
    reg Cin; 
    reg[3:0] A, B; 
    wire Cout; 
    wire[3:0] S; 
    wire V; 
    
    four_adder fa(.Cin(Cin), .A(A), .B(B), .Cout(Cout), .S(S), .V(V));
    
    initial 
    begin
    Cin = 0;
    A = 0; 
    B = 0; 
    end 
    
    always begin 
    #10 {A, B} = {A, B} + 1'b1; 
    end     
endmodule
