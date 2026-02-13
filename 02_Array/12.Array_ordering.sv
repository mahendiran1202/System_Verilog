module array_ordering;
  int arr[$]={1,2,3,4,5,6,7,8,9};
  
  initial begin
    arr.reverse();
    $display("\nReverse   : %p",arr);
    
    arr.sort();
    $display("\nsort      : %p",arr);
    
    arr.rsort();
    $display("\nRsort     : %p",arr);
    
    arr.shuffle();
    $display("\nShuffling : %p",arr);
    $display("");
    
  end
endmodule
