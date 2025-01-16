`timescale 1ns / 1ps

module tb;
 reg a, b;
  wire sum, carry;
  half_adder uut (.a(a),.b(b),.sum(sum), .carry(carry));
  initial begin
    $dumpfile("dump.vcd");   
    $dumpvars;  
    $monitor("a: 0%b, b: 0%b, sum: 0%b, carry: 0%b", a, b, sum, carry); 
    #10 a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10
    $finish; 
  end
endmodule
