
module full_adder_tb;
logic a1;
logic b1;
logic c1;
logic sum1;
logic carry1;
localparam period = 10;
full_adder UUT(
.a(a1),
.b(b1),
.c(c1),
.sum(sum1),
.carry(carry1)
);
initial 
begin
a1 = 0; b1 = 0; c1 = 0;
#period;
a1 = 0; b1 = 0; c1 = 1;
#period;
a1 = 0; b1 = 1; c1 = 0;
#period;
a1 = 0; b1 = 1; c1 = 1;
#period;
a1 = 1; b1 = 0; c1 = 0;
#period;
a1 = 1; b1 = 0; c1 = 1;
#period;
a1 = 1; b1 = 1; c1 = 0;
#period;
a1 = 1; b1 = 1; c1 = 1;
#period;
$stop;
end
initial
begin
$monitor("sum=%b, carry=%b, a=%b, b=%b, c=%b", sum1,carry1,a1,b1,c1);
end
endmodule
