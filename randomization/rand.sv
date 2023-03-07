
class rand1_function;
  rand logic[2:0]a;
endclass

rand1_function r1;
module rand_function;
  integer i;
  initial begin
    r1 = new();
    
    for(i=0;i<4;i++)begin
      void'(r1.randomize());
     //r1.randomize();
      $display("the random value is %0d",r1.a);
    end
  end
endmodule


