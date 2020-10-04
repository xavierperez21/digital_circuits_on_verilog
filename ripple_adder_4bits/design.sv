`timescale 1ns/100ps

// Descriptive Module of a 4 Bits Adder (Ripple Adder)
module ripple_adder(
  input [3:0] A,
  input [3:0] B,
  input Ci,
  output [3:0] S,
  output Co);
  	wire C1,C2,C3;
  	full_adder full_1(A[0],B[0],Ci,S[0],C1);
  	full_adder full_2(A[1],B[1],C1,S[1],C2);
  	full_adder full_3(A[2],B[2],C2,S[2],C3);
  	full_adder full_4(A[3],B[3],C3,S[3],Co);
endmodule