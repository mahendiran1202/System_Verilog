class constructor_calling;
  int a;
  bit [3:)]b;
  string c;
  function new();
    a = 45;
    b = 22;
    c = "DIVIDE";
  endfunction
endclass

constructor_calling expli;

initial begin 
  exli = new();
  divide = real'(expli.a)/expli.b;
  $display("\n\t-------expli(object)-------"):
  $display("$time = %0t | a = %0d | b = %0d | c = %0s,%0s = %0.3f",$time,expli.a,expli.b,explic,divide);
  #1;
end
endmodule
