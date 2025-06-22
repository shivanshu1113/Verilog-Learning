module NAND_Gate (
    input x,
    input y,
    output z
);
  assign z = ~(x & y );
endmodule