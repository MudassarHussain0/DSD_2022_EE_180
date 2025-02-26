`timescale 1 ns / 10 ps

module lab5_tb();

logic [3:0] num;  // 4-bit input for number
logic [2:0] sel;  // 3-bit input for selection
logic a, b, c, d, e, f, g;  // 7-segment display outputs
logic AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7;  // Anode controls

// Instantiate the DUT (Design Under Test)
behav UUT (
    .n1(num[3]),
    .n2(num[2]),
    .n3(num[1]),
    .n4(num[0]),
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g),
    .s0(sel[0]),
    .s1(sel[1]),
    .s2(sel[2]),
    .AN0(AN0),
    .AN1(AN1),
    .AN2(AN2),
    .AN3(AN3),
    .AN4(AN4),
    .AN5(AN5),
    .AN6(AN6),
    .AN7(AN7)
);

initial begin
    num = 4'b0000; sel = 3'b000; #10;
    num = 4'b0001; sel = 3'b001; #10;
    num = 4'b0010; sel = 3'b010; #10;
    num = 4'b0011; sel = 3'b011; #10;
    num = 4'b0100; sel = 3'b100; #10;
    num = 4'b0101; sel = 3'b101; #10;
    num = 4'b0110; sel = 3'b110; #10;
    num = 4'b0111; sel = 3'b111; #10;
    num = 4'b1000; #10;
    num = 4'b1001; #10;
    num = 4'b1010; #10;
    num = 4'b1011; #10;
    num = 4'b1100; #10;
    num = 4'b1101; #10;
    num = 4'b1110; #10;
    num = 4'b1111; #10;
    $stop;
end

// Print output results for debugging
initial begin
    $monitor("num = %b | segA = %b  segB = %b  segC = %b  segD = %b  segE = %b  segF = %b  segG = %b | AN0-AN7 = %b%b%b%b%b%b%b%b", 
              num, a, b, c, d, e, f, g, AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7);
end

endmodule
