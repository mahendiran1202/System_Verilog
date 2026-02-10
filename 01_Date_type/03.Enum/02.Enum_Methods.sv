module typedef_enum;
  
  
  typedef enum {JANUARY=1,FEBRUARY,MARCH,APRIL,MAY,JUNE,JULY,AUGUST,SEPTEMBER,OCTOBER,NOVEMBER,DECEMBER}year_e;
  year_e month; 
    
  initial begin

    $display("\n//moths = {\n JANUARY,\n FEBRUARY,\n MARCH ,\n APRIL,\n MAY,\n JUNE,\n JULY,\n AUGUST,\n SEPTEMBER,\n OCTOBER,\n NOVEMBER, \n DECEMBER \n }");
    
    month = month.first(); 
    $display("\nfirst month name = %0s  and its value is = %0d",month,month);

    month = month.last();  
    $display("\nlast month name = %0s  and its value is = %0d",month,month);

    month = MAY; 
    month = month.next();
    $display("\nnext month name after may  = %0s  and its value is = %0d",month,month);

    month = MAY;
    month = month.prev();  
    $display("\nprevious month name befor AR  = %0s  and its value is = %0d",month,month);

    $display("\ncurrent month name = %0s  and its value is = %0d",month.name(),month);

    $display("\ntotal number of months in year type is = %0d\n",month.num());
 
  end
endmodule : typedef_enum
