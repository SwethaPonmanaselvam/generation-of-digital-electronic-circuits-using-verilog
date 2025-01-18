`timescale 1ns / 1ps
module seq_detector(input clk, reset, x, output reg z);
  parameter s0 = 0, s1 = 1, s2 = 2, s3 = 3;
  reg [1:0] ps, ns;

  always @(posedge clk or posedge reset) begin
    if (reset)
      ps <= s0;
    else
      ps <= ns;
  end

  always @(ps or x) begin
    case (ps)
      s0: begin
        z <= 0;
        ns <= (x) ? s1 : s0;
      end
      s1: begin
        z <= 0;
        ns <= (x) ? s1 : s2;
      end
      s2: begin
        z <= 0;
        ns <= (x) ? s3 : s0;
      end
      s3: begin
        z <= 1;  
        ns <= (x) ? s1 : s2;
      end
      default: begin
        z <= 0;
        ns <= s0;
      end
    endcase
  end
endmodule
