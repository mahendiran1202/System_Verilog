module function_example;
  
  function compare(input int a,b);
    if(a>b)
    $display("\n a is greater than b");
    else if(a<b)
    $display("\n a is a less than b");
    else
    $display("\n a is a equal to b");
    return 1;
   endfunction
  
  initial begin
    compare(7,10);
    compare(3,3);
    compare(8,2);
  end
endmodule
