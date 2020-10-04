`timescale 1ns/100ps

// Descriptive module of a Flip-Flop S-R without clock using NOR gates
module SRFF(
  input S, R,
  output Q, Q_prim);
  nor (Q_prim,S,Q);
  nor (Q,R,Q_prim);
endmodule