module swapping;
  
  int a=5, b=6;
  function void pass_by_value(input int var1,var2);
    int temp;
    temp=var1;
    var1=var2;
    var2=temp;
    $display("\n swapping by value : var1:%0d and var2: %0d",var1,var2);
  endfunction
  
  function void pass_by_reference(input int var3,var4);
    int temp;
    temp=var3;
    var3=var4;
    var4=temp;
    $display("\n swapping by value : var3: %0d and var4: %0d",var3,var4);
    
    $display("---------------------------------------------------------");
  endfunction
  
  initial begin
    $display("------------------------------------------------");
    
    $display("\n Before swapping : var1: %0d and var2: %0d",a,b);
    
    pass_by_value(5,6);
    pass_by_reference(5,6);
    
  end
endmodule
