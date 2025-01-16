`timescale 1ns / 1ps
module testbench;
  reg a, b, cin;
  wire sum, carry;
  full_adder uut (.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    a = 0; b = 0; cin = 0;
    $monitor("a: %b, b: %b, cin: %b, sum: %b, carry: %b", a, b, cin, sum, carry);
    #10 a = 0; b = 0; cin = 0;
    #10 a = 0; b = 1; cin = 1;
    #10 a = 1; b = 0; cin = 1;
    #10 a = 1; b = 1; cin = 0;
    #10
     $finish;
  end
endmodule

