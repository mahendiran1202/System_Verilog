class parent;
  int a,b;
  function new(int a = 2,b = 3);
    this.a = a;
    this.b = b;
    $display("\n a = %0d | b = %0d | class parent",a,b);
  endfunction
endclass


class child extends parent;
  int a;
  function new(int a = 6);
    super.a = a;
    $display(" a = %0d | b = %0d | class child",a,b);
  endfunction
endclass

module extends_keyword;
  child c1;
  initial begin
    c1 = new();
  end
endmodule
