module Or_Gate_TB;

reg A, B;
wire O;

Or_Gate uut (
    .A(A),
    .B(B),
    .O(O)
);
    initial begin
      $display("A B | O");
      $display("--------");
    
    A = 0; B = 0; #7;
      $display("%b %b | %b", A, B, O);
    A = 0; B = 1; #7;
      $display("%b %b | %b", A, B, O);
    A = 1; B = 0; #7;
      $display("%b %b | %b", A, B, O);
    A = 1; B = 1; #7;
      $display("%b %b | %b", A, B, O);
    $finish;
  
end
endmodule