class static_methods;
  static int count = 0, non_count = 0;
  int a, b;									
  
  function new(int a = 0, b = 0);
    this.a = a;
    this.b = b;
  endfunction
  
  function void square;						
    int area;
    area = a * b;
    non_count++;
    $display("a, b = %0d, %0d | area = %0d | non_count = %0d | count = %0d", a, b, area, non_count, count);
  endfunction
  
  static task increment();					
    count++;
  endtask
 
endclass

module static_variable_fn;
  int out;
  
  static_methods h1, h2, h3;
  
  initial begin
    h1 = new(12, 3);
    h2 = new(48, 15);
    h3 = new(20, 31);
    
    h1.square();						
    h2.square();
    h3.square();
    
    static_methods::increment();		
    static_methods::increment();
    static_methods::increment();
    static_methods::increment();
    
    $display("count = %0d",static_methods::count);			
  end
endmodule
