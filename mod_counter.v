`timescale 1ns / 1ps
module counter_mod #(
  parameter N = 10,
  parameter A = 4
)(
  input clk,
  input reset,
  input enable,
  output reg [A-1:0] counter
);
  always @(posedge clk) begin
    if (reset || counter == N-1)
      counter <= 0;
    else if (enable)
      counter <= counter + 1;
  end
endmodule
