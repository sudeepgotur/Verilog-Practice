`timescale 1ns/1ps

module priority_encoder_4to2_tb;

    reg D3, D2, D1, D0;
    wire Y1, Y0, valid;

    // Instantiate the DUT (Device Under Test)
    priority_encoder_4to2 dut (
        .D3(D3),
        .D2(D2),
        .D1(D1),
        .D0(D0),
        .Y1(Y1),
        .Y0(Y0),
        .valid(valid)
    );

    initial begin

        // Create waveform file
        $dumpfile("priority_encoder_4to2.vcd");
        $dumpvars(0, priority_encoder_4to2_tb);

        $display("Time | D3 D2 D1 D0 | Y1 Y0 | Valid");
        $display("---------------------------------------");

        // No input active
        D3=0; D2=0; D1=0; D0=0;
        #10;
        $display("%4t |  %b  %b  %b  %b |  %b  %b  |   %b",
                 $time, D3,D2,D1,D0,Y1,Y0,valid);

        // D0 active
        D3=0; D2=0; D1=0; D0=1;
        #10;
        $display("%4t |  %b  %b  %b  %b |  %b  %b  |   %b",
                 $time, D3,D2,D1,D0,Y1,Y0,valid);

        // D1 active
        D3=0; D2=0; D1=1; D0=0;
        #10;
        $display("%4t |  %b  %b  %b  %b |  %b  %b  |   %b",
                 $time, D3,D2,D1,D0,Y1,Y0,valid);

        // D2 active
        D3=0; D2=1; D1=0; D0=0;
        #10;
        $display("%4t |  %b  %b  %b  %b |  %b  %b  |   %b",
                 $time, D3,D2,D1,D0,Y1,Y0,valid);

        // D3 active
        D3=1; D2=0; D1=0; D0=0;
        #10;
        $display("%4t |  %b  %b  %b  %b |  %b  %b  |   %b",
                 $time, D3,D2,D1,D0,Y1,Y0,valid);

        // Priority test: D2, D1 and D0 active
        D3=0; D2=1; D1=1; D0=1;
        #10;
        $display("%4t |  %b  %b  %b  %b |  %b  %b  |   %b",
                 $time, D3,D2,D1,D0,Y1,Y0,valid);

        // Priority test: D3 and D1 active
        D3=1; D2=0; D1=1; D0=0;
        #10;
        $display("%4t |  %b  %b  %b  %b |  %b  %b  |   %b",
                 $time, D3,D2,D1,D0,Y1,Y0,valid);

        // All inputs active
        D3=1; D2=1; D1=1; D0=1;
        #10;
        $display("%4t |  %b  %b  %b  %b |  %b  %b  |   %b",
                 $time, D3,D2,D1,D0,Y1,Y0,valid);

        $finish;
    end

endmodule
