`timescale 1ns/10ps

// Descriptive module of the Multiplexer 4 to 1 circuit using Logic Gates
module Mux_4_1(
  input [3:0] I,
  input [1:0] s,
  output Y);
  	wire a,b,c,d,s1_prim,s0_prim;
    not (s1_prim,s[1]);
    not (s0_prim,s[0]);
    and (a,I[0],s1_prim,s0_prim);
    and (b,I[1],s1_prim,s[0]);
    and (c,I[2],s[1],s0_prim);
    and (d,I[3],s[1],s[0]);
    or (Y,a,b,c,d);
endmodule