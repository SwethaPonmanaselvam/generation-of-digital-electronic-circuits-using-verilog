module testbench;
  reg a0, a1, a2, a3;
  wire A0, A1;

  encoder_4x2 uut (
    .a0(a0), 
    .a1(a1), 
    .a2(a2), 
    .a3(a3), 
    .A0(A0), 
    .A1(A1)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("a0=%b, a1=%b, a2=%b, a3=%b, A0=%b, A1=%b", a0, a1, a2, a3, A0, A1);

    #10 a0 = 1; a1 = 0; a2 = 0; a3 = 0;
    #10 a0 = 0; a1 = 1; a2 = 0; a3 = 0;
    #10 a0 = 0; a1 = 0; a2 = 1; a3 = 0;
    #10 a0 = 0; a1 = 0; a2 = 0; a3 = 1;
    #30 $finish;
  end
endmodule
