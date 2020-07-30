`timescale 1ns/1ps

module d_flip_flop(Q,notQ, Clk, D,notClk, Qm);
    // declare all ports
    output wire Q, notQ; // outputs of slave
    input wire Clk, D;
    
    //intermediate nets
    output wire notClk;
    output wire Qm; // output of master
    // notQm is used in instantiation but left unconnected
    wire notQm;
    // instantiate the NOT gate
    not #2 (notClk, Clk);
    // instantiate D-latches
    d_latch dmaster(Qm,notQm, notClk, D);
    d_latch dslave(Q,notQ, Clk, Qm);
 endmodule