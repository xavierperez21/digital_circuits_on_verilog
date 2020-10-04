`timescale 1ns/100ps

// Test module 4 Bits register.

module test_shift_register();
  reg CLK,LD,Clear,InS,SHFT;
  reg [3:0] InP;
  wire [3:0] D;
  
  shift_register_right R1(CLK,SHFT,LD,D,InP,InS,Clear);
  
  initial CLK = 1'b0;	// Initializing CLK to 0
  
  always #5 CLK = ~CLK;	// Clock cycle every 5ns, T = 10ns
  
  initial
    begin
      $dumpfile("out.vcd");
      $dumpvars(1,test_shift_register);
      
      Clear = 1'b0; LD = 1'b0; SHFT = 1'b1; InP = 4'b0101; InS = 1'b1;
      
      #5	Clear = 1'b1;
      #52	Clear = 1'b0;
      #20 	Clear = 1'b1; LD = 1'b1;
      #15 	   LD = 1'b0;
      #52;
    end
  
  initial
    $monitor("LD=%b, SHFT=%b, CLR=%b, D=%b", LD, SHFT, Clear, D);
  
  initial
  	#200 $finish;

endmodule
