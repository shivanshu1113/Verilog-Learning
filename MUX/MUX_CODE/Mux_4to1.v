module mux_4to1 (
    input [1:0] Sel,
    input A, B, C, D,
    output Y
);
    assign Y = (Sel == 2'b00) ? A :
               (Sel == 2'b01) ? B :
               (Sel == 2'b10) ? C :
                                D;
endmodule