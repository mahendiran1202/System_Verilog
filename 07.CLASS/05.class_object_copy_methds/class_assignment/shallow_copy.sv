class base;
  int a, b;								
 
  function new(int a = 1, b = 2);		
    this.a = a;
    this.b = b;
  endfunction
endclass

base h1, h2;			

module shallow_copy;
  
  initial begin
  	h1 = new();
 	h2 = new h1;						
  
  	$display("--------- before h2 handle change ------------");
  	$display("handle1 h1 => a = %0d | b = %0d", h1.a, h1.b);
  	$display("handle2 h2 => a = %0d | b = %0d", h2.a, h2.b);
  
  	h2.a = 36;
  	h2.b = 145;
  
  	$display("--------- after h2 handle change ------------");
  	$display("handle1 h1 => a = %0d | b = %0d", h1.a, h1.b);
  	$display("handle2 h2 => a = %0d | b = %0d", h2.a, h2.b);
  end
endmodule
