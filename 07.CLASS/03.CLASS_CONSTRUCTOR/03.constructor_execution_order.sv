class parent;
  int a;
  function new(int b=3);
     a = b;
    $display("a = %0d |class parent",a);
  endfunction
endclass

class child extends parent;
  function new();
    $display("class child");
    super.a = 143;
    $display("class child | parent a ofter super.a=%0d",super.a);    
  endfunction
endclass

module constructor_execution_order;
 child c1;
  parent p1;
  initial begin
    $display("child class handle memory allocation by constructor");  
    c1 = new();  
    
    $display("parent class handle memory allocation by constructor");
    p1 = new(); 
  end
endmodule
    
