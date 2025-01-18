`timescale 1ns / 1ps
module decimal_bcd_enc (input[9:0] in, output reg[3:0] y);
  always @(*) begin
    case(in)
      10'b0000000001:y = 4'b0000; // Decimal 0
        10'b0000000010: y = 4'b0001; // Decimal 1
        10'b0000000100: y = 4'b0010; // Decimal 2
        10'b0000001000: y = 4'b0011; // Decimal 3
        10'b0000010000: y = 4'b0100; // Decimal 4
        10'b0000100000: y = 4'b0101; // Decimal 5
        10'b0001000000: y = 4'b0110; // Decimal 6
        10'b0010000000: y = 4'b0111; // Decimal 7
        10'b0100000000: y = 4'b1000; // Decimal 8
        10'b1000000000: y = 4'b1001; // Decimal 9
        default:y = 4'b0000;
    endcase
  end
endmodule
