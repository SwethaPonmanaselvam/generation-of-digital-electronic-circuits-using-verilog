module gray_bin_conv;
  reg [3:0] g;
  wire [3:0] b;
  gray_binary uut(.g(g),.b(b));
  initial begin 
    $dumpfile("dump.vcd");
              $dumpvars;
              #10 g=4'b0011;
              #10 g=4'b1000;
              #30 
              $finish;
              end
              endmodule
