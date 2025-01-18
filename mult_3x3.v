`timescale 1ns / 1ps
module half_adder(input a, b, output s, c);
  assign s = a ^ b;
  assign c = a & b;
endmodule

module full_adder(input a, b, cin, output s, c);
  assign s = a ^ b ^ cin;
  assign c = (a & b) | (b & cin) | (cin & a);
endmodule

module mult_3x3(input [2:0] a, input [2:0] b, output [5:0] p);
  wire p0, p1_c1, p1_s, p2_c1, p2_c2, p2_s, p3_c1, p3_c2, p4_c1;
  
  // Partial product and assignments
  assign p0 = a[0] & b[0];
  half_adder ha1 (.a(a[1] & b[0]), .b(a[0] & b[1]), .s(p[1]), .c(p1_c1));
  full_adder fa1 (.a(p1_c1), .b(a[2] & b[0]), .cin(a[1] & b[1]), .s(p1_s), .c(p2_c1));
  half_adder ha2 (.a(p1_s), .b(b[2] & a[0]), .s(p[2]), .c(p2_c2));
  full_adder fa2 (.a(p2_c2), .b(p2_c1), .cin(a[1] & b[2]), .s(p2_s), .c(p3_c1));
  half_adder ha3 (.a(p2_s), .b(b[2] & a[1]), .s(p[3]), .c(p3_c2));
  full_adder fa3 (.a(p3_c2), .b(p3_c1), .cin(a[2] & b[2]), .s(p[4]), .c(p4_c1));
  assign p[5] = p4_c1;
  
  // Ensure all signals in p are assigned
  assign p[0] = p0; // Ensure p0 is properly assigned
endmodule
