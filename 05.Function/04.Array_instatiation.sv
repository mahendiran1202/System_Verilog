module array_functoin;
  
  function automatic int array_logic (ref int arr[7]);
    foreach (arr[i])begin
      arr[i]=i+1;
      end
  endfunction
  
  initial begin
    int array[7];
    void'(array_logic(array));
    $display("Array: %0p",array);
   end
endmodule
