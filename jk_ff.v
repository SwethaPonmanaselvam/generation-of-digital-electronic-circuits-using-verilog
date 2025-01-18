`timescale 1ns / 1ps
module JK_flipflop(input J, K, clk, output reg q, output wire qn);
  always @(posedge clk) begin
    case ({J, K})
      2'b00: q <= q;        
      2'b01: q <= 0;       
      2'b10: q<= 1;      
      2'b11: q <= ~q;     
    endcase
  end
  assign qn = ~q;
endmodule
