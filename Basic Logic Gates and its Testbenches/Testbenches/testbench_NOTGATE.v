module NOT_Gate_TB;

reg X;
wire Z;

NOT_Gate uut (
  .X(X),
  .Z(Z)
);
    initial begin
      $display("X | Z");
      $display("--------");
    
    X = 0; #7;
      $display("%b  | %b", X, Z);
    X = 1; #7;
      $display("%b  | %b", X, Z);
    $finish;

end
endmodule