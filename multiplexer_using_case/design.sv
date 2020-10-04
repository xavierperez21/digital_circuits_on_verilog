`timescale 1ns/10ps

// Descriptive module of the Multiplexer 4 to 1 circuit using Case
module Mux_4_1(
  input [3:0] I,
  input [1:0] s,
  output reg Y);  // "Y" Declared as a register to keep its value through events
  
  always @ (s[0], s[1], I[0], I[1], I[2], I[3]) // If something changes
    case (s)
      2'b00 : Y = I[0];
      2'b01 : Y = I[1];
      2'b10 : Y = I[2];
      2'b11 : Y = I[3];
    endcase
endmodule