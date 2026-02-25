module static_automatic_example;
  task static_inc(int id);
    int val;
    val = id;
    #10;
    $display("static task | Id:%0d | internal val:%0d",id,val);
  endtask
  task automatic automatic_inc(int id);
    int val;
    val = id;
    #10;
    $display("automatic task | Id:%0d | internal val:%0d",id,val);
  endtask
  
  initial begin
    $display("---starting Static test (overlap)---");
    fork
      static_inc(1);
      static_inc(2);
    join
    $display("\n ---starting Automatic test (safe)---");
    fork
      automatic_inc(1);
      automatic_inc(2);
    join
    end
endmodule
