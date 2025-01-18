module encoder_8x3;
  reg a0, a1, a2, a3,a4,a5,a6,a7;
  wire A0, A1,A2;
  encoder_8x3 uut (
    .a0(a0), 
    .a1(a1), 
    .a2(a2), 
    .a3(a3), 
    .a4(a4),
    .a5(a5),
    .a6(a6),
    .a7(a7),
    .A0(A0), 
    .A1(A1),
    .A2(A2)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    

    #10 a0 = 1; a1 = 0; a2 = 0; a3 = 0;a4=0;a5=0;a6=0;a7=0;
    #10 a0 = 0; a1 = 1; a2 = 0; a3 = 0;a4=0;a5=0;a6=0;a7=0;
    #10 a0 = 0; a1 = 0; a2 = 1; a3 = 0;a4=0;a5=0;a6=0;a7=0;
    #10 a0 = 0; a1 = 0; a2 = 0; a3 = 1;a4=0;a5=0;a6=0;a7=0;
    #30 
    $finish;
  end
endmodule
