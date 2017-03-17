// Automatically generated Verilog-2001
module sky(// clock
          system1000
          ,// asynchronous reset: active low
          system1000_rstn
          ,Led
          ,an
          ,seg);
  input system1000;
  input system1000_rstn;
  output [0:0] Led;
  output [3:0] an;
  output [7:0] seg;
  wire [12:0] output_0;
  Machine_topEntity Machine_topEntity_inst
  (.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.result (output_0));
  
  assign Led = output_0[12:12];
  
  assign an = output_0[11:8];
  
  assign seg = output_0[7:0];
endmodule
