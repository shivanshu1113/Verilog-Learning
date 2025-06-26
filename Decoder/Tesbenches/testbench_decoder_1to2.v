module decoder_1to2_tb;

reg En, A;
wire Y0, Y1;

decoder_1to2 uut (
    .En(En),
    .A(A),
    .Y0(Y0),
    .Y1(Y1)
);

initial begin
    $display("En A | Y0 Y1");
    $display("-------------");

    En = 0; A = 0; #10; $display("%b  %b |  %b  %b", En, A, Y0, Y1);
    En = 0; A = 1; #10; $display("%b  %b |  %b  %b", En, A, Y0, Y1);
    En = 1; A = 0; #10; $display("%b  %b |  %b  %b", En, A, Y0, Y1);
    En = 1; A = 1; #10; $display("%b  %b |  %b  %b", En, A, Y0, Y1);

    $finish;
end
endmodule