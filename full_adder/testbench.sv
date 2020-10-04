`timescale 1ns/100ps
// Input module of a full adder circuit.
// Using logic gates.
module test_full_adder();
  reg A,B,Cin;
  wire S,Cout;
  full_adder full_1(A, B, Cin, S, Cout);
  initial
    begin
      $dumpfile("out.vcd");
      $dumpvars(1,test_full_adder);
      
      		A = 1'b0; B = 1'b0; Cin = 1'b0;
      #25	A = 1'b0; B = 1'b0; Cin = 1'b1;
      #25	A = 1'b0; B = 1'b1; Cin = 1'b0;
      #25	A = 1'b0; B = 1'b1; Cin = 1'b1;
      #25	A = 1'b1; B = 1'b0; Cin = 1'b0;
      #25	A = 1'b1; B = 1'b0; Cin = 1'b1;
      #25	A = 1'b1; B = 1'b1; Cin = 1'b0;
      #25	A = 1'b1; B = 1'b1; Cin = 1'b1;
      #25;
    end
  initial
    #250 $finish;
endmodule