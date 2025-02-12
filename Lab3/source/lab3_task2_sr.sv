module source(
    output logic x,y,

    input logic a,b,c

    );
    wire k,l,f,m,h;
    not k1(a1,c);
    or k2(a2,a,b);
    nand k3(a3,a,b);
    or k4(a4,a,b);
    xor k5(a5,f,m);
    xor k6(x,a1,a2);
    and k7(y,a2,a5);


endmodule

