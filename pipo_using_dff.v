`timescale 1ns / 1ps
module pipo_4bit(input [3:0] pin, input clk, load, output reg [3:0] pout);
  always @(posedge clk) begin
    if (load)
      pout <= pin;
  end
endmodule
