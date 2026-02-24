module relational_operators;
  
  bit [3:0] a,b,c,d;
  
  initial begin
    a=4'b1111;
    b=4'b0111;
    c=4'b10xx;
    d=4'b10xx;
    
    $display("is a<b ? = %0d",a<b);
    $display("is a>b ? = %0d",a>b);
    $display("is c<=d ? = %0d",c<=d);
    $display("is c<=b ? = %0d",c<=b);
    
  end
endmodule
