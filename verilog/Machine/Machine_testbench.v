// Automatically generated Verilog-2001
module Machine_testbench(done);
  output [0:0] done;
  wire [0:0] finished;
  wire [1:0] x;
  wire [1:0] result;
  assign done = finished;
  
  // pragma translate_off
  always @(*) begin
    if (finished == 1'b1) begin
      $finish;
    end
  end
  // pragma translate_on
  
  Machine_topEntity totest
  (.x (x),.result (result));
  
  assign x = {2 {1'bx}};
  
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
