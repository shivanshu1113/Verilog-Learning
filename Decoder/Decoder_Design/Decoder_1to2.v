module decoder_1to2 (
    input En,
    input A,
    output Y0,
    output Y1
);
    assign Y0 = En & ~A;
    assign Y1 = En & A;
endmodule