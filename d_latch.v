`timescale 1ns/1ps

module d_latch(Q,notQ, En, D);
    // declare all ports
    output wire Q, notQ;
    input wire D, En;
    
    wire nandDEN,nandnotDEN;
    
    not #2 (notD,D);
    nand #2 nand0(Q, nandDEN, notQ);
    nand #2 nand1(notQ, Q, nandnotDEN);
    nand #2 nand2(nandDEN,D,En);
    nand #2 nand3(nandnotDEN, notD, En);
 endmodule