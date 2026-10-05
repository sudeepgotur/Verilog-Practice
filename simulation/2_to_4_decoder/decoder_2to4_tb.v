`timescale 1ns/1ps

module decoder_2to4_tb;

    reg A;
    reg B;

    wire Y0;
    wire Y1;
    wire Y2;
    wire Y3;

    decoder_2to4 uut (
        .A(A),
        .B(B),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3)
    );

    initial begin
        $dumpfile("decoder_2to4.vcd");
        $dumpvars(0, decoder_2to4_tb);

        $monitor("Time=%0t | A=%b B=%b | Y3=%b Y2=%b Y1=%b Y0=%b",
                 $time, A, B, Y3, Y2, Y1, Y0);

        A = 0; B = 0;
        #10;

        A = 0; B = 1;
        #10;

        A = 1; B = 0;
        #10;

        A = 1; B = 1;
        #10;

        $finish;
    end

endmodule
