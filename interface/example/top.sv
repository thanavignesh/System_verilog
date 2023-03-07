`timescale 1ns / 1ps
module top();
and_if inf();
andg a1(.a(inf.a), .b(inf.b), .y(inf.y));
tb a2(inf);
endmodule
