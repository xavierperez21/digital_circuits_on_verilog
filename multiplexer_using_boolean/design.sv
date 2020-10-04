`timescale 1ns/10ps

// Descriptive module of the Multiplexer 4 to 1 circuit using Boolean Expressions
module Mux_4_1(
  input [3:0] I,
  input [1:0] s,
  output Y);  // "Y" Declared as a register to keep its value through events
  assign Y = (~s[1] & ~s[0] & I[0]) |
    		 (~s[1] &  s[0] & I[1]) |
    		 ( s[1] & ~s[0] & I[2]) |
    		 ( s[1] &  s[0] & I[3]);
  
endmodule