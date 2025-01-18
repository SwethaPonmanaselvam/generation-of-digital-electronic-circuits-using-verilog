`timescale 1ns / 1ps
module down_counter (
  input clk,
  input reset,
  output reg [3:0] counter
);
  always @(posedge clk) begin
    if (reset)
      counter <= 4'd0;
    else
      counter <= counter - 1;
  end
endmodule
