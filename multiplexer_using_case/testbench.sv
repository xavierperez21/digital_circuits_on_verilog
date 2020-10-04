`timescale 1ns/10ps

// Input module of the Multiplexer 4 to 1 circuit using Case
module mux_TB();
  reg in0, in1, in2, in3;
  reg [1:0] select;
  wire out;
  
  Mux_4_1 my_mux({in3,in2,in1,in0}, select, out);
  always #0.1 in0=~in0;	// Creating a digital signal alternating values between 0 and 1.
  always #0.5 in1=~in1;
  always #1   in2=~in2;
  always #5   in3=~in3;
  
  initial begin
    $dumpfile("out.vcd");
    $dumpvars(1,mux_TB);
    in0=0;	// We have to specify always the initial values of the inputs. After this...
    in1=0;	// ...the values of the inputs will change according to the
    in2=0;	// ..."always" command implemented before.
    in3=0;
    select=2'b00;
    #20
    select=2'b01;
    #20
    select=2'b10;
    #20
    select=2'b11;
    #20
    $finish;
  end
  
endmodule