`timescale 1ns / 1ps
module tb;
  reg clk;
  reg reset;
  reg enable;
  wire [3:0] counter;
  counter_mod #(
    .N(10),
    .A(4)
  ) uut (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .counter(counter)
  );
  always #5 clk = ~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb);
    clk = 0;
    reset = 1;
    enable = 0;
    #10 reset = 0; enable = 1; 
    #100 reset = 1;            
    #10 reset = 0; enable = 0; 
    #50 
    $stop;                 
  end
endmodule

