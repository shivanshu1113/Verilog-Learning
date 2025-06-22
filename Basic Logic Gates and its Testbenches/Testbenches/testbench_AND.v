module testbench;
  reg a,b;
  wire o;
  
  And_Gate uut (.a(a), .b(b), .o(o));
  initial begin
    $monitor("a = %b, b = %b, o = %b", a, b, o);
    a = 0; b = 0;
    #7 a = 0; b = 1;
    #7 a = 1; b = 0;
    #7 a = 1; b = 1;
    #7 $finish;
  end
 endmodule