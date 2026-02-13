module array_reduction;
  int arr[$]={4,5,6,7,9,8};
  
  initial begin
    $display("\nSum of array elements        : %p",arr.sum());
    
    $display("\nProduct of array elements    : %p",arr.product());
    
    $display("\nAND of array elements        : %p",arr.and());
    
    $display("\nOR of array elements         : %p",arr.or());
    
    $display("\nXOR of array elements        : %p",arr.xor());
  end
endmodule
