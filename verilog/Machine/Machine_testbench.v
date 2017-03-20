// Automatically generated Verilog-2001
module Machine_testbench(done);
  output [0:0] done;
  wire [0:0] finished;
  wire system1000;
  wire system1000_rstn;
  wire [11:0] ds1;
  wire [19:0] result;
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
  
  Machine_topEntity totest
  (.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.ds1 (ds1)
  ,.result (result));
  
  assign ds1 = {12 {1'bx}};
  
  reg [0:0] done_0;
  always begin
  // pragma translate_off
    done_0 <= 1'b0;
    #100
  // pragma translate_on
    done_0 = 1'b1;
  end
  assign finished = done_0;
endmodule
