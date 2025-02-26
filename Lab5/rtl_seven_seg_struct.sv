
module lab5 (
    input logic [3:0] num,      
    input logic [2:0] sel,      
    output logic [7:0] segments,
    output logic [7:0] anode
);

    assign segments[0] = (~num[3] & ~num[2] & ~num[1] & num[0]) | (~num[3] & num[2] & ~num[1] & ~num[0]) | (num[3] & num[2] & ~num[1] & num[0]) | (num[3] & ~num[2] & num[1] & num[0]);

    assign segments[1] = (num[3] & num[2] & ~num[0]) | (~num[3] & num[2] & ~num[1] & num[0]) | (num[3] & num[1] & num[0]) | (num[2] & num[1] & ~num[0]);

    assign segments[2] = (num[3] & num[2] & ~num[0]) | (num[3] & num[2] & num[1]) | (~num[3] & ~num[2] & num[1] & ~num[0]);


    assign segments[3] =  (~num[3] & ~num[2] & ~num[1] & num[0]) | (~num[3] & num[2] & ~num[1] & ~num[0]) | (num[3] & ~num[2] & num[1] & ~num[0]) | (num[2] & num[1] & num[0]);

    assign segments[4] = (~num[3] & num[2] & ~num[1]) |  (~num[3] & num[0]) | (~num[2] & ~num[1] & num[0]);

    assign segments[5] =(~num[3] & ~num[2] & num[1]) | (~num[3] & num[1] & num[0]) | (num[3] & num[2] & ~num[1] & num[0]) | (~num[3] & ~num[2] & num[0]);


    assign segments[6] = (num[3] & num[2] & ~num[1] & ~num[0]) | (~num[3] & num[2] & num[1] & num[0]) | (~num[3] & ~num[2] & ~num[1]);

    assign segments[7] = 0;
    // Anode control logic 
    assign anode[0] = (~sel[2]&sel[0] | sel[1] | sel[2]);
    assign anode[1] = (~sel[2]&~sel[0] | sel[1] | sel[2]);
    assign anode[2] = (~sel[2]&sel[0] | ~sel[1] | sel[2]);
    assign anode[3] = (~sel[0]&~sel[2] | ~sel[1] | sel[2]);
    assign anode[4] = (sel[0]&sel[2] | sel[1] | ~sel[2]);
    assign anode[5] = (~sel[0]&sel[2] | sel[1]  | ~sel[2]);
    assign anode[6] = (sel[0]& sel[2] | ~sel[1] | ~sel[2]);
    assign anode[7] = (~sel[0]&sel[1] | ~sel[1] | ~sel[2]);

endmodule
