`timescale 1ns / 1ps
module half_adder(input a, input b,output sum,input carry);
assign sum = a^b;
assign carry = a&b;
endmodule
