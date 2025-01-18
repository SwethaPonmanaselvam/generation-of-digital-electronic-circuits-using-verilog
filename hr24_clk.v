`timescale 1ns / 1ps
module second_counter(
    input clk,
    input reset,
    output reg [5:0] seconds,
    output reg carry
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            seconds <= 0;
            carry <= 0;
        end else if (seconds == 59) begin
            seconds <= 0;
            carry <= 1;
        end else begin
            seconds <= seconds + 1;
            carry <= 0;
        end
    end
endmodule

module minute_counter(
    input clk,
    input reset,
    input increment,
    output reg [5:0] minutes,
    output reg carry
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            minutes <= 0;
            carry <= 0;
        end else if (increment) begin
            if (minutes == 59) begin
                minutes <= 0;
                carry <= 1;
            end else begin
                minutes <= minutes + 1;
                carry <= 0;
            end
        end
    end
endmodule

module hour_counter(
    input clk,
    input reset,
    input increment,
  output reg [4:0] hours
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            hours <= 1;
        end else if (increment) begin
          if (hours == 24) begin
                hours <= 0;
            end else begin
                hours <= hours + 1;
            end
        end
    end
endmodule

module hr_clk(
    input clk,    
    input reset,  
    output [5:0] seconds,
    output [5:0] minutes,
  output [4:0] hours
);
    wire sec_carry, min_carry;
  
    second_counter sec(
        .clk(clk),
        .reset(reset),
        .seconds(seconds),
        .carry(sec_carry)
    );
  
    minute_counter min (
        .clk(clk),
        .reset(reset),
        .increment(sec_carry),
        .minutes(minutes),
        .carry(min_carry)
    );

    hour_counter hr(
        .clk(clk),
        .reset(reset),
        .increment(min_carry),
        .hours(hours)
    );
