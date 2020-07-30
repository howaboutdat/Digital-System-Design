`timescale 1ns/1ps
`default_nettype none

module full_adder(S, Cout, A, B, Cin);
    // declare output and input ports, all wires are 1 bit
    input wire A, B, Cin, S;
    output wire Cout;
    // declare internal nets
    wire andBCin, andACin, andAB;
    
    // use dataflow to describe the gate-level activity of Sum S, input A, B and carry out Cout
    assign S = A ^ B ^ Cin;
    assign andAB = A & B;   
    assign andBCin = B & Cin;
    assign andACin = A & Cin;
    
    assign Cout = andAB | andBCin | andACin;
 endmodule
 