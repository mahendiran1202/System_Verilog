module dynamic_array;
  string game [];
  initial begin
    game = new [6];
    game = '{"football","cricket","shooting","athletics","tennis","boxing"};
    
    foreach (game[i]) $display("game[%0d] = %0s",i, game[i]);
    
    $display("size of game = %0d", game.size());
    
    game = new[8] (game);
    $display("size of game resizing = %0d", game.size());
    
    foreach (game[i]) $display("game[%0d] =%0s",i,game[i]);
                               
    game = new[7] (game);
                               
    $display("size of game overring = %0d", game.size());
                               
    foreach (game[i]) $display("game[%0d] =%0s",i,game[i]);
                               
    game.delete();
    $display("size of game after deleting = %0d", game.size());
                               
    end
    endmodule
