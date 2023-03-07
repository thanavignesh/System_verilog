`timescale 1ns / 1ps
module and_gate(and_interface inf);
   assign inf.DUT_MP.r = (inf.DUT_MP.p) & (inf.DUT_MP.q);

endmodule
