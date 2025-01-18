module tb;
  reg clk;
  reg reset;
  wire [3:0] counter;

  up_counter uut (
    .clk(clk),
    .reset(reset),
    .counter(counter)
  );
 always #5 clk = ~clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #100 reset = 1;
    #10 reset = 0;
    #50 $stop;
  end

 
endmodule
