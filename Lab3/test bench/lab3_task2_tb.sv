module tb_2;
 logic a1;
 logic b1;
 logic c1;
 logic sum1;
 logic carry1;

 source lab_2 (
   .a(a1),
   .b(b1),
   .c(c1),
   .x(sum1),
   .y(carry1)

 );

 initial begin
   
    a1 = 0; b1 = 0; c1 = 0;
    #10;
    a1 = 0; b1 = 0; c1 = 1;
    #10;
    a1 = 0; b1 = 1; c1 = 0;
    #10;
    a1 = 0; b1 = 1; c1 = 1;
    #10;
    a1 = 1; b1 = 0; c1 = 0;
    #10;
    a1 = 1; b1 = 0; c1 = 1;
    #10;
    a1 = 1; b1 = 1; c1 = 0;
    #10;
    a1 = 1; b1 = 1; c1 = 1;
    #10;
    $stop;
 end

 endmodule
