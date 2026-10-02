module MUX2_X1 (A, B, S, Z);
  input A;
  input B;
  input S;
  output Z;

  wire i_12;
  wire i_13;
  wire i_14;

  or  (Z, i_12, i_13);
  and (i_12, S, B);
  and (i_13, A, i_14);
  not (i_14, S);
endmodule
