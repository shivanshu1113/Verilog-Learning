module mux_4to1_tb;

reg A, B, C, D;
reg [1:0] Sel;
wire Y;

mux_4to1 uut (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .Sel(Sel),
    .Y(Y)
);

initial begin
    $display("Sel A B C D | Y");
    $display("----------------");

    A=1; B=0; C=1; D=0;

    Sel = 2'b00; #10; $display("%b   %b %b %b %b | %b", Sel, A, B, C, D, Y);
    Sel = 2'b01; #10; $display("%b   %b %b %b %b | %b", Sel, A, B, C, D, Y);
    Sel = 2'b10; #10; $display("%b   %b %b %b %b | %b", Sel, A, B, C, D, Y);
    Sel = 2'b11; #10; $display("%b   %b %b %b %b | %b", Sel, A, B, C, D, Y);

    $finish;
end
endmodule