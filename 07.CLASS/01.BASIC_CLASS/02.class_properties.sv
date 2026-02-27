class properties;
  int a;
  bit [7:0] b;
  string c;
endclass
  
  module class_properties;
    int multiply,divide;  
    properties prts1,prts2; 
    initial begin
      prts1 = new();
      prts2 = new();
      
      prts1.a = 9343;
      prts1.b = 42;
      prts1.c = "MULTIPLY";
      
      prts2.a = 6383;
      prts2.b = 15;
      prts2.c = "DIVIDE";
      
      multiply = prts1.a * prts1.b;
      divide = prts2.a / prts2.b;
      
      $display("\n\t---------prts1 (object)---------");
      $display("$time = %0t | a = %0d | b = %0d | c = %s,multiply = %0d",$time,prts1.a,prts1.b,prts1.c,multiply);
      
      $display("\n\t---------prts2 (object)---------");
      $display("$time = %0t | a = %0d | b = %0d | c = %s,divide = %0d",$time,prts2.a,prts2.b,prts2.c,divide);
      
    end
  endmodule
