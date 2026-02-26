module bitwise_operator();
  bit[3:0]a,b;
  
  initial begin
    a=4'b1010;
    b=4'b1100;
    $display("Value of A : %b(%0d) and B : %b(%0d)\n",a,a,b,b);
    $display("\t Bitwise AND     :%0d",a&b);
    $display("\t Bitwise OR      :%0d",a|b);
    $display("\t Bitwise NOT(A)  :%0d",~a);
    $display("\t Bitwise NOT(B)  :%0d",~b);
    $display("\t Bitwise XOR     :%0d",a^b);
    $display("\t Bitwise XNOR    :%0d",a~^b);
    
  end
endmodule
    
