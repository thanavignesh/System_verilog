

module ignore_bin;
  bit[1:0]d;
  covergroup a;
    c1 : coverpoint d{
                      ignore_bins b1={3};
                      //ignore_bins b2={5};
                    }
  endgroup
  a a1 =  new();
  initial begin
    for(int i=0;i<9;i++)
    begin
      d= $random();
      a1.sample();
      $display("d=%0d,coverage=%.2f%%",d,a1.get_inst_coverage());
    end
    end
endmodule

