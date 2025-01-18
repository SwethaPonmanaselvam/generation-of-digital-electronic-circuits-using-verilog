module d_ff_tb;
  reg d,clk;
  wire q,qn;
  D_flipflop uut(.d(d),.clk(clk),.q(q),.qn(q));
  initial begin
    clk=0;
    #5 forever clk=~clk;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #10 d=1;
    $display ("d=%b,q=%b,qn=%b",d,q,qn);
    #10 
    d=0;
    $finish;
  end
endmodule
