module logical_code;
  logic [7:0] a,b,c,x,y,z;  
  initial begin
    a=4'd5;
    b=3'b110;
    c=1'bx;    
    $display("\n \t the value of a = %0d",a); 
    $display("\n \t the value of a = %0d",b); 
    $display("\n \t the value of a = %0d",c); 
    x=a||c; 
    $display("\n \t the output of logic OR a||c = %0b",x);
    y=b&&c;
    $display("\n \t the output of logic AND b&&c = %0b",y);
    z =!b;
    $display("\n \t the output of logic NOT !b = %0b",y);
    
  end
endmodule
