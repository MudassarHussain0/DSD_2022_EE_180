`timescale 1ns/1ps
module lab4_tb;
  logic [1:0]m;   
 
  logic [1:0]n;
   
  logic o;
  logic p;
  logic q;

localparam period = 10;

lab4 foo(
    .a(m),
    .b(n),
    .r(o),
    .g(p),
    .bl(q)
  );

  initial begin
    m[1] = 0; m[0] = 0; n[1] = 0; n[0] = 0;
    #period;
    m[1] = 0; m[0] = 0; n[1] = 0; n[0] = 1;
    #period;
    m[1] = 0; m[0] = 0; n[1] = 1; n[0] = 0;
    #period;
    m[1] = 0; m[0] = 0; n[1] = 1; n[0] = 1;
    #period;
    m[1] = 0; m[0] = 1; n[1] = 0; n[0] = 0;
    #period;
    m[1] = 0; m[0] = 1; n[1] = 0; n[0] = 1;
    #period;
    m[1] = 0; m[0] = 1; n[1] = 1; n[0] = 0;
    #period;
    m[1] = 0; m[0] = 1; n[1] = 1; n[0] = 1;
    #period;
    m[1] = 1; m[0] = 0; n[1] = 0; n[0] = 0;
    #period;
    m[1] = 1; m[0] = 0; n[1] = 0; n[0] = 1;
    #period;
    m[1] = 1; m[0] = 0; n[1] = 1; n[0] = 0;
    #period;
    m[1] = 1; m[0] = 0; n[1] = 1; n[0] = 1;
    #period;
    m[1] = 1; m[0] = 1; n[1] = 0; n[0] = 0;
    #period;
    m[1] = 1; m[0] = 1; n[1] = 0; n[0] = 1;
    #period;
    m[1] = 1; m[0] = 1; n[1] = 1; n[0] = 0;
    #period;
    m[1] = 1; m[0] = 1; n[1] = 1; n[0] = 1;
    #period;
    $stop;
  end

  initial begin
    $monitor("r=%b, g=%b, bl=%b, a[1]=%b, a[0]=%b, b[1]=%b, b[0]=%b", o, p, q, m[1], m[0], n[1], n[0]);
  end
     
endmodule