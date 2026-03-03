class parent;												
  int a, b;
  function new(int a = 2, b = 3);				
    this.a = a;
    this.b = b;
    display_parent(a, b);
  endfunction
  extern function void display_parent(int a, b);  
endclass
    
class child extends parent;								
  int a, c;
  function new(int a = 6);					
    super.a = a;									
    c = display_child(a, b);
  endfunction
  extern function int display_child(int a, b); 		  
endclass


function void parent :: display_parent(int a, b);
  $display("a = %0d | b = %0d | class parent", a, b);		
endfunction
    
function int child :: display_child(int a, b);		   
  $display("a = %0d | b = %0d | class child", a, b);		
  return a+b;
endfunction

module extern_keyword;
  
  child c1;
  
  initial begin
    c1 = new(); #1;
    $display("a = %0d | b = %0d | class child -- out from exten fn -- c = %0d", c1.a, c1.b, c1.c); 
  end
endmodule
