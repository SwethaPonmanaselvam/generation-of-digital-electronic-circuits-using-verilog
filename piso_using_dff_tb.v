module tb_piso_4bit;
  reg [3:0] pin;
  reg clk, load;
  wire sout;

  piso_4bit uut(.pin(pin), .clk(clk), .load(load), .sout(sout));

  initial begin
    $dumpfile("piso_4bit.vcd");
    $dumpvars(0, tb_piso_4bit);

    clk = 0;
    load = 0;
    pin = 4'b0000;

    #5 load = 1; pin = 4'b1101;
    #10 load = 0;

    #50 $finish;
  end

  always #5 clk = ~clk;
endmodule
