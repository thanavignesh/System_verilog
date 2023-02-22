module associate();
 int a[*];
 string b[string];

 initial begin
	 a='{2:4,5:6,7:8};
	 b='{"gopal":"a","gokul":"b","thana":"c"};
	 $display("the elements in array a=%p",a);
	 $display("");
	 $display("the elements in array b=%p",b);
	 
 end
endmodule: associate
