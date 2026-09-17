`timescale 1ns/1ps

module mux_2to1_tb;

    reg I0;
    reg I1;
    reg S;
    wire Y;

    // Instantiate the DUT (Design Under Test)
    mux_2to1 dut (
        .I0(I0),
        .I1(I1),
        .S(S),
        .Y(Y)
    );

    initial begin

        // Test 1
        I0 = 0;
        I1 = 1;
        S  = 0;
        #10;

        // Test 2
        I0 = 0;
        I1 = 1;
        S  = 1;
        #10;

        // Test 3
        I0 = 1;
        I1 = 0;
        S  = 0;
        #10;

        // Test 4
        I0 = 1;
        I1 = 0;
        S  = 1;
        #10;

        $finish;
    end

endmodule
