`timescale 1ns/1ps
module lab4(
    input [1:0]a,
    
    input [1:0]b,
   
    output r,
    output g,
    output bl
);
    assign r = ((~b[1] & ~b[0]) | (a[1] & a[0]) | (a[0] & ~b[1]) | (a[1] & ~b[1]) | (a[1] & b[1] & ~b[0]));
    assign g = ((~a[1] & ~a[0]) | (b[1] & b[0]) | (~a[1] & b[1]) | (~a[1] & b[0]) | (~a[0] & b[1]));
    assign bl = ((a[1] & ~b[1]) | (~a[1] & b[1]) | (a[0] & ~b[0]) | (~a[0] & b[0]));
   
endmodule