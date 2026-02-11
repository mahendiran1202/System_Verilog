module multi_unpacked;
  int lmn[4][8];
  
  initial begin
    foreach(lmn[i])begin
      foreach(lmn[i][j])begin
        lmn[i][j] = $urandom_range (15,65);
      end
    end
    
    $display("");
    $display("diaplaying values of 2 dimensional unpacked array");
    
    foreach(lmn[i]) begin
      foreach (lmn[i][j]) begin
        $display("values of lmn[%0d][%0d] = %0d",i,j,lmn[i][j]);
      end
    end
    
   $display("");
   $display("diaplaying values of 2 dimensional unpacked array in one line");
            
    $display("lmn = %p",lmn);
   $display("");
   end
   endmodule
