`timescale 1ns/100ps

// Descriptive module of a Flip-Flop Latch S-R with CLK using NAND gates
module SRFF_w_CLK(
  input S, R,
  output Q, Q_prim,
  input CLK);
  
  wire WS, WR;
  nand (WS, S, CLK);
  nand (WR, R, CLK);
  nand (Q, WS, Q_prim);
  nand (Q_prim, WR, Q);

endmodule

/*

// Descriptive module of a Flip-Flop Latch S-R with CLK using CASE STRUCTURE
module SRFF_w_CLK(
  input S, R,
  output reg Q, Q_prim,
  input CLK);
  
  always @ (S,R);  // If the inputs change
  	case ({S,R,CLK}) // Concatenating the 3 inputs with {} to create a vector of 3 bits
    	3'b011	:	begin
                      Q = 0;
                      Q_prim = 1;
        			end
      	
      	3'b101	:	begin
                      Q = 1;
                      Q_prim = 0;
        			end
          
        3'b111	:	begin
          				Q = 0;
          				Q_prim = 0;
        			end
    endcase

endmodule

*/