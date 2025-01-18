
module tb_pipo_4bit;
  reg [3:0] pin;
  reg clk, load;
  wire [3:0] pout;

  pipo_4bit uut(.pin(pin), .clk(clk), .load(load), .pout(pout));

  initial begin
    $dumpfile("pipo_4bit.vcd");
    $dumpvars(0, tb_pipo_4bit);

    clk = 0;
    load = 0;
    pin = 4'b0000;

    #5 load = 1; pin = 4'b1011;
    #10 load = 0;

    #20 load = 1; pin = 4'b0110;
    #10 load = 0;

    #50 $finish;
  end

  always #5 clk = ~clk;
endmodule
