module tb;
  reg s, r;
  wire q, qn;
  reg clk;
  sr_ff uut (.s(s), .r(r), .clk(clk), .q(q), .qn(qn));
  
  initial begin
    clk = 0; 
    forever #5 clk = ~clk;  
  end

 initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;  
    #10 s = 0; r = 0; 
    #10 s = 0; r = 1; 
    #10 s = 1; r = 0; 
    #10 s = 1; r = 1; 
    #50 
    $finish;  
  end
endmodule
