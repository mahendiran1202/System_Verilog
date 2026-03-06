class parent;							
  
  function void display();
    $display("class parent");
  endfunction
endclass

class child extends parent;		
  
  function void display();
    $display("class child");
  endfunction
endclass

child c1;			
parent p1;					

module non_virtual_flaws;
  
  initial begin
    c1 = new();				
    p1 = c1;				
    
    
    p1.display();			
  end
endmodule
