`timescale 1ns/10ps

module lab3_tb;
    reg a;
    reg b;
    reg c;
    wire y;
    wire x;

    // UUT instantiation
    lab3 UUT(
        .a(a),
        .b(b),
        .c(c),
        .y(y),
        .x(x)
    );

    // Initial block for test cases
    initial begin 
        a = 0; b = 0; c = 0; #10;
        a = 0; b = 0; c = 1; #10;
        a = 0; b = 1; c = 0; #10;
        a = 0; b = 1; c = 1; #10;
        a = 1; b = 0; c = 0; #10;
        a = 1; b = 0; c = 1; #10;  
        a = 1; b = 1; c = 0; #10;
        a = 1; b = 1; c = 1; #10;
        $stop;
    end

    // Monitor the signals
    initial begin
        $monitor ("y=%b, x=%b, a=%b, b=%b, c=%b", y, x, a, b, c);
    end

endmodule
