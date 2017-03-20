// Automatically generated Verilog-2001
module sky(Sw
          ,Btn
          ,mclk
          ,an
          ,seg
          ,Led);
  input [7:0] Sw;
  input [3:0] Btn;
  input [0:0] mclk;
  output [3:0] an;
  output [7:0] seg;
  output [7:0] Led;
  wire system1000;
  wire clock_locked;
  wire system1000_rstn;
  wire [11:0] input_0;
  wire [19:0] output_0;
  clock clock_inst
  (.clksrc (mclk)
  ,.clk (system1000)
  ,.clklk (clock_locked));
  
  // reset system1000_rstn is asynchronously asserted, but synchronously de-asserted
  reg r1;
  reg r2;
  
  always @(posedge system1000 or negedge clock_locked)
  if (~ clock_locked) begin
    r1 <= 1'b0;
    r2 <= 1'b0;
  end else begin
    r1 <= 1'b1;
    r2 <= r1;
  end
  
  assign system1000_rstn = r2;
  
  assign input_0 = {Sw,Btn};
  
  Machine_topEntity Machine_topEntity_inst
  (.ds1 (input_0)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.result (output_0));
  
  assign an = output_0[19:16];
  
  assign seg = output_0[15:8];
  
  assign Led = output_0[7:0];
endmodule
