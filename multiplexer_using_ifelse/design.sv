`timescale 1ns/10ps

// Descriptive module of the Multiplexer 4 to 1 circuit using If - Else
module Mux_4_1(
  input [3:0] I,
  input [1:0] s,
  output reg Y);  // "Y" Declared as a register to keep its value through events
  
  always @ (s[0], s[1], I[0], I[1], I[2], I[3]) // If something changes
    
    if (s[1]==0)
    	if (s[0]==0)
        	Y = I[0];
  		else
        	Y = I[1];
  
  	else
    	if(s[0]==0)
    		Y = I[2];
  		else
        	Y = I[3];
  
endmodule