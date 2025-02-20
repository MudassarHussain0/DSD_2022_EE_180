`timescale 1ns/1ps
module lab4_tb;
  logic [1:0] e;   
  logic [1:0] f; 
  logic g;
  logic h;
  logic i;
  localparam period = 10;

  lab4 foo(
    .a0(e[0]),  
    .a1(e[1]),  
    .b0(f[0]),  
    .b1(f[1]), 
    .r(g),
    .g(h),
    .b(i)  
  );

  initial begin
    e = 2'b00; f = 2'b00;
    #period;
    e = 2'b00; f = 2'b01;
    #period;
    e = 2'b00; f = 2'b10;
    #period;
    e = 2'b00; f = 2'b11;
    #period;
    e = 2'b01; f = 2'b00;
    #period;
    e = 2'b01; f = 2'b01;
    #period;
    e = 2'b01; f = 2'b10;
    #period;
    e = 2'b01; f = 2'b11;
    #period;
    e = 2'b10; f = 2'b00;
    #period;
    e = 2'b10; f = 2'b01;
    #period;
    e = 2'b10; f = 2'b10;
    #period;
    e = 2'b10; f = 2'b11;
    #period;
    e = 2'b11; f = 2'b00;
    #period;
    e = 2'b11; f = 2'b01;
    #period;
    e = 2'b11; f = 2'b10;
    #period;
    e = 2'b11; f = 2'b11;
    #period;
    $stop;
  end

  initial begin
    $monitor("r=%b, g=%b, b=%b, a[0]=%b, a[1]=%b, b[0]=%b, b[1]=%b", g, h, i, e[0], e[1], f[0], f[1]);
  end
     
endmodule
