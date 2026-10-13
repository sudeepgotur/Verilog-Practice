
`timescale 1ns/1ps

module comparator_1bit_tb;

reg A, B;
wire GT, LT, EQ;

comparator_1bit uut (
    .A(A),
    .B(B),
    .GT(GT),
    .LT(LT),
    .EQ(EQ)
);

initial begin
    $dumpfile("comparator_1bit.vcd");
    $dumpvars(0, comparator_1bit_tb);

    $display("A B | GT LT EQ");
    $monitor("%b %b |  %b  %b  %b", A, B, GT, LT, EQ);

    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;

    $finish;
end

endmodule
