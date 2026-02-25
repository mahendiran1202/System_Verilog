module task_example;
  task compare (input int a,b,output done);
    if(a>b)
    $display("a is greater than b");
    else if(a<b)
    $display("a is less than b");
    else
    $display("a is equal to b");
    #10;
    done = 1;
    endtask
 initial begin
    bit done;
    compare(7,4,done);
    if(done)$display("compare complete at time = %0t",$time);
    compare(5,5,done);
    if(done)$display("compare complete at time = %0t",$time);
    compare(2,8,done);
    if(done)$display("compare complete at time = %0t",$time);
    end
    endmodule
