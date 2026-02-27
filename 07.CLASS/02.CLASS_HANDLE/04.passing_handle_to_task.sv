class handle_task;
  int value;
  bit [7:0]data;
endclass

module passing_handle_to_task; 
  handle_task h1;
   task modify(handle_task k);  
    k.value = 4654;
    k.data  = 73;
  endtask
  
  initial begin  
    h1 = new();
    h1.value = 147;
    h1.data  = 91; 
    $display("\n handle => value = %0d | data = %0d",h1.value,h1.data);
    modify (h1);
    $display("\n handle => value = %0d | data = %0d",h1.value,h1.data);
     end
endmodule
