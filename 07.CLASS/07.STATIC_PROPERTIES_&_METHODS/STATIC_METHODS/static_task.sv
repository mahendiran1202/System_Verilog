class static_methods;
  static int count;				
  
  static task increment();			
    count++;
  endtask
endclass

module static_task;
  
  initial begin
    static_methods::increment();			
    static_methods::increment();
    static_methods::increment();
    static_methods::increment();
    
    $display("count = %0d",static_methods::count);	
  end
endmodule
