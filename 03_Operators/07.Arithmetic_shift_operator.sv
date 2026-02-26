module arithmetic_shifting();
  logic signed [3:0] a =4'b1010,b;
  
  initial begin
    b = a<<1;
    //Logical shifting
    $display("Left shifting %b<<1     : %b",a,b); // arithmatic left - adds 0
    $display("Right shifting %b>>1    : %b",b,b>>1); // arithmatic right - adds
    
  end
endmodule
