`timescale 1ns/1ns
// Descriptive module of a full adder circuit.
// Using logic gates.
module full_adder(
  input A, B, Cin,
  output S, Cout);
  	wire P,G,H;
  	half_adder half1(A,B,P,G);
  	half_adder half2(P,Cin,S,H);
  	or #5(Cout,G,H);
endmodule