// Automatically generated Verilog-2001
module sky(Sw0,Sw1,Led);
  input [0:0] Sw0;
  input [0:0] Sw1;
  output [0:0] Led;
  wire [1:0] input_0;
  assign input_0 = {Sw0,Sw1};
  
  Machine_topEntity Machine_topEntity_inst
  (.x (input_0),.result (Led));
endmodule
