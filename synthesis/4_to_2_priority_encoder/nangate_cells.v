module INV_X1 (input A, output ZN);
    assign ZN = ~A;
endmodule

module OAI21_X1 (input A, B1, B2, output ZN);
    assign ZN = ~(A & (B1 | B2));
endmodule

module OR2_X1 (input A1, A2, output ZN);
    assign ZN = A1 | A2;
endmodule

module OR3_X1 (input A1, A2, A3, output ZN);
    assign ZN = A1 | A2 | A3;
endmodule
