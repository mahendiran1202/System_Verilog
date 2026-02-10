module tb;
  typedef enum {TIGER, LION, WOLF, CHEETAH} Animal_set_1;
  typedef enum {BEAR=2, PANDA=7, MONKEY, ZEBRA} Animal_set_2;
  typedef enum {GORILLA[4]} Animal_set_3;
  typedef enum {WOLF[3] = 5} Animal_set_4;
  typedef enum {LION[3:5]} Animal_set_5;
  typedef enum {CAT[3:5] = 4} Animal_set_6;

  initial begin
    
  	Animal_set_1 Animal1;
    Animal_set_2 Animal2;
    Animal_set_3 Animal3;
    Animal_set_4 Animal4;
    Animal_set_5 Animal5;
    Animal_set_6 Animal6;

    Animal1 = LION; $display ("Animal1 = %0d, name = %s", Animal1, Animal1.name());
    Animal2 = MONKEY; $display ("Animal2 = %0d, name = %s", Animal2, Animal2.name());
    Animal3 = GORILLA3; $display ("Animal3 = %0d, name = %s", Animal3, Animal3.name());
    Animal4 = WOLF1;   $display ("Animal4 = %0d, name = %s", Animal4, Animal4.name());
    Animal5 = LION3;$display ("Animal5 = %0d, name = %s", Animal5, Animal5.name());
    Animal6 = CAT4; $display ("Animal6 = %0d, name = %s", Animal6, Animal6.name());

  end
endmodule
