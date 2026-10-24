`timescale 1ns/1ps
module full_subtractor_tb;
reg A, B, BIN;
wire DIFF, BOUT;
full_subtractor uut (
    .A(A),
    .B(B),
    .BIN(BIN),
    .DIFF(DIFF),
    .BOUT(BOUT)
);
initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0, full_subtractor_tb);
$display("A B BIN | DIFF BOUT");
    $monitor("%b %b  %b  |  %b    %b",
             A, B, BIN, DIFF, BOUT);
A = 0; B = 0; BIN = 0; #10;
    A = 0; B = 0; BIN = 1; #10;
    A = 0; B = 1; BIN = 0; #10;
    A = 0; B = 1; BIN = 1; #10;
    A = 1; B = 0; BIN = 0; #10;
    A = 1; B = 0; BIN = 1; #10;
    A = 1; B = 1; BIN = 0; #10;
    A = 1; B = 1; BIN = 1; #10;
$finish;
end
endmodule
