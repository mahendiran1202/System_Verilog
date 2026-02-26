module logical_shifting();
  bit[3:0] a = 4'b0110,b;
  
  initial begin
    b = a<<1; 
    $display("Left shifting %b<<1   :%b",a,b); // left shifting - multiplication
    $display("Right shifting %b>>1  :%b",b,b>>1); // right shifting - division 
    
  end
endmodule
