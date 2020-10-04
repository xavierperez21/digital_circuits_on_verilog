`timescale 1ns/10ps

// Input module of a Counter UP-DOWN with Clear using Case structure
// The counter counts in the positive edge of CLK

module test_Counter();
  reg CLK,UD,Clear;
  wire [3:0] Count;
  
  fourBitUpDownCounter Counter_1(CLK,UD,Count,Clear);
  
  initial CLK = 1'b0;		// Initializing the clock to 0
   
  always #5 CLK = ~CLK; 	// The clock cycle changes every 5ns
  
  initial
    begin
      $dumpfile("out.vcd");
      $dumpvars(1,test_Counter);
      
      		Clear = 1'b0; UD = 1'b0;
      #5	Clear = 1'b1; UD = 1'b0; 	$display("UD=%b, CLR=%b, COUNT=%b",UD,Clear,Count);
      #182	Clear = 1'b0; 				$display("UD=%b, CLR=%b, COUNT=%b",UD,Clear,Count);
      #20	Clear = 1'b1; 				$display("UD=%b, CLR=%b, COUNT=%b",UD,Clear,Count);
      #25	   UD = 1'b1; 				$display("UD=%b, CLR=%b, COUNT=%b",UD,Clear,Count);
      #182;
    end
  
  initial
    $monitor("UD=%b, CLR=%b, COUNT=%d", UD, Clear, Count);
  
  initial
    #450 $finish;
endmodule