

`timescale 1ns/1ps
module lab4_tb;
  logic [1:0] e;   
  logic [1:0] f; 
  logic g;
  logic h;
  logic i;
  localparam period = 10;

  lab4 foo(
    .a(e),
    .b(f),
    .r(g),
    .g(h),
    .b(i)
  );

  initial begin
    e[0] = 0; e[1] = 0; f[0] = 0; f[1] = 0;
    #period;
    e[0] = 0; e[1] = 0; f[0] = 0; f[1] = 1;
    #period;
    e[0] = 0; e[1] = 0; f[0] = 1; f[1] = 0;
    #period;
    e[0] = 0; e[1] = 0; f[0] = 1; f[1] = 1;
    #period;
    e[0] = 0; e[1] = 1; f[0] = 0; f[1] = 0;
    #period;
    e[0] = 0; e[1] = 1; f[0] = 0; f[1] = 1;
    #period;
    e[0] = 0; e[1] = 1; f[0] = 1; f[1] = 0;
    #period;
    e[0] = 0; e[1] = 1; f[0] = 1; f[1] = 1;
    #period;
    e[0] = 1; e[1] = 0; f[0] = 0; f[1] = 0;
    #period;
    e[0] = 1; e[1] = 0; f[0] = 0; f[1] = 1;
    #period;
    e[0] = 1; e[1] = 0; f[0] = 1; f[1] = 0;
    #period;
    e[0] = 1; e[1] = 0; f[0] = 1; f[1] = 1;
    #period;
    e[0] = 1; e[1] = 1; f[0] = 0; f[1] = 0;
    #period;
    e[0] = 1; e[1] = 1; f[0] = 0; f[1] = 1;
    #period;
    e[0] = 1; e[1] = 1; f[0] = 1; f[1] = 0;
    #period;
    e[0] = 1; e[1] = 1; f[0] = 1; f[1] = 1;
    #period;
    $stop;
  end

  initial begin
    $monitor("r=%b, g=%b, b=%b, a[0]=%b, a[1]=%b, b[0]=%b, b[1]=%b", g, h, i, e[0], e[1], f[0], f[1]);
  end
     
endmodule
