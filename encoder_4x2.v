`timescale 1ns / 1ps
module encoder_4x2 (
  input a0, a1, a2, a3,
  output A0, A1
);
  assign A0 = a1 + a3;
  assign A1 = a2 + a3;
endmodule
