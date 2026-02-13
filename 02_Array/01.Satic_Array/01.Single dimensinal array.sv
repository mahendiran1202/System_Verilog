module single_dimensional_array;
  int array[5] = '{14,7,28,42,21};
  initial begin
    foreach (array[i]) begin
      $display("array[%0d] = %0d", i, array[i]);
    end
  end
endmodule
