
module comparator_4bit (
    input [3:0] A,
    input [3:0] B,
    output GT,
    output LT,
    output EQ
);

assign GT = (A > B);
assign LT = (A < B);
assign EQ = (A == B);

endmodule
