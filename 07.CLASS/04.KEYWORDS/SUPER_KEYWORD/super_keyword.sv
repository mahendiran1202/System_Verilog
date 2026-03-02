class top;
  int a,b;
  
  function new(int a,b);
    this.a=a;
    this.b=b;
    $display("\nThe assigned values in class top a = %0d | b = %0d",a,b);  
  endfunction
endclass

class middle extends top;
  int c,d;
  function new(int m,n);
    super.new(5,8);
    c = m;
    d = n;
    $display("\nThe assigned values in class middle c = %0d | d = %0d",c,d); 
  endfunction
endclass

class bottom extends middle;
  int c,e;
  function new(int e,c);
    super.new(2,9);
    super.c = c;
    this.e = e; 
    $display("\n The assigned value in class middle c = %0d | e = %0d",super.c,e);
  endfunction


function void change(int v1,v2);
  super.a = v1;
  super.b = v2;
  $display("\n The assigned value in all class data from bottom class a = %0d | b = %0d | c = %0d | d = %0d",a,b,super.c,super.d);
endfunction
endclass

module super_keyword;
  bottom b1;
  initial begin
    b1 = new(23,62);
    #2; 
    b1.change(235,273);
    
  end
endmodule
