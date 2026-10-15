
`timescale 1ns/1ps

module comparator_4bit_tb;

reg [3:0] A, B;
wire GT, LT, EQ;

comparator_4bit uut (
    .A(A),
    .B(B),
    .GT(GT),
    .LT(LT),
    .EQ(EQ)
);

initial begin
    $dumpfile("comparator_4bit.vcd");
    $dumpvars(0, comparator_4bit_tb);

    $display(" A     B   | GT LT EQ");
    $monitor("%b  %b |  %b  %b  %b",
             A, B, GT, LT, EQ);

    A = 4'b0000; B = 4'b0000; #10;
    A = 4'b0101; B = 4'b0011; #10;
    A = 4'b0010; B = 4'b0110; #10;
    A = 4'b1010; B = 4'b1010; #10;
    A = 4'b1111; B = 4'b0001; #10;
    A = 4'b0001; B = 4'b1111; #10;
    A = 4'b1000; B = 4'b0111; #10;
    A = 4'b0111; B = 4'b1000; #10;

    $finish;
end

endmodule
