`timescale 1ns/100ps

// 4 Bits Shift Register with Clear using Case structure.
// The register shifts in the negative edge of clock.

module shift_register_right(
  input CLK,SHFT,LD,
  output reg [3:0] D,
  input [3:0] InP,			// Input Parallel
  input InS, Clear);		// InS = Input Sequence
  
  always @ (Clear)
    if (Clear == 0)
      D = 4'b0000;	// Clear (asynchronous, cero active)
  
  always @ (negedge CLK)
    case ({LD,SHFT,Clear})			// Concatenating
      3'b011 : D = {InS, D[3:1]};    // Shift Right
      3'b101 : D = InP;				// Parallel Load, LD is precedent over SHFT
      3'b111 : D = InP;
    endcase

endmodule