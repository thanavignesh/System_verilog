`timescale 1ns / 1ps
module tb(and_if inf);
initial begin
  $display("\n and gate output");
  $monitor("\n a=%b\t b=%b\t y=%b",inf.a,inf.b,inf.y);
  inf.y=0;
  inf.a = 0; inf.b = 0; 
  #1;
  inf.a = 1; inf.b = 0; 
  #1;
  inf.a = 0; inf.b = 1;
end

endmodule
