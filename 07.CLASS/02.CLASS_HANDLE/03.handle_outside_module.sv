class base;
  int a,b;  
  function new(int c = 1, d = 2);  
    a = c;
    b = d;  
  endfunction  
endclass
base h1;

module handle_outside_module;
  initial begin
    h1 = new();
    $display("-------------before h1 handle change -----------");
    $display("handle h1 => a = %0d |b = %0d",h1.a,h1.b); 
    h1.a = 43;
    h1.b = 126;
    $display("-------------before h1 handle change -----------");
    $display("handle h1 => a = %0d |b = %0d",h1.a,h1.b);
    
  end
endmodule
