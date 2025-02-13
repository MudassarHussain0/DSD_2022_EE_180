module lab3(
    input a,
    input b,
    input c,
    output x,
    output y
);

wire nor_out;
wire or_out;
wire and_out;

assign nor_out = ~c;
assign or_out = a | b;
assign and_out = a & b;

assign x = (nor_out)^(or_out);
assign y = (~and_out^or_out) & or_out;

endmodule
