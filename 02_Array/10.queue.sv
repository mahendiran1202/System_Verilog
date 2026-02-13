module queue;
  
 
  string apps[$] = '{"whatsapp","telegram","snapchat","phone","camera","photo","youtube"};
  
  int x,y,z;
  
  initial begin
    $display("");
    $display("Initial queue apps = %p",apps);
    
    $display("");
    x = apps.size();
    $display("After size(): x = %0d, apps",x,apps);
    
    $display("");         
    apps.insert(7,"chatgpt");
    $display("After insert(7,\"chatgpt\"): apps = %p",apps);
    
    $display("");                 
    apps.delete(2);
    $display("After delete(2): apps = %p", apps);
                  
    $display("");
    y = apps.pop_front();
    $display("After pop_front(): y = %0d,apps = %p",y,apps);
             
    $display("");
    z = apps.pop_back();
    $display("After pop_back(): z = %0d,apps = %p",z,apps);
             
    $display("");
    apps.push_front("gpay"); 
    $display("After push_front():apps = %p", apps);
             
    $display("");
    apps.push_back("sudoku");
    $display("After push_back(): apps = %p",apps);
             
    end
    endmodule
