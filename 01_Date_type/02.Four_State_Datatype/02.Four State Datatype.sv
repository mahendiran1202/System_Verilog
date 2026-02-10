module variable_4_state;
  reg a;
  wire b;
  logic c;
  integer d;
  real e;
  time f;
  
  initial begin
    
    $display("Defalt value of reg = %b",a);
    $display("Defalt value of wire = %b",b);
    $display("Defalt value of logic = %b",c);
    $display("Defalt value of integer = %b",d);
    $display("Defalt value of real = %0f",e);
    $display("Defalt value of time = %0t",f);
    
#18;
    
    a = 1'b1;
    c = 1'b0;
    d = 1234;
    e = 07.77;
    f = $time;
    
    $display("Initialized value of reg = %b",a);
    $display("Initialized value of wire = %b",b);
    $display("Initialized value of logic = %b",c);
    $display("Initialized value of integer = %od(%b)",d,d);
    $display("Initialized value of real = %.7f(%b)",e,e);
    $display("Initialized value of time = %t",f);
    
  end 
