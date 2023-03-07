
class generator;
 rand logic[2:0]b;
 constraint cons {b >5;}
endclass

module randomization();
  generator g = new();
  initial begin
    g.randomize();
    $display("the value of b is %0d",g.b);
    if (g.randomize()with{b>9;})
      $display("randomization successful",g.b);
    else
      $display("randomization unsuccessfull",g.b);
    
  end
endmodule