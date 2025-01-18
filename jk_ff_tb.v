module jk_ff_tb;
  reg J, K;
  wire q, qn;
  reg clk;
  JK_flipflop uut (.J(J), .K(K), .clk(clk), .q(q), .qn(qn));
  
  initial begin
    clk = 0; 
    forever #5 clk = ~clk;  
  end

 initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;  
    #10 J = 0; K = 0; 
    #10 J = 0; K = 1; 
    #10 J = 1; K = 0; 
    #10 J = 1; K = 1; 
    #50 $finish;  
  end
endmodule

