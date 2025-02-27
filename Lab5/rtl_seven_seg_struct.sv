module lab5(
    input [3:0] num,
    input [2:0] sel,
    output [6:0] segments,
    output [7:0] anode
    );

    assign segments[0] = (num[2] | num[0]) & (num[3] | ~num[1]) & (num[3] | ~num[2] | ~num[0]) & (~num[3] | num[2] | num[1]) & (~num[3] | num[0]) & (~num[2] | ~num[1]);
    
    assign segments[1] = (num[3] | num[1] | num[0]) & (num[3] | ~num[1] | ~num[0]) & (num[2] | num[0]) & (~num[3] | num[1] | ~num[0]) & (num[3] | num[2]);
    
    assign segments[2] = (num[3] | ~num[2]) & (~num[3] | num[2]) & (num[1] | ~num[0]) & (num[3] | num[1]) & (num[3] | ~num[0]);
    
    assign segments[3] = (~num[2] | num[1] | ~num[0]) & (num[3] | num[2] | num[0]) & (num[2] | ~num[1] | ~num[0]) & (~num[2] | ~num[1] | num[0]) & (~num[3] | num[1]);
    
    assign segments[4] = (num[2] | num[0]) & (~num[1] | num[0]) & (~num[3] | ~num[1]) & (~num[3] | ~num[2]);
    
    assign segments[5] = (num[1] | num[0]) & (num[3] | ~num[2] | num[1]) & (~num[2] | num[0]) & (~num[3] | num[2]) & (~num[3] | ~num[1]);
    
    assign segments[6] = (num[2] | ~num[1]) & (~num[3] | num[2]) & (num[3] | ~num[2] | num[1]) & (~num[1] | num[0]) & (~num[3] | ~num[0]);

    assign anode[0] = (sel[2] | sel[1] | sel[0]);
    
    assign anode[1] = (sel[2] | sel[1] | ~sel[0]);
    
    assign anode[2] = (sel[2] | ~sel[1] | sel[0]);
    
    assign anode[3] = (sel[2] | ~sel[1] | ~sel[0]);
    
    assign anode[4] = (~sel[2] | sel[1] | sel[0]);
    
    assign anode[5] = (~sel[2] | sel[1] | ~sel[0]);
    
    assign anode[6] = (~sel[2] | ~sel[1] | sel[0]);
    
    assign anode[7] = (~sel[2] | ~sel[1] | ~sel[0]);


endmodule