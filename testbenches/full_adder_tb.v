
`timescale 1ns/1ps

module full_adder_tb;

reg A, B, CIN;
wire SUM, COUT;

full_adder uut (
    .A(A),
    .B(B),
    .CIN(CIN),
    .SUM(SUM),
    .COUT(COUT)
);

initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0, full_adder_tb);

    $display("A B CIN | SUM COUT");
    $monitor("%b %b  %b  |  %b    %b",
             A, B, CIN, SUM, COUT);

    A = 0; B = 0; CIN = 0; #10;
    A = 0; B = 0; CIN = 1; #10;
    A = 0; B = 1; CIN = 0; #10;
    A = 0; B = 1; CIN = 1; #10;
    A = 1; B = 0; CIN = 0; #10;
    A = 1; B = 0; CIN = 1; #10;
    A = 1; B = 1; CIN = 0; #10;
    A = 1; B = 1; CIN = 1; #10;

    $finish;
end

endmodule
