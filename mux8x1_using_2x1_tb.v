module testbench;
  reg [7:0] in;
  reg [2:0] sel;
  wire y;

  mux_8x1 uut (.in(in), .sel(sel), .y(y));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("in=0%b; sel=0%b; y=0%b", in, sel, y);
    
    #10 in = 8'b10100111;

    for (integer i = 0; i < 2; i = i + 1) begin
      for (integer j = 0; j < 2; j = j + 1) begin
        for (integer k = 0; k < 2; k = k + 1) begin
          #10
          sel = {i, j, k};
          
    end
      end
    end

    #50 $finish;
  end
