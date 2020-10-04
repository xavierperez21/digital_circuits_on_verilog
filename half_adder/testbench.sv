`timescale 1ns/100ps
// Input Module of a Half adder circuit
module test_half_adder();
  reg A,B;
  wire S, Cout;
  half_adder adder1(A, B, S, Cout);
  initial
    begin
      $dumpfile("out.vcd");
      $dumpvars(1,test_half_adder);
      
      		A = 1'b0; B = 1'b0;
      #25	A = 1'b0; B = 1'b1;
      #25	A = 1'b1; B = 1'b0;
      #25	A = 1'b1; B = 1'b1;
      #25;
    end
  initial
    #250 $finish;
endmodule