module testbench_fulladder(
    );
    
    reg A, B, Cin; 
    wire S, Cout;
    
    full_adder fa(.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));
    
    initial begin
    A = 0; 
    B = 0; 
    Cin = 0;
    
    #100 $finish;
    end
    
    always begin
    #10 {A,B,Cin} = {A,B,Cin} + 1'b1;
    end
endmodule
