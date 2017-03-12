// Automatically generated SystemVerilog-2005
module FIR_testbench(done);
  output logic [0:0] done;
  logic [0:0] finished;
  logic system1000;
  logic system1000_rstn;
  logic signed [15:0] arg;
  logic signed [15:0] result;
  assign done = finished;
  
  // pragma translate_off
  always_comb begin
    if (finished == 1'b1) begin
      $finish;
    end
  end
  // pragma translate_on
  
  // pragma translate_off
  always begin
    system1000 = 0;
    #3 forever begin
      system1000 = ~ system1000;
      #500;
      system1000 = ~ system1000;
      #500;
    end
  end
  // pragma translate_on
  
  // pragma translate_off
  initial begin
    system1000_rstn = 0;
    #2 system1000_rstn = 1;
  end
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
