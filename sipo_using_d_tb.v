module tb_sipo_4bit;
  reg din, clk;
  wire [3:0] pout;

  sipo_4bit uut(.din(din), .clk(clk), .pout(pout));

  initial begin
    $dumpfile("sipo_4bit.vcd");
    $dumpvars(0, tb_sipo_4bit);

    clk = 0;
    din = 0;

    #5 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;
    #10 din = 0;
    #10 din = 1;

    #20 $finish;
  end

  always #5 clk = ~clk;
endmodule
