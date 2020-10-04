`timescale 1ns/1ns

// Descriptive Module of a 4 Bits Adder
module test_adder();
  reg [3:0] A, B;
  reg Cin;
  wire [4:0] Sum_ripple;
  wire [4:0] Sum_CLA;
  wire c4,c3,c2,c1;
  
  ripple_adder 		   ripple(A, B, Cin, Sum_ripple[3:0], Sum_ripple[4]);
  adder_with_cla 	adder_cla(A, B, Cin, Sum_CLA[3:0], Sum_CLA[4]);
  
  initial
    begin
      $dumpfile("out.vcd");
      $dumpvars(1,test_adder);
      $dumpvars(1,ripple);
      
      		A =   7; B = 15; Cin = 0;
      #50	A =  15; B =  0;
      #50	Cin = 1;
      #50	A =   7; B = 15; Cin = 0;
      #50	A =  15; B =  0;
      #50;
    end
  initial
    #250 $finish;
endmodule