`timescale 1ns / 1ps

module mux_2x1(
    input [1:0] in,
    input sel,
    output y
);
    assign y = sel ? in[1] : in[0];
endmodule

module mux_8x1(
  input [7:0] in,
  input [2:0] sel,
  output  y
);
    wire w0, w1, w2, w3, w4, w5, w6;
    mux_2x1 m0(.in(in[1:0]), .sel(sel[0]), .y(w0));
    mux_2x1 m1(.in(in[3:2]), .sel(sel[0]), .y(w1));
    mux_2x1 m2(.in(in[5:4]), .sel(sel[0]), .y(w2));
    mux_2x1 m3(.in(in[7:6]), .sel(sel[0]), .y(w3));
    mux_2x1 m4(.in({w1, w0}), .sel(sel[1]), .y(w4));
    mux_2x1 m5(.in({w3, w2}), .sel(sel[1]), .y(w5));
    mux_2x1 m6(.in({w5, w4}), .sel(sel[2]), .y(y));
endmodule
