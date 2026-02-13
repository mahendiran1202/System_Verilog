module dynamic_methods;

  int m1[];
  int m[] = '{8, 2, 4, 3, 4, 2};

  initial begin
      m1 = new[6];

    foreach (m1[i]) begin
      m1[i] = i;
    end

    $display("m1 = %p, size = %0d", m1, m1.size());

    m.reverse();
    $display("After reverse m = %p", m);

    m.sort();
    $display("After sort m = %p", m);

    m.rsort();
    $display("After rsort m = %p", m);

    m.shuffle();
    $display("After shuffle m = %p", m);

    m1.delete();
    $display("size of m1 after deleting = %0d", m1.size());
  end

endmodule
