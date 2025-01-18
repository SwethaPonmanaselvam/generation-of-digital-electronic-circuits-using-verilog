`timescale 1ns / 1ps
module sr_ff(input s, r, clk, output reg q, output wire qn);

  always @(posedge clk) begin
    if (s == 1 && r == 0)
      q <= 1;
    else if (s == 0 && r == 1)
      q <= 0;
    else if (s == 0 && r == 0)
      q <= q;
  end
  
  assign qn = ~q;  

endmodule
