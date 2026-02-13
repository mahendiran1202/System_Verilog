module array_locator();
 
  int arr[$]={1,3,4,6,8,9,7,5,3,18,7,5,9};
  int m[$];
  
  initial begin
    
    m=arr.find(x) with (x>3);
    $display("\nFind : %p",m);
    
    m=arr.find_index(x) with (x==7);
    $display("\nFind Index : %p",m);
    
    m=arr.find_first(x) with (x>8);
    $display("\nFind First : %p",m);
    
    m=arr.find_last(x) with (x<18);
    $display("\nFind Last : %p",m);
    
    m=arr.find_first_index(x) with (x>2);
    $display("\nFind  First Index : %p",m);
    
    m=arr.find_last_index(x) with (x<9);
    $display("\nFind Last Index : %p",m);
    
    m=arr.min();
    $display("\nMinimum : %p",m);
    
    m=arr.max();
    $display("\nMaxmum : %p",m);
    
    m=arr.unique();
    $display("\nUnique : %p",m);
             
    m=arr.unique_index();
    $display("\nUnique Index : %p",m);
    $display("");
             
    end
    endmodule
    
