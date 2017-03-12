package FIR_types;
  typedef logic signed [0:15] array_of_4_signed_16 [0:3];
  typedef struct packed {
    logic signed [15:0] Tup2_3_sel0;
    logic [0:0] Tup2_3_sel1;
  } Tup2_3;
  typedef struct packed {
    logic [1:0] Tup2_4_sel0;
    FIR_types::Tup2_3 Tup2_4_sel1;
  } Tup2_4;
  typedef logic signed [0:15] array_of_3_signed_16 [0:2];
  typedef struct packed {
    logic [0:0] Tup2_0_sel0;
    logic [15:0] Tup2_0_sel1;
  } Tup2_0;
  typedef struct packed {
    logic [15:0] Tup2_sel0;
    logic [15:0] Tup2_sel1;
  } Tup2;
  typedef struct packed {
    logic [1:0] Tup2_2_sel0;
    logic signed [15:0] Tup2_2_sel1;
  } Tup2_2;
  typedef logic signed [0:15] array_of_1_signed_16 [0:0];
  typedef struct packed {
    logic signed[0:2][0:15] Tup2_1_sel0;
    logic signed[0:0][0:15] Tup2_1_sel1;
  } Tup2_1;
  function logic [0:3][15:0] array_of_4_signed_16_to_lv(FIR_types::array_of_4_signed_16 i);
    for (int n = 0; n < 4; n=n+1)
      array_of_4_signed_16_to_lv[n] = i[n];
  endfunction
  function array_of_4_signed_16 array_of_4_signed_16_from_lv(logic [0:3][15:0] i);
    for (int n = 0; n < 4; n=n+1)
      array_of_4_signed_16_from_lv[n] = i[n];
  endfunction
  function array_of_4_signed_16 array_of_4_signed_16_cons(logic signed [15:0] x,logic signed [0:15] xs [0:2]);
    array_of_4_signed_16_cons[0] = x;
    array_of_4_signed_16_cons[1:3] = xs;
  endfunction
  function logic [0:2][15:0] array_of_3_signed_16_to_lv(FIR_types::array_of_3_signed_16 i);
    for (int n = 0; n < 3; n=n+1)
      array_of_3_signed_16_to_lv[n] = i[n];
  endfunction
  function array_of_3_signed_16 array_of_3_signed_16_from_lv(logic [0:2][15:0] i);
    for (int n = 0; n < 3; n=n+1)
      array_of_3_signed_16_from_lv[n] = i[n];
  endfunction
  function array_of_3_signed_16 array_of_3_signed_16_cons(logic signed [15:0] x,logic signed [0:15] xs [0:1]);
    array_of_3_signed_16_cons[0] = x;
    array_of_3_signed_16_cons[1:2] = xs;
  endfunction
  function logic [0:0][15:0] array_of_1_signed_16_to_lv(FIR_types::array_of_1_signed_16 i);
    for (int n = 0; n < 1; n=n+1)
      array_of_1_signed_16_to_lv[n] = i[n];
  endfunction
  function array_of_1_signed_16 array_of_1_signed_16_from_lv(logic [0:0][15:0] i);
    for (int n = 0; n < 1; n=n+1)
      array_of_1_signed_16_from_lv[n] = i[n];
  endfunction
  function array_of_1_signed_16 array_of_1_signed_16_cons(logic signed [15:0] x,logic signed [0:15] xs [0:-1]);
    array_of_1_signed_16_cons[0] = x;
    array_of_1_signed_16_cons[1:0] = xs;
  endfunction
endpackage : FIR_types
