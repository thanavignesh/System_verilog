`timescale 1ns / 1ps
module tb(and_interface inf);

  initial
   begin
     $display("gate output ");
    repeat(5)
      begin
        inf.TB_MP.p = $random;
        #1;
        inf.TB_MP.q = $random;
        #1;
        $display("input_p=%b\t input_q=%b\t output_r=%b",inf.TB_MP.p,inf.TB_MP.q,inf.TB_MP.r);
      end
  end

endmodule 
