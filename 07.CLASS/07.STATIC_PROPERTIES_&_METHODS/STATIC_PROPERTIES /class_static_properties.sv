class variable;
  
  static int data;		
  static int value = 0;			
  
  function new();
    data = 0;					
     $display("at instante --- data = %0d | value = %0d", data, value);
    data++;
    value++;							
  endfunction
endclass

module class_static_properties;
  
  variable h1, h2, h3;
  
  initial begin 
  	h1 = new();
    h2 = new();
    h3 = new();								
  															
    $display("total count of values -- data = %0d | value = %0d", variable::data, variable::value);
  end
endmodule
