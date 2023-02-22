module dynamic_array();
 
 int a [];

 initial begin
	 a = new[6];
	 a='{1,2,3,4,5,6};
	 foreach(a[i])begin
		 $display("value of abc[%0d]=%d",i,a[i]);
	end

	$display("//array size=%0d", a.size());
	$display("");
       $display("//out of bound ", "display default value of data_type ","\n\ta[1024]=%0d",a[1024]);


end
endmodule: dynamic_array
