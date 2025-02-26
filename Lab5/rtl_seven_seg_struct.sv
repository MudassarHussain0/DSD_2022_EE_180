`timescale 1ns/1ps
module seven_segment(
    input logic s0, s1, s2,  
    input logic n1, n2, n3, n4, 
    output logic AN0, AN1, AN2, AN3, AN4, AN5, AN6, AN7,  
    output logic a, b, c, d, e, f, g  
);
     // segment a
    assign a = (~n1 & n2 & ~n3 & ~n4) | (~n1 & ~n2 & ~n3 & n4) | (n1 & n2 & ~n3 & n4) | (n1 & ~n2 & n3 & n4);

    // segment b
    assign b = (n1 & n2 & ~n4) | (n1 & n3 & n4) | (n1 & n3 & ~n4) | (~n1 & n2 & ~n3 & n4);

    // segment c
    assign c = (n1 & n2 & ~n4) | (n1 & n2 & n3) | (~n1 & ~n2 & n3 & ~n4);

    // segment d
    assign d = (n2 & n3 & n4) | (~n1 & ~n2 & ~n3 & n4) | (~n1 & n2 & ~n3 & ~n4) | (n1 & ~n2 & n3 & ~n4);
    
    // segment e
    assign e = (~n1 & n4) | (~n1 & n2 & ~n3) | (~n2 & ~n3 & n4);
    
    // segment f
    assign f = (~n1 & ~n2 & n4) | (~n1 & ~n2 & n3) | (~n1 & n3 & n4) | (n1 & n2 & ~n3 & n4);
    
    // segment g
    assign g = (~n1 & ~n2 & ~n3) | (~n1 & n2 & n3 & n4) | (n1 & n2 & ~n3 & ~n4);

    assign AN0 = (s2 | s1 | s0);
    assign AN1 = (s2 | s1 | ~s0);
    assign AN2 = (s2 | ~s1 | s0);
    assign AN3 = (s2 | ~s1 | ~s0);
    assign AN4 = (~s2 | s1 | s0);
    assign AN5 = (~s2 | s1 | ~s0);
    assign AN6 = (~s2 | ~s1 | s0);
    assign AN7 = (~s2 | ~s1 | ~s0);

endmodule