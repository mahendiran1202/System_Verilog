class this_key;
  int a, b;			
  	
  function new(int a, b);	
    this.a = a;				
    this.b = b;
    $display("The assigned values in class a = %0d | b = %0d", a, b);
  endfunction
endclass

module this_keyword;
  this_key h1;				
  initial begin
    h1 = new(23, 62);	
  end
endmodule
