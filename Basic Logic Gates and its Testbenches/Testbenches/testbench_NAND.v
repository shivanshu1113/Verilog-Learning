module NAND_Gate_TB;

reg x;
reg y;
wire z;

  NAND_Gate uut (
  .x(x),
  .y(y),
  .z(z)
);
    initial begin
      $display("x y |z");
    $display("---------");

    x = 0 ; y = 0; #7
      $display("%b %b | %b", x,y,z);
    x = 0 ; y = 1; #7;
    $display("%b %b | %b", x,y,z);
    x = 1 ; y = 0; #7;
    $display("%b %b | %b", x,y,z);
    x = 1 ; y = 1; #7;
    $display("%b %b | %b", x,y,z);
    $finish;
      
end
endmodule