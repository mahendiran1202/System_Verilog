module equality_operator;
  bit [3:0] a,b,c;
  initial begin
    a=4'b10xx;
    b=4'b1011;
    c=4'b11xx;
    $display("is a equals b ? : %0d",a===b);
    $display("is a equals b ? : %0d",a==b);
    $display("is a equals b ? : %0d",a!==b);
    $display("is a equals c ? : %0d",a!==c);
     end
endmodule
