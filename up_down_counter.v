`timescale 1ns / 1ps
module up_down_counter (
  input clk,
  input reset,
  input up_down, // 1 for up, 0 for down
  output reg [3:0] counter
);
  always @(posedge clk) begin
    if (reset)
      counter <= 4'd0;
    else if (up_down)
      counter <= counter + 1;
    else
      counter <= counter - 1;
  end
endmodule
