`timescale 1 ns/1ps

module sr_latch(Q,notQ, En, S, R, nandSEN, nandREN);
    // declare all ports
    output wire Q, notQ;
    input wire En,S, R;
    //intermediate nets
    // nandSEN is the output of NAND(S,EN)
    // nandSREN is the output of NAND(R,EN)
    output wire nandSEN, nandREN;
    // delay of nand0 is 2 ns
    nand #4 nand0(Q, nandSEN, notQ);
    nand #4 nand1(notQ, nandREN, Q);
    nand #4 nand2(nandSEN, S, En);
    nand #4 nand3(nandREN, R, En);
 endmodule