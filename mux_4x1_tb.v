module testbench;
  reg [3:0] in;
  reg [1:0] sel;
  wire y;

  mux_4x1 uut (
    .in(in),
    .sel(sel),
    .y(y)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("in=%b; sel=%b; y=%b", in, sel, y);
     in = 4'b0000;
    sel = 2'b00;

    #10 in = 4'b0111;

    for (int i = 0; i < 4; i = i + 1) begin
    sel = i[1:0];
      #10;
    end

    #50 $finish;
  end
endmodule
