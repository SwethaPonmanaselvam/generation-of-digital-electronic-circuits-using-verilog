`timescale 1ns / 1ps
module encoder_8x3 (
  input a0, a1, a2, a3 ,a4 ,a5, a6, a7,
  output A0,A1,A2,A3);
  assign A0 = a1|a3|a5|a7;
  assign A1 = a2|a3|a6|a7;
  assign A2 = a4|a5|a6|a7;
endmodule

