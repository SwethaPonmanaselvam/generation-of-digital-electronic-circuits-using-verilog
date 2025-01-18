`timescale 1ns / 1ps
module full_adder (
    input a,    
    input b,
    input cin,
    output sum,
    output carry
);
    assign sum = a ^ b ^ cin;
    assign carry = (a & b) | (b & cin) | (cin & a);
endmodule

module fourbit_adder_subtractor (
  input [3:0] a,
  input [3:0] b,
  input  M,
  input cin,
  output [3:0] sum,
  output carry
);
  wire [3:0] b_mod;
  wire c1, c2, c3;

  assign b_mod = (M == 1) ? ~b : b;
  
