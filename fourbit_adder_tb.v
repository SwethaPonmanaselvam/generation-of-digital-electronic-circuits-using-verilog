`timescale 1ns / 1ps
module testbench;
    reg [3:0] a, b;
    reg cin;
    wire [3:0] sum;
    wire carry;

    fourbit_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        #10 a = 4'b0000; b = 4'b0000; cin = 1;
        #10 a = 4'b0101; b = 4'b0011; cin = 0;
        #10 a = 4'b1111; b = 4'b0001; cin = 0;
        #10 a = 4'b1000; b = 4'b1000; cin = 1;
        #10 a = 4'b1111; b = 4'b1111; cin = 0;
        #10 a = 4'b0101; b = 4'b0101; cin = 1;
        #10 $finish;
    end
endmodule
