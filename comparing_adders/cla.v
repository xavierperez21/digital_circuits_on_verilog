`timescale 1ns/1ns

// Descriptive Module of the Carry Lookahead block
module CarryLook_4(
  input [3:0] P,
  input [3:0] G,
  output [4:1] C,
  input Ci);
  	wire h,i,j,k,a,b,c,d,e,f;
    and #5(h,P[3],P[2],P[1],P[0],Ci);
    and #5(i,P[3],P[2],P[1],G[0]);
    and #5(j,P[3],P[2],G[1]);
    and #5(k,P[3],G[2]);
    and #5(a,P[2],P[1],P[0],Ci);
    and #5(b,P[2],P[1],G[0]);
    and #5(c,P[2],G[1]);
    and #5(d,P[1],P[0],Ci);
    and #5(e,P[1],G[0]);
    and #5(f,P[0],Ci);
    or  #5(C[4],h,i,j,k,G[3]);
    or  #5(C[3],a,b,c,G[2]);
    or  #5(C[2],d,e,G[1]);
    or  #5(C[1],f,G[0]);
endmodule