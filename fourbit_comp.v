`timescale 1ns / 1ps
module fourbit_comp(
  input [3:0] a,input [3:0] b,output  agt,output alt,output eq);
  assign agt = (a>b)?1'b1:1'b0;
  assign alt = (a<b)?1'b1:1'b0;
  assign eq =(a==b)?1'b1:1'b0;
endmodule
