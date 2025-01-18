`timescale 1ns / 1ps
module D_flipflop(input d, clk, output reg q, output wire qn);
  always @(posedge clk) begin
    q <= d;
  end
  assign qn = ~q;
endmodule

module piso_4bit(input [3:0] pin, input clk, load, output wire sout);
  wire q0, q1, q2, q3;
  wire d0, d1, d2, d3;

  assign d0 = load ? pin[0] : q1;
  assign d1 = load ? pin[1] : q2;
  assign d2 = load ? pin[2] : q3;
  assign d3 = load ? pin[3] : 1'b0;

  D_flipflop ff1(.d(d0), .clk(clk), .q(q0));
  D_flipflop ff2(.d(d1), .clk(clk), .q(q1));
  D_flipflop ff3(.d(d2), .clk(clk), .q(q2));
  D_flipflop ff4(.d(d3), .clk(clk), .q(q3));

  assign sout = q3;
endmodule
