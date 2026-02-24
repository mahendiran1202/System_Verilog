module calling_task;
 function function_name;
    fork
      $display("\n Enter the Function \n");
      task_name;
      $display("\n Task has been called \n");
      $display("----------------------------");
    join_none
    endfunction
  
  task task_name;
    $display("\n Enter the Task \n");
  endtask
  
  initial begin
    $display("-------------------");
    $display("\n Initial Begin \n");
    void'(function_name);
   end
endmodule
