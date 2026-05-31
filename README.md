# 4-to-2 Encoder in Verilog

## Overview
A 4-to-2 Encoder converts one of four active input lines into a 2-bit binary code.

## Truth Table

| Input (a) | Output (y) |
|------------|------------|
| 0001 | 00 |
| 0010 | 01 |
| 0100 | 10 |
| 1000 | 11 |

## Verilog Code

```verilog
module encoder(
    input [3:0] a,
    output reg [1:0] y
);

always @(*) begin
    case(a)
        4'b0001: y = 2'b00;
        4'b0010: y = 2'b01;
        4'b0100: y = 2'b10;
        4'b1000: y = 2'b11;
        default: y = 2'b00;
    endcase
end

endmodule
