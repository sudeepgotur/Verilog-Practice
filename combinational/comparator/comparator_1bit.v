
module comparator_1bit (
    input A,
    input B,
    output GT,
    output LT,
    output EQ
);

assign GT = A & ~B;
assign LT = ~A & B;
assign EQ = ~(A ^ B);

endmodule
