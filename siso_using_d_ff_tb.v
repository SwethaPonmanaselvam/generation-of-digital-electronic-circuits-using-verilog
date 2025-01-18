module tb_SISO_Register;
    reg din, clk;
    wire o;
  siso_4bit uut (.din(din),.clk(clk),.o(o));
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
      $dumpfile("dump.vcd");
      $dumpvars;
        din = 1'b0;
        #15 din = 1'b1; 
        #10 din = 1'b0; 
        #10 din = 1'b1; 
        #10 din = 1'b1; 
        #40 $stop;      
    end
endmodule

