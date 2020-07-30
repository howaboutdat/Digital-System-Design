`timescale 1ns/1ps

module adder_2bit(Carry, Sum, A, B);
    //declare input and output ports
    input wire [1:0] A, B;
    output wire [1:0] Sum;
    wire c0;
    output wire Carry;
    
    //instantiate 2 bit adder
    full_adder sum0(Sum[0], c0, A[0], B[0], 0);
    full_adder sum1(Sum[1],Carry, A[1], B[1], c0);
    
endmodule
    