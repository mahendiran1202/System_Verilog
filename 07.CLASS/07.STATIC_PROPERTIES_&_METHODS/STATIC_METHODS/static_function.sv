class static_methods;
  static int count;			
  
  static function void increment();		
    count++;
  endfunction
endclass

module static_function;
  
  initial begin
    static_methods::increment();			
    static_methods::increment();
    static_methods::increment();
    static_methods::increment();
    
    $display("count = %0d",static_methods::count);			
  end
endmodule
