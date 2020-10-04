`timescale 1ns/100ps

// Input module of a Flip-Flop Latch S-R with CLK
module test_SRFF();
  reg S, R, CLK;
  wire Q, Q_prim;
  
  SRFF_w_CLK my_SR(S,R,Q,Q_prim,CLK);
  
  initial begin
    $dumpfile("out.vcd");
    $dumpvars(1,test_SRFF);
    
    CLK = 1;
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