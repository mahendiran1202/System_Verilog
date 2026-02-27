class null_handle;
  int value;
  bit [4:0]data;  
endclass

module class_null_handle;  
  null_handle h1,h2;
    
  initial begin
    h2 = new();
    h2.value = 143;
    h2.data = 17;
    
    if(h1==null)
    $display("the handle1 is empty");
    
    else if(h2==null)
      $display("the handle2 is empty");
    $display("\t handle2 => value = %0d|data = %0d",h2.value,h2.data);
    
    h1 = new();
    h1.value = 3629;
    $display("\t handle1 => value = %0d | data = %0d",h1.value,h2.data);
    
  end
endmodule
