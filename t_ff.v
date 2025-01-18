
`timescale 1ns / 1ps
module t_flipflop(input t, clk, output reg q, output wire qn);
  initial begin
    q = 0; 
  end

  always @(posedge clk) begin
    if (t == 1)
      q <= ~q; 
  end

  assign qn = ~q; 
endmodule
