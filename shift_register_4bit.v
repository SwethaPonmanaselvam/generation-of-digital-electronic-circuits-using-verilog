`timescale 1ns / 1ps
module shift_register (
    input clk,          
    input clr,          
    input [1:0] mode,   
    input serial_in_r,  
    input serial_in_l,  
    input [3:0] parallel_in, 
    output reg [3:0] q       
);

    always @(posedge clk or posedge clr) begin
        if (clr) begin
            q <= 4'b0000; 
        end else begin
            case (mode)
                2'b00: q <= q; // Hold state
                2'b01: q <= {serial_in_r, q[3:1]}; // Shift right
                2'b10: q <= {q[2:0], serial_in_l}; // Shift left
                2'b11: q <= parallel_in; // Parallel load
                default: q <= q; 
            endcase
        end
