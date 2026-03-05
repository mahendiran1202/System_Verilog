class constant;
  const int location;						
  const int value;
  byte data;
  
  function new(int data);
    this.data     = data;
    this.location = 'hffcda;	
    this.value    = 5;				
    $display("data = %0d | location = %0h | value = %0d", data, location, value);
  endfunction
endclass


class child extends constant;
  
  function new(int data);
    super.new(data);
  endfunction
  
  function int add(int a);
    return (a + (int'(super.data)) + super.value);
  endfunction
endclass

module instance_constant;
  int v1, d1;
  int out;
  
  child h1;
  initial begin
    
    h1 = new(36);
  
  	out = h1.add(145);
  	$display("-------- addition -----------");
  	$display("data = %0d | location = %0h | value = %0d | add = %0d", h1.data, h1.location, h1.value, out);
  end
endmodule
