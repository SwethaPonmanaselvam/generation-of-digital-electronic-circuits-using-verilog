module tb;

    reg clk;
    reg clr;
    reg [1:0] mode;
    reg serial_in_r;
    reg serial_in_l;
    reg [3:0] parallel_in;
    wire [3:0] q;

    
    shift_register uut (
        .clk(clk),
        .clr(clr),
        .mode(mode),
        .serial_in_r(serial_in_r),
        .serial_in_l(serial_in_l),
        .parallel_in(parallel_in),
        .q(q)
    );

        always #5 clk = ~clk;

    initial begin
       
        $dumpfile("dump.vcd");
        $dumpvars;
        clk = 0;
        clr = 1;
        mode = 2'b00;
        serial_in_r = 0;
        serial_in_l = 0;
        parallel_in = 4'b0000;
        #10 clr = 0;                        
        #10 mode = 2'b11; parallel_in = 4'b1010;
        #10 mode = 2'b00;                   
        #10 mode = 2'b10; serial_in_l = 1'b1; 
        #10 mode = 2'b01; serial_in_r = 1'b1; 
        #70 $finish;
    end

   

endmodule

