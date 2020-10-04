`timescale 1ns/100ps

// Input module of a Flip-Flop JK
module test_JK();
  reg J,K,CLK,Preset,Clear;
  wire Q, Q_prim;
  
  JKFF JK1(J, K, Q, Q_prim, CLK, Preset, Clear);
  
  initial CLK = 1'b0; 	// Initializing the CLK
  always #5 CLK = ~CLK; // The Clock cycle (changes every 5ns)
  
  initial
    begin
        $dumpfile("out.vcd");
        $dumpvars(1,test_JK);
		
      		Preset = 1'b0; Clear = 1'b1; J = 1'b1; K = 1'b0;
        #28	Preset = 1'b1; Clear = 1'b0;
      	#25 Clear =  1'b1; J = 1'b1; K = 1'b0;
      	#25 J = 1'b0; K = 1'b0;
      	#25 J = 1'b0; K = 1'b1;
      	#25 J = 1'b1; K = 1'b1;
      #25;
  	end
  
  initial
    #250 $finish;
endmodule