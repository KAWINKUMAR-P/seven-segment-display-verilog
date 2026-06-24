`timescale 1ns / 1ps

module tb_seven_segment;

    reg  [3:0] sw;
    wire [6:0] a_to_g;
    wire [7:0] an;
    wire dp;

    seven_segment uut (
        .sw(sw),
        .a_to_g(a_to_g),
        .an(an),
        .dp(dp)
    );

    initial
    begin

        // Apply all hexadecimal values
        sw = 4'h0; #10;
        sw = 4'h1; #10;
        sw = 4'h2; #10;
        sw = 4'h3; #10;
        sw = 4'h4; #10;
        sw = 4'h5; #10;
        sw = 4'h6; #10;
        sw = 4'h7; #10;
        sw = 4'h8; #10;
        sw = 4'h9; #10;
        sw = 4'hA; #10;
        sw = 4'hB; #10;
        sw = 4'hC; #10;
        sw = 4'hD; #10;
        sw = 4'hE; #10;
        sw = 4'hF; #10;

        $finish;
    end

    initial
    begin
        $monitor("Time=%0t  SW=%h  SEG=%b",
                 $time, sw, a_to_g);
    end

endmodule