`timescale 1ns/100ps

// Descriptive Module of a 4 Bits Adder with Carry Lookahead
module test_adder_with_cla();
  reg [3:0] A, B;
  wire [4:0] Sum;
  adder_with_cla adder_cla(A, B, 0, Sum[3:0], Sum[4]);
  initial
    begin
      $dumpfile("out.vcd");
      $dumpvars(1,test_adder_with_cla);
      
      		A =  0; B =  0;
      #25	A =  2; B =  1;
      #25	A =  4; B = 10;
      #25	A = 10; B = 10;
      #25	A =  2; B =  2;
      #25	A = 15; B = 15;
      #25;
    end
  initial
    #250 $finish;
endmodule