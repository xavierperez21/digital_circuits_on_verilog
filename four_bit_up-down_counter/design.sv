`timescale 1ns/10ps

// Descriptive module of a Counter UP-DOWN with Clear using Case structure
// The counter counts in the positive edge of CLK

module fourBitUpDownCounter(
  input CLK,
  input UD,
  output reg [3:0] Count,
  input Clear);
  
  always @ (Clear)
    if (Clear == 0)
      Count = 4'b0000;				// Clear (asynchronous)
  
  always @ (negedge CLK)
    case ({UD,Clear})				// Concatenating into a 2 bits vector
      2'b01 : Count = Count + 1;	// Count Up
      2'b11 : Count = Count - 1;	// Count Down
    endcase
endmodule