class bike;
  int year;
  string model;
endclass

module bike_info;
  bike branch1,branch2;
  
  initial begin
    branch1 = new();
    branch2 = new();
    
    branch1.year = 2001;
    branch1.model = "pulsar 150";
    
    branch2.year = 2024;
    branch2.model = "pulsar NS 200";
    
    $display("------BRANCH (object)------");
    $display("$time = %0t  | year = %0d | model =%0s",$time,branch1.year,branch1.model);
    
    $display("------BRANCH (object)------");
    $display("$time = %0t | year = %0d | model = %0s",$time,branch2.year,branch2.model);
    
  end
endmodule
