class parent;
  int a;
  function new(int b=3);
    a=b;
    $display("\t a = %0d---parent",a);
  endfunction
endclass 

class child extends parent;
  int s;
  function new(int c);
    super.a = c;
    $display("\t a = %0d---child",a);
  endfunction
  
  function void zz(int e);
    s = super.a;
    super.a = e;
    $display("\t a = %0d | s = %0d---parent",a, s);
  endfunction 
endclass

module super_key_constructor_execute_order;
  child  c1;
  parent  p1;
  
  initial begin
    $display("child class handle memory allocation by constructor");
    c1 = new(10);
    c1.zz (986);
    $display("parent class handle memory allocation by constructor");
    p1 = new();  
  end
endmodule
