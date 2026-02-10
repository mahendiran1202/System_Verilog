module two_state_datatypes;

  bit [3:0]   a;
  byte        b;
  shortint    c;
  int         d;
  longint     e;
  
  initial begin
  
  $display("Two state data types");
    $display("bit,       a = %0b ", a);
    $display("byte,      b = %0d ", b);
    $display("shortint,  c = %0d ", c);
    $display("int,       d = %0d ", d);
    $display("longint,   e = %0d ", e);
  
  #10;
    
    a = 4'b1001;
    b = 8'b10110100;
    c = 16'd86;
    d = 32'd198;
    e = 64'd489;

    $display("Two state data types");
    $display("bit,       a = %0b  ", a);
    $display("byte,      b = %0d  ", b);
    $display("shortint,  c = %0d  ", c);
    $display("int,       d = %0d  ", d);
    $display("longint,   e = %0d  ", e);
  end

endmodule
