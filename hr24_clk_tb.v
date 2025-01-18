module tb_clk_24hr;
    reg clk;
    reg reset;
    wire [5:0] seconds;
    wire [5:0] minutes;
    wire [4:0] hours;

    hr_clk uut (
        .clk(clk),
        .reset(reset),
        .seconds(seconds),
        .minutes(minutes),
        .hours(hours)
    );

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars;
        clk = 0;
        forever #5 clk = ~clk; // 10 time units = 1Hz clock
    end

    initial begin
        reset = 1;
        #10 reset = 0;
        #5000 $stop; // Simulate for 5000 time units
    end
endmodule

