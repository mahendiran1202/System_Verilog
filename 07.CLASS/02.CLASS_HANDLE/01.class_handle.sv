class handle;
  byte number;
  int data;
  real value;  
  function new( byte num,int da,real va);
    number = num;
    data   = da;
    value  = va;
    endfunction  
endclass

module class_handle;
  handle sub1,sub2;
  
  initial begin
    sub1 = new(07,523617,827060);
    sub2 = new($random,$urandom_range(1,1000),($urandom /8));
    
    $display("-------------the object value----------");
    $display("              OBJECT 1                 ");
    $display("number = %0d | value = %0f",sub1.number,sub1.value);
    
    $display("-------------the object value----------");
    $display("              OBJECT 2                 ");
    $display("number = %0d | value = %0f",sub2.number,sub2.value);
    
  end
endmodule
