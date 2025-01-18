`timescale 1ns / 1ps
module D_flipflop(input d, clk, output reg q,wire qn);
  always @(posedge clk) begin
    q <= d;  
  end
  assign qn = ~q;  
endmodule
