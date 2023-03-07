
module explicit_bin;
  bit[2:0]d;
  covergroup a;
    c1 : coverpoint d{
                      bins b1={3};
                      bins b2={5};
                    }
  endgroup
  a a1 =  new();
  initial begin
    for(int i=0;i<6;i++)
    begin
      d= $random();
      a1.sample();
      $display("d=%0d,coverage=%.2f%",d,a1.get_inst_coverage());
    end
    end
endmodule
