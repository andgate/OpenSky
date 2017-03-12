// Automatically generated Verilog-2001
module FIR_testbench(done);
  output [0:0] done;
  wire [0:0] finished;
  wire system1000;
  wire system1000_rstn;
  wire signed [15:0] arg;
  wire signed [15:0] result;
  assign done = finished;
  
  // pragma translate_off
  always @(*) begin
    if (finished == 1'b1) begin
      $finish;
    end
  end
  // pragma translate_on
  
  // pragma translate_off
  reg  clk;
  always begin
    clk = 0;
    #3 forever begin
      clk = ~ clk;
      #500;
      clk = ~ clk;
      #500;
    end
  end
  assign system1000 = clk;
  // pragma translate_on
  
  // pragma translate_off
  reg  rst_n;
  initial begin
    #1 rst_n = 0;
    #2 rst_n = 1;
  end
  assign system1000_rstn = rst_n;
  // pragma translate_on
  
  FIR_topEntity_0 totest
  (.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.arg (arg)
  ,.result (result));
  
  FIR_testInput stimuli
  (.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.result (arg));
  
  FIR_expectedOutput verify
  (.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.arg (result)
  ,.result (finished));
endmodule
