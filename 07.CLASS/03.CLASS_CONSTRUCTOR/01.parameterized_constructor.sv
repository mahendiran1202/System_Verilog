class parameterized;
  int value;
  bit [7:0] data;
  function new(int a,b);
    value = a;
    data  = b;  
  endfunction
endclass

module parameterized_constructor; 
  parameterized h1,h2;  
  initial begin
    h1  = new(9847,125);
    h2  = new(14135,249);
    $display("\n handle by argument => value = %0d | data = %0d",h1.value,h1.data);
    $display("\n handle by argument => value = %0d | data = %0d",h2.value,h2.data); 
     end
     endmodule
