`timescale 1ns/100ps

// Input module of a Flip-Flop S-R without clock using NOR gates
module test_SRFF();
  reg S, R;
  wire Q, Q_prim;
  
  SRFF my_SR(S,R,Q,Q_prim);
  
  initial begin
    $dumpfile("out.vcd");
    $dumpvars(1,test_SRFF);
    
    S=0; R=0; #20
    S=1; R=0; #20
    S=0; R=0; #20
    S=0; R=1; #20
    S=0; R=0; #20
    S=1; R=1; #20
    #20
    $finish;
  end
endmodule