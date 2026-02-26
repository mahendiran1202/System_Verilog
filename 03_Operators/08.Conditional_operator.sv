module conditional();
  int a=300;
  bit [8:0] b= 'd500;
  
  initial begin
    string x = a==b ? "Similar" : "Different";
    $display("-------------------------");
    $display("%s",x);
    $display("-------------------------");
    
  end
endmodule
