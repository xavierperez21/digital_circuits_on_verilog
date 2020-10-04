`timescale 1ns/100ps
// Descriptive module of a Half Adder circuit

module half_adder(
  input A,
  input B,
  output S,
  output Cout);
  xor (S, A, B);
  and (Cout, A, B);
endmodule