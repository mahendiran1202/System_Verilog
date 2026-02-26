module wildcart_operator();
  logic [7:0] a,b;
  logic [7:0] c,d;
  
  initial begin
    a='hff; b='hxx;
    c='hxx; d='hff;
    $display("\na=%b and b=%b",a,b);
    $display("Does a and b are equals...?      : %0d",a==?b);
    $display("Does a and b are not equals...?  : %0d",a!=?b);
    $display("c=%b and d=%b",c,d);
    $display("Does a and b are equals...?      : %0d",c==?d);
    $display("Does a and b are not equals...?  : %0d",c!=?d);
    
  end
endmodule
