module Full_Adder_TB;

reg A, B, Cin;
wire Sum, Cout;

Full_Adder uut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Cin(Cin),
    .Cout(Cout)
);

initial begin
    $display("A B Cin | Sum Cout");
    $display("-------------------");

    A = 0; B = 0; Cin = 0; #10; $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);
    A = 0; B = 1; Cin = 0; #10; $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);
    A = 1; B = 0; Cin = 0; #10; $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);
    A = 1; B = 1; Cin = 0; #10; $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);
    A = 1; B = 1; Cin = 1; #10; $display("%b %b  %b  |  %b    %b", A, B, Cin, Sum, Cout);

    $finish;
  
end
endmodule