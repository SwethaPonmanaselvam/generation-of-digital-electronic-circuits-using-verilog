`timescale 1ns / 1ps
module D_flipflop(input d,clk,output reg q, wire qn);
  always @(posedge clk) begin
    q <= d;
  end
  assign qn=~q;
endmodule

module siso_4bit(input din,clk,output wire o);
  wire q0, q1, q2,q3;
  
    D_flipflop ff1(.d(din),.clk(clk),.q(q0));
    D_flipflop ff2(.d(q0),.clk(clk),.q(q1));
  D_flipflop ff3(.d(din),.clk(clk),.q(q2));
    D_flipflop ff4(.d(din),.clk(clk),.q(q3));
  
  assign o=q3;
endmodule
