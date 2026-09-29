`timescale 1ns/1ps

module mux_4to1_tb;

    reg I0, I1, I2, I3;
    reg S0, S1;
    wire Y;

    // Instantiate the 4-to-1 MUX
    mux_4to1 uut (
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .S0(S0),
        .S1(S1),
        .Y(Y)
    );

    initial begin

        // Create waveform file
        $dumpfile("mux_4to1.vcd");
        $dumpvars(0, mux_4to1_tb);

        // Display results
        $monitor("Time=%0t | I0=%b I1=%b I2=%b I3=%b | S1=%b S0=%b | Y=%b",
                 $time, I0, I1, I2, I3, S1, S0);

        // Input values
        I0 = 0;
        I1 = 1;
        I2 = 0;
        I3 = 1;

        // S1 S0 = 00 -> I0
        S1 = 0; S0 = 0;
        #10;

        // S1 S0 = 01 -> I1
        S1 = 0; S0 = 1;
        #10;

        // S1 S0 = 10 -> I2
        S1 = 1; S0 = 0;
        #10;

        // S1 S0 = 11 -> I3
        S1 = 1; S0 = 1;
        #10;

        // Change input values
        I0 = 1;
        I1 = 0;
        I2 = 1;
        I3 = 0;

        // Test all selections again
        S1 = 0; S0 = 0;
        #10;

        S1 = 0; S0 = 1;
        #10;

        S1 = 1; S0 = 0;
        #10;

        S1 = 1; S0 = 1;
        #10;

        $finish;
    end

endmodule
