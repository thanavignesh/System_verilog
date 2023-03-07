
module event_wait_order;
 event ev1,ev2;
 initial begin
   #5 ->ev1;
   #10 ->ev2;
 end
 
 initial begin
   
   wait_order (ev1,ev2)
    $display("correct order");
   else
     $display("incorrect order");
  end
  
endmodule
