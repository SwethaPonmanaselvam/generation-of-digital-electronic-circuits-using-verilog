module tb;
  reg x, clk, reset;
  wire z;

  seq_detector uut(.x(x), .clk(clk), .reset(reset), .z(z));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #10 x = 0;
    #10 x = 0;
    #10 x = 1;
    #10 x = 0;
    #10 x = 1;
    #10 x = 1;
    #10 x = 0;
    #10 x = 1;
    #10 x = 1;
    #10 $finish;
  end

  initial begin
    forever #5 clk = ~clk;
