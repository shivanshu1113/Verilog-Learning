module XOR_Gate_TB;

reg A;
reg B;
wire C;

XOR_Gate uut (
  .A(A),
  .B(B),
  .C(C)
);
    initial begin
      $display("A B | C");
      $display("---------");
      
    A = 0; B = 0; #7;
    $display("%b %b | %b", A, B, C);
    A = 0; B = 1; #7;
    $display("%b %b | %b", A, B, C);
    A = 1; B = 0; #7;
    $display("%b %b | %b", A, B, C);
    A = 1; B = 1; #7;
    $display("%b %b | %b", A, B, C);
    $finish;
      
end
endmodule