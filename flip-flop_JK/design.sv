`timescale 1ns/100ps

// Descriptive module of a Flip-Flop JK Master-Slave with Preset and Clear Using Case
// The CLK is denied (positive edge)

module JKFF(
  input J, K,
  output reg Q,
  output Q_prim,
  input CLK, Preset, Clear);
  
  assign Q_prim = ~Q;		// We didn't declare Q_prim as a reg because we're assining a register to Q_prim
  
  // Asynchronous way to change the state of the FF using Preset and Clear
  always @ (Preset, Clear)
    if (Preset == 0)
      Q = 1'b1;				// Preset
  	else if (Clear == 0)
      Q = 1'b0;				// Clear
  
  always @ (posedge CLK)
    case ({J,K,Preset,Clear}) // Concatenating as a vector of 4 bits
      4'b0111 : Q = 1'b0;	// Reset
      4'b1011 : Q = 1'b1;	// Set
      4'b1111 : Q = ~Q;     // Toggle, else No change
    endcase

endmodule