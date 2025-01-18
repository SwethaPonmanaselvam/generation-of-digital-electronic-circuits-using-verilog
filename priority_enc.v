`timescale 1ns / 1ps
module priority_enc (
  input [7:0] in,
  output reg[2:0] bin
);
  always @(*) begin
    case (1'b1)
        in[7]: bin = 3'b111;
        in[6]: bin = 3'b110;
        in[5]: bin = 3'b101;
        in[4]: bin = 3'b100;
        in[3]: bin = 3'b011;
        in[2]: bin = 3'b010;
        in[1]: bin = 3'b001;
        in[0]: bin = 3'b000;
        default: bin = 3'bzzz;
    endcase
  end
endmodule
