`timescale 1ns/1ns
// Descriptive module of a Half Adder circuit

module half_adder(
  input A,
  input B,
  output S,
  output Cout);
  xor #5 (S, A, B);
  and #5 (Cout, A, B);
endmodule