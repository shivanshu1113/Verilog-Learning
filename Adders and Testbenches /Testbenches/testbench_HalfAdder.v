module Half_Adder_TB;

reg A, B;
wire Sum, Carry;

Half_Adder uut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin
    $display("A B | Sum Carry");
    $display("-----------------");

    A = 0; B = 0; #10; $display("%b %b |  %b    %b", A, B, Sum, Carry);
    A = 0; B = 1; #10; $display("%b %b |  %b    %b", A, B, Sum, Carry);
    A = 1; B = 0; #10; $display("%b %b |  %b    %b", A, B, Sum, Carry);
    A = 1; B = 1; #10; $display("%b %b |  %b    %b", A, B, Sum, Carry);

    $finish;
  
end
endmodule