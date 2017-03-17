// Automatically generated Verilog-2001
module Machine_topEntity_w(// clock
                          system1000
                          ,// asynchronous reset: active low
                          system1000_rstn
                          ,result);
  input system1000;
  input system1000_rstn;
  output [129:0] result;
  wire [129:0] result_rec;
  wire [129:0] case_alt;
  wire [128:0] x;
  wire [95:0] app_arg;
  wire [32:0] app_arg_0;
  wire [0:0] app_arg_1;
  wire [64:0] result_0;
  wire [95:0] case_alt_0;
  wire [95:0] case_alt_1;
  wire [32:0] case_alt_2;
  wire [94:0] ram;
  wire [32:0] out;
  wire [0:0] done;
  wire [64:0] x_case_alt;
  wire [65:0] x_0;
  wire [29:0] app_arg_2;
  wire [29:0] app_arg_3;
  wire [63:0] app_arg_4;
  wire [32:0] case_alt_3;
  wire [31:0] ds1;
  wire [64:0] x_case_alt_0;
  wire [0:0] ds1_0;
  wire [95:0] MachineSkytopEntity3;
  wire [29:0] ptr;
  wire [29:0] ptr_0;
  wire [62:0] x_1;
  wire [31:0] o;
  wire [64:0] x_case_alt_1;
  wire [0:0] ds2;
  wire [62:0] x_app_arg;
  wire [95:0] x_2;
  wire [63:0] ds3;
  assign result_rec = case_alt;
  
  assign case_alt = {app_arg
                    ,app_arg_0
                    ,app_arg_1};
  
  Machine_cpu Machine_cpu_x
  (.result (x)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.ramstatus (result_0));
  
  reg [95:0] app_arg_reg;
  always @(*) begin
    case(ram[94:93])
      2'b00 : app_arg_reg = case_alt_0;
      2'b01 : app_arg_reg = case_alt_1;
      default : app_arg_reg = {1'b0
                              ,1'b0
                              ,30'b000000000000000000000000000000
                              ,64'b0000000000000000000000000000000000000000000000000000000000000000};
    endcase
  end
  assign app_arg = app_arg_reg;
  
  reg [32:0] app_arg_0_reg;
  always @(*) begin
    case(out[32:32])
      1'b0 : app_arg_0_reg = {1'b0
                             ,32'd0};
      default : app_arg_0_reg = case_alt_2;
    endcase
  end
  assign app_arg_0 = app_arg_0_reg;
  
  reg [0:0] app_arg_1_reg;
  always @(*) begin
    case(done)
      1'b0 : app_arg_1_reg = 1'b1;
      default : app_arg_1_reg = 1'b0;
    endcase
  end
  assign app_arg_1 = app_arg_1_reg;
  
  assign result_0 = x_case_alt;
  
  assign case_alt_0 = {1'b1
                      ,1'b0
                      ,app_arg_2
                      ,64'b0000000000000000000000000000000000000000000000000000000000000000};
  
  assign case_alt_1 = {1'b1
                      ,1'b1
                      ,app_arg_3
                      ,app_arg_4};
  
  assign case_alt_2 = case_alt_3;
  
  assign ram = x[128:34];
  
  assign out = x[33:1];
  
  assign done = x[0:0];
  
  reg [64:0] x_case_alt_reg;
  always @(*) begin
    case(ds1_0)
      1'b0 : x_case_alt_reg = {2'b00,63'b000000000000000000000000000000000000000000000000000000000000000};
      1'b1 : x_case_alt_reg = x_case_alt_0;
      default : x_case_alt_reg = {65 {1'bx}};
    endcase
  end
  assign x_case_alt = x_case_alt_reg;
  
  Machine_ram Machine_ram_x_0
  (.result (x_0)
  ,.system1000 (system1000)
  ,.system1000_rstn (system1000_rstn)
  ,.requests (MachineSkytopEntity3));
  
  assign app_arg_2 = ptr;
  
  assign app_arg_3 = ptr_0;
  
  Machine_binarize Machine_binarize_app_arg_4
  (.result (app_arg_4)
  ,.ski (x_1));
  
  assign case_alt_3 = {1'b1,o};
  
  assign ds1 = out[31:0];
  
  reg [64:0] x_case_alt_0_reg;
  always @(*) begin
    case(ds2)
      1'b0 : x_case_alt_0_reg = x_case_alt_1;
      1'b1 : x_case_alt_0_reg = {2'b10,63'b000000000000000000000000000000000000000000000000000000000000000};
      default : x_case_alt_0_reg = {65 {1'bx}};
    endcase
  end
  assign x_case_alt_0 = x_case_alt_0_reg;
  
  assign ds1_0 = x_0[65:65];
  
  assign MachineSkytopEntity3 = x_2;
  
  assign ptr = ram[92:63];
  
  assign ptr_0 = ram[92:63];
  
  assign x_1 = ram[62:0];
  
  assign o = ds1;
  
  assign x_case_alt_1 = {2'b01,x_app_arg};
  
  assign ds2 = x_0[64:64];
  
  Machine_unbinarize Machine_unbinarize_x_app_arg
  (.result (x_app_arg),.w (ds3));
  
  assign x_2 = result_rec[129:34];
  
  assign ds3 = x_0[63:0];
  
  assign result = result_rec;
endmodule
