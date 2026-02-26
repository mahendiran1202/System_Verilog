module concotenation();
  bit [3:0] a = 4'b1010;
  bit [3:0] b = 4'b1110;
  bit c = 1;
  
  initial begin
    bit [9:0] d,e;
    d = {a,b,c};
    e = {a,b,{2{c}}};
    $display("D = %b (%0d)",d,d);
    $display("E = %b (%0d)",e,e);
    
  end
endmodule
