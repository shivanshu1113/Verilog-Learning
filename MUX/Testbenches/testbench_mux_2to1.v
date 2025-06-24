module mux_2to1_tb;

reg A, B, Sel;
wire Y;

mux_2to1 uut (
    .A(A),
    .B(B),
    .Sel(Sel),
    .Y(Y)
);

initial begin
    $display("Sel A B | Y");
    $display("--------------");

    A = 0; B = 0; Sel = 0; #10; $display(" %b   %b %b | %b", Sel, A, B, Y);
    A = 0; B = 1; Sel = 0; #10; $display(" %b   %b %b | %b", Sel, A, B, Y);
    A = 0; B = 1; Sel = 1; #10; $display(" %b   %b %b | %b", Sel, A, B, Y);
    A = 1; B = 0; Sel = 1; #10; $display(" %b   %b %b | %b", Sel, A, B, Y);

    $finish;
end
endmodule