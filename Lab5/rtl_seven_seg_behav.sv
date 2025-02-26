module behav (
    input logic n1,n2,n3,n4  // 4-bit input bus
    output logic a, b, c, d, e, f, g
    input logic s0,s1,s2
    output logic AN0,AN1.AN2.AN3,AN4,AN5,AN6,AN7
);

    always_comb begin
        case (cd)
            4'h0: {a, b, c, d, e, f, g} = 7'b0000001;
            4'h1: {a, b, c, d, e, f, g} = 7'b1001111;
            4'h2: {a, b, c, d, e, f, g} = 7'b0010010;
            4'h3: {a, b, c, d, e, f, g} = 7'b0000110;
            4'h4: {a, b, c, d, e, f, g} = 7'b1001100;
            4'h5: {a, b, c, d, e, f, g} = 7'b0100100;
            4'h6: {a, b, c, d, e, f, g} = 7'b0100000;
            4'h7: {a, b, c, d, e, f, g} = 7'b0001111;
            4'h8: {a, b, c, d, e, f, g} = 7'b0000000;
            4'h9: {a, b, c, d, e, f, g} = 7'b0000100;
            4'hA: {a, b, c, d, e, f, g} = 7'b0001000;
            4'hB: {a, b, c, d, e, f, g} = 7'b1100000;
            4'hC: {a, b, c, d, e, f, g} = 7'b0110001;
            4'hD: {a, b, c, d, e, f, g} = 7'b1000010;
            4'hE: {a, b, c, d, e, f, g} = 7'b0110000;
            4'hF: {a, b, c, d, e, f, g} = 7'b0111000;
            default: {a, b, c, d, e, f, g} = 7'b1111111; // Default case
        endcase
    end
    always_comb
        begin
            case(s)
                3'b000 : {AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7} = 8'b01111111;
                3'b001 : {AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7} = 8'b10111111;
                3'b010 : {AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7} = 8'b11011111;
                3'b011 : {AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7} = 8'b11101111;
                3'b100 : {AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7} = 8'b11110111;
                3'b101 : {AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7} = 8'b11111011;
                3'b110 : {AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7} = 8'b11111101;
                3'b111 : {AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7} = 8'b11111110;
                default : {AN0,AN1,AN2,AN3,AN4,AN5,AN6,AN7} = 8'b11111111;
            endcase
        end

endmodule