module associative_array;

  int places[string];
  string variable;
  string val1;
  initial begin
    $display("");
    
    places = '{"mahabalipuram":15,"madurai":20,"rameswarm":25,"thanjavur":30,"chennai":35};
    
    $display("places = %p",places);
    $display("//output of places.num()");
    $display("%0d",places.num());
    
    $display("");
    $display("//output of places.size()");
    $display("%0d",places.size());
    
    $display("");
    if(places.exists ("madurai"))begin
    $display("index madurai exists in array");
    end
    else begin
    $display("index madurai not exists in array");
    end
    $display("");
    if(places.first(variable)) begin
    $display("places[%s]=%0d",variable,places[variable]);
    end
    $display("");
    if(places.last(variable)) begin
    $display("places[%s]=%0d",variable,places[variable]);
    end
    $display("");
    if(places.next(val1)) begin
    $display("places[%s]=%0d",val1,places[val1]);
    end
    $display("");
    places.delete("chennai");
    $display("%p",places);
    $display("");
        
    end
    endmodule
