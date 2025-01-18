module prior_enc;
  reg [7:0] in;
  wire [2:0] bin;
  priority_enc uut (.in(in),.bin(bin));
  initial begin
    $dumpfile ("dump.vcd");
    $dumpvars;
    #10 in= 8'b01011000;
    #10 in =8'b00111100;
    #10 in =8'b11111111;
    #50 
    $finish;
  end
endmodule
