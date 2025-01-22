module Memory(
  input         clock,
  input  [31:0] io_bundle_address, // @[src/main/scala/peripheral/Memory.scala 42:14]
  input  [31:0] io_bundle_write_data, // @[src/main/scala/peripheral/Memory.scala 42:14]
  input         io_bundle_write_enable, // @[src/main/scala/peripheral/Memory.scala 42:14]
  input         io_bundle_write_strobe_0, // @[src/main/scala/peripheral/Memory.scala 42:14]
  input         io_bundle_write_strobe_1, // @[src/main/scala/peripheral/Memory.scala 42:14]
  input         io_bundle_write_strobe_2, // @[src/main/scala/peripheral/Memory.scala 42:14]
  input         io_bundle_write_strobe_3, // @[src/main/scala/peripheral/Memory.scala 42:14]
  output [31:0] io_bundle_read_data, // @[src/main/scala/peripheral/Memory.scala 42:14]
  output [31:0] io_instruction, // @[src/main/scala/peripheral/Memory.scala 42:14]
  input  [31:0] io_instruction_address, // @[src/main/scala/peripheral/Memory.scala 42:14]
  input  [31:0] io_debug_read_address, // @[src/main/scala/peripheral/Memory.scala 42:14]
  output [31:0] io_debug_read_data // @[src/main/scala/peripheral/Memory.scala 42:14]
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_21;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] mem_0 [0:8191]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_0_io_bundle_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_0_io_bundle_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_0_io_bundle_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_0_io_debug_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_0_io_debug_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_0_io_debug_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_0_io_instruction_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_0_io_instruction_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_0_io_instruction_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_0_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_0_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_0_MPORT_mask; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_0_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  reg  mem_0_io_bundle_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_0_io_bundle_read_data_MPORT_addr_pipe_0;
  reg  mem_0_io_debug_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_0_io_debug_read_data_MPORT_addr_pipe_0;
  reg  mem_0_io_instruction_MPORT_en_pipe_0;
  reg [12:0] mem_0_io_instruction_MPORT_addr_pipe_0;
  reg [7:0] mem_1 [0:8191]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_1_io_bundle_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_1_io_bundle_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_1_io_bundle_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_1_io_debug_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_1_io_debug_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_1_io_debug_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_1_io_instruction_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_1_io_instruction_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_1_io_instruction_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_1_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_1_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_1_MPORT_mask; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_1_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  reg  mem_1_io_bundle_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_1_io_bundle_read_data_MPORT_addr_pipe_0;
  reg  mem_1_io_debug_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_1_io_debug_read_data_MPORT_addr_pipe_0;
  reg  mem_1_io_instruction_MPORT_en_pipe_0;
  reg [12:0] mem_1_io_instruction_MPORT_addr_pipe_0;
  reg [7:0] mem_2 [0:8191]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_2_io_bundle_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_2_io_bundle_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_2_io_bundle_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_2_io_debug_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_2_io_debug_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_2_io_debug_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_2_io_instruction_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_2_io_instruction_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_2_io_instruction_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_2_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_2_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_2_MPORT_mask; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_2_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  reg  mem_2_io_bundle_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_2_io_bundle_read_data_MPORT_addr_pipe_0;
  reg  mem_2_io_debug_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_2_io_debug_read_data_MPORT_addr_pipe_0;
  reg  mem_2_io_instruction_MPORT_en_pipe_0;
  reg [12:0] mem_2_io_instruction_MPORT_addr_pipe_0;
  reg [7:0] mem_3 [0:8191]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_3_io_bundle_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_3_io_bundle_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_3_io_bundle_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_3_io_debug_read_data_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_3_io_debug_read_data_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_3_io_debug_read_data_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_3_io_instruction_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_3_io_instruction_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_3_io_instruction_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [7:0] mem_3_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire [12:0] mem_3_MPORT_addr; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_3_MPORT_mask; // @[src/main/scala/peripheral/Memory.scala 52:24]
  wire  mem_3_MPORT_en; // @[src/main/scala/peripheral/Memory.scala 52:24]
  reg  mem_3_io_bundle_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_3_io_bundle_read_data_MPORT_addr_pipe_0;
  reg  mem_3_io_debug_read_data_MPORT_en_pipe_0;
  reg [12:0] mem_3_io_debug_read_data_MPORT_addr_pipe_0;
  reg  mem_3_io_instruction_MPORT_en_pipe_0;
  reg [12:0] mem_3_io_instruction_MPORT_addr_pipe_0;
  wire [31:0] _T = {{2'd0}, io_bundle_address[31:2]}; // @[src/main/scala/peripheral/Memory.scala 58:34]
  wire [15:0] io_bundle_read_data_lo = {mem_1_io_bundle_read_data_MPORT_data,mem_0_io_bundle_read_data_MPORT_data}; // @[src/main/scala/peripheral/Memory.scala 60:78]
  wire [15:0] io_bundle_read_data_hi = {mem_3_io_bundle_read_data_MPORT_data,mem_2_io_bundle_read_data_MPORT_data}; // @[src/main/scala/peripheral/Memory.scala 60:78]
  wire [31:0] _io_debug_read_data_T = {{2'd0}, io_debug_read_address[31:2]}; // @[src/main/scala/peripheral/Memory.scala 61:58]
  wire [15:0] io_debug_read_data_lo = {mem_1_io_debug_read_data_MPORT_data,mem_0_io_debug_read_data_MPORT_data}; // @[src/main/scala/peripheral/Memory.scala 61:82]
  wire [15:0] io_debug_read_data_hi = {mem_3_io_debug_read_data_MPORT_data,mem_2_io_debug_read_data_MPORT_data}; // @[src/main/scala/peripheral/Memory.scala 61:82]
  wire [31:0] _io_instruction_T = {{2'd0}, io_instruction_address[31:2]}; // @[src/main/scala/peripheral/Memory.scala 62:59]
  wire [15:0] io_instruction_lo = {mem_1_io_instruction_MPORT_data,mem_0_io_instruction_MPORT_data}; // @[src/main/scala/peripheral/Memory.scala 62:83]
  wire [15:0] io_instruction_hi = {mem_3_io_instruction_MPORT_data,mem_2_io_instruction_MPORT_data}; // @[src/main/scala/peripheral/Memory.scala 62:83]
  assign mem_0_io_bundle_read_data_MPORT_en = mem_0_io_bundle_read_data_MPORT_en_pipe_0;
  assign mem_0_io_bundle_read_data_MPORT_addr = mem_0_io_bundle_read_data_MPORT_addr_pipe_0;
  assign mem_0_io_bundle_read_data_MPORT_data = mem_0[mem_0_io_bundle_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  assign mem_0_io_debug_read_data_MPORT_en = mem_0_io_debug_read_data_MPORT_en_pipe_0;
  assign mem_0_io_debug_read_data_MPORT_addr = mem_0_io_debug_read_data_MPORT_addr_pipe_0;
  assign mem_0_io_debug_read_data_MPORT_data = mem_0[mem_0_io_debug_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  assign mem_0_io_instruction_MPORT_en = mem_0_io_instruction_MPORT_en_pipe_0;
  assign mem_0_io_instruction_MPORT_addr = mem_0_io_instruction_MPORT_addr_pipe_0;
  assign mem_0_io_instruction_MPORT_data = mem_0[mem_0_io_instruction_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  assign mem_0_MPORT_data = io_bundle_write_data[7:0];
  assign mem_0_MPORT_addr = _T[12:0];
  assign mem_0_MPORT_mask = io_bundle_write_strobe_0;
  assign mem_0_MPORT_en = io_bundle_write_enable;
  assign mem_1_io_bundle_read_data_MPORT_en = mem_1_io_bundle_read_data_MPORT_en_pipe_0;
  assign mem_1_io_bundle_read_data_MPORT_addr = mem_1_io_bundle_read_data_MPORT_addr_pipe_0;
  assign mem_1_io_bundle_read_data_MPORT_data = mem_1[mem_1_io_bundle_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  assign mem_1_io_debug_read_data_MPORT_en = mem_1_io_debug_read_data_MPORT_en_pipe_0;
  assign mem_1_io_debug_read_data_MPORT_addr = mem_1_io_debug_read_data_MPORT_addr_pipe_0;
  assign mem_1_io_debug_read_data_MPORT_data = mem_1[mem_1_io_debug_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  assign mem_1_io_instruction_MPORT_en = mem_1_io_instruction_MPORT_en_pipe_0;
  assign mem_1_io_instruction_MPORT_addr = mem_1_io_instruction_MPORT_addr_pipe_0;
  assign mem_1_io_instruction_MPORT_data = mem_1[mem_1_io_instruction_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  assign mem_1_MPORT_data = io_bundle_write_data[15:8];
  assign mem_1_MPORT_addr = _T[12:0];
  assign mem_1_MPORT_mask = io_bundle_write_strobe_1;
  assign mem_1_MPORT_en = io_bundle_write_enable;
  assign mem_2_io_bundle_read_data_MPORT_en = mem_2_io_bundle_read_data_MPORT_en_pipe_0;
  assign mem_2_io_bundle_read_data_MPORT_addr = mem_2_io_bundle_read_data_MPORT_addr_pipe_0;
  assign mem_2_io_bundle_read_data_MPORT_data = mem_2[mem_2_io_bundle_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  assign mem_2_io_debug_read_data_MPORT_en = mem_2_io_debug_read_data_MPORT_en_pipe_0;
  assign mem_2_io_debug_read_data_MPORT_addr = mem_2_io_debug_read_data_MPORT_addr_pipe_0;
  assign mem_2_io_debug_read_data_MPORT_data = mem_2[mem_2_io_debug_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  assign mem_2_io_instruction_MPORT_en = mem_2_io_instruction_MPORT_en_pipe_0;
  assign mem_2_io_instruction_MPORT_addr = mem_2_io_instruction_MPORT_addr_pipe_0;
  assign mem_2_io_instruction_MPORT_data = mem_2[mem_2_io_instruction_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  assign mem_2_MPORT_data = io_bundle_write_data[23:16];
  assign mem_2_MPORT_addr = _T[12:0];
  assign mem_2_MPORT_mask = io_bundle_write_strobe_2;
  assign mem_2_MPORT_en = io_bundle_write_enable;
  assign mem_3_io_bundle_read_data_MPORT_en = mem_3_io_bundle_read_data_MPORT_en_pipe_0;
  assign mem_3_io_bundle_read_data_MPORT_addr = mem_3_io_bundle_read_data_MPORT_addr_pipe_0;
  assign mem_3_io_bundle_read_data_MPORT_data = mem_3[mem_3_io_bundle_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  assign mem_3_io_debug_read_data_MPORT_en = mem_3_io_debug_read_data_MPORT_en_pipe_0;
  assign mem_3_io_debug_read_data_MPORT_addr = mem_3_io_debug_read_data_MPORT_addr_pipe_0;
  assign mem_3_io_debug_read_data_MPORT_data = mem_3[mem_3_io_debug_read_data_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  assign mem_3_io_instruction_MPORT_en = mem_3_io_instruction_MPORT_en_pipe_0;
  assign mem_3_io_instruction_MPORT_addr = mem_3_io_instruction_MPORT_addr_pipe_0;
  assign mem_3_io_instruction_MPORT_data = mem_3[mem_3_io_instruction_MPORT_addr]; // @[src/main/scala/peripheral/Memory.scala 52:24]
  assign mem_3_MPORT_data = io_bundle_write_data[31:24];
  assign mem_3_MPORT_addr = _T[12:0];
  assign mem_3_MPORT_mask = io_bundle_write_strobe_3;
  assign mem_3_MPORT_en = io_bundle_write_enable;
  assign io_bundle_read_data = {io_bundle_read_data_hi,io_bundle_read_data_lo}; // @[src/main/scala/peripheral/Memory.scala 60:78]
  assign io_instruction = {io_instruction_hi,io_instruction_lo}; // @[src/main/scala/peripheral/Memory.scala 62:83]
  assign io_debug_read_data = {io_debug_read_data_hi,io_debug_read_data_lo}; // @[src/main/scala/peripheral/Memory.scala 61:82]
  always @(posedge clock) begin
    if (mem_0_MPORT_en & mem_0_MPORT_mask) begin
      mem_0[mem_0_MPORT_addr] <= mem_0_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
    end
    mem_0_io_bundle_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_0_io_bundle_read_data_MPORT_addr_pipe_0 <= _T[12:0];
    end
    mem_0_io_debug_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_0_io_debug_read_data_MPORT_addr_pipe_0 <= _io_debug_read_data_T[12:0];
    end
    mem_0_io_instruction_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_0_io_instruction_MPORT_addr_pipe_0 <= _io_instruction_T[12:0];
    end
    if (mem_1_MPORT_en & mem_1_MPORT_mask) begin
      mem_1[mem_1_MPORT_addr] <= mem_1_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
    end
    mem_1_io_bundle_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_1_io_bundle_read_data_MPORT_addr_pipe_0 <= _T[12:0];
    end
    mem_1_io_debug_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_1_io_debug_read_data_MPORT_addr_pipe_0 <= _io_debug_read_data_T[12:0];
    end
    mem_1_io_instruction_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_1_io_instruction_MPORT_addr_pipe_0 <= _io_instruction_T[12:0];
    end
    if (mem_2_MPORT_en & mem_2_MPORT_mask) begin
      mem_2[mem_2_MPORT_addr] <= mem_2_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
    end
    mem_2_io_bundle_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_2_io_bundle_read_data_MPORT_addr_pipe_0 <= _T[12:0];
    end
    mem_2_io_debug_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_2_io_debug_read_data_MPORT_addr_pipe_0 <= _io_debug_read_data_T[12:0];
    end
    mem_2_io_instruction_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_2_io_instruction_MPORT_addr_pipe_0 <= _io_instruction_T[12:0];
    end
    if (mem_3_MPORT_en & mem_3_MPORT_mask) begin
      mem_3[mem_3_MPORT_addr] <= mem_3_MPORT_data; // @[src/main/scala/peripheral/Memory.scala 52:24]
    end
    mem_3_io_bundle_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_3_io_bundle_read_data_MPORT_addr_pipe_0 <= _T[12:0];
    end
    mem_3_io_debug_read_data_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_3_io_debug_read_data_MPORT_addr_pipe_0 <= _io_debug_read_data_T[12:0];
    end
    mem_3_io_instruction_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_3_io_instruction_MPORT_addr_pipe_0 <= _io_instruction_T[12:0];
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem_0[initvar] = _RAND_0[7:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem_1[initvar] = _RAND_7[7:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem_2[initvar] = _RAND_14[7:0];
  _RAND_21 = {1{`RANDOM}};
  for (initvar = 0; initvar < 8192; initvar = initvar+1)
    mem_3[initvar] = _RAND_21[7:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_0_io_bundle_read_data_MPORT_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mem_0_io_bundle_read_data_MPORT_addr_pipe_0 = _RAND_2[12:0];
  _RAND_3 = {1{`RANDOM}};
  mem_0_io_debug_read_data_MPORT_en_pipe_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  mem_0_io_debug_read_data_MPORT_addr_pipe_0 = _RAND_4[12:0];
  _RAND_5 = {1{`RANDOM}};
  mem_0_io_instruction_MPORT_en_pipe_0 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  mem_0_io_instruction_MPORT_addr_pipe_0 = _RAND_6[12:0];
  _RAND_8 = {1{`RANDOM}};
  mem_1_io_bundle_read_data_MPORT_en_pipe_0 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  mem_1_io_bundle_read_data_MPORT_addr_pipe_0 = _RAND_9[12:0];
  _RAND_10 = {1{`RANDOM}};
  mem_1_io_debug_read_data_MPORT_en_pipe_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  mem_1_io_debug_read_data_MPORT_addr_pipe_0 = _RAND_11[12:0];
  _RAND_12 = {1{`RANDOM}};
  mem_1_io_instruction_MPORT_en_pipe_0 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  mem_1_io_instruction_MPORT_addr_pipe_0 = _RAND_13[12:0];
  _RAND_15 = {1{`RANDOM}};
  mem_2_io_bundle_read_data_MPORT_en_pipe_0 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  mem_2_io_bundle_read_data_MPORT_addr_pipe_0 = _RAND_16[12:0];
  _RAND_17 = {1{`RANDOM}};
  mem_2_io_debug_read_data_MPORT_en_pipe_0 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  mem_2_io_debug_read_data_MPORT_addr_pipe_0 = _RAND_18[12:0];
  _RAND_19 = {1{`RANDOM}};
  mem_2_io_instruction_MPORT_en_pipe_0 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  mem_2_io_instruction_MPORT_addr_pipe_0 = _RAND_20[12:0];
  _RAND_22 = {1{`RANDOM}};
  mem_3_io_bundle_read_data_MPORT_en_pipe_0 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  mem_3_io_bundle_read_data_MPORT_addr_pipe_0 = _RAND_23[12:0];
  _RAND_24 = {1{`RANDOM}};
  mem_3_io_debug_read_data_MPORT_en_pipe_0 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  mem_3_io_debug_read_data_MPORT_addr_pipe_0 = _RAND_25[12:0];
  _RAND_26 = {1{`RANDOM}};
  mem_3_io_instruction_MPORT_en_pipe_0 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  mem_3_io_instruction_MPORT_addr_pipe_0 = _RAND_27[12:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InstructionROM(
  input         clock,
  input  [31:0] io_address, // @[src/main/scala/peripheral/InstructionROM.scala 17:14]
  output [31:0] io_data // @[src/main/scala/peripheral/InstructionROM.scala 17:14]
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] mem [0:11]; // @[src/main/scala/peripheral/InstructionROM.scala 23:45]
  wire  mem_io_data_MPORT_en; // @[src/main/scala/peripheral/InstructionROM.scala 23:45]
  wire [3:0] mem_io_data_MPORT_addr; // @[src/main/scala/peripheral/InstructionROM.scala 23:45]
  wire [31:0] mem_io_data_MPORT_data; // @[src/main/scala/peripheral/InstructionROM.scala 23:45]
  assign mem_io_data_MPORT_en = 1'h1;
  assign mem_io_data_MPORT_addr = io_address[3:0];
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign mem_io_data_MPORT_data = mem[mem_io_data_MPORT_addr]; // @[src/main/scala/peripheral/InstructionROM.scala 23:45]
  `else
  assign mem_io_data_MPORT_data = mem_io_data_MPORT_addr >= 4'hc ? _RAND_0[31:0] : mem[mem_io_data_MPORT_addr]; // @[src/main/scala/peripheral/InstructionROM.scala 23:45]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign io_data = mem_io_data_MPORT_data; // @[src/main/scala/peripheral/InstructionROM.scala 29:11]
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
  integer initvar;
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_0 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
initial begin
  $readmemh("/home/lhh/computer_arch/final_lab/riscv-core/verilog/sb.asmbin.txt", mem);
end
endmodule
module ROMLoader(
  input         clock,
  input         reset,
  output [31:0] io_bundle_address, // @[src/main/scala/peripheral/ROMLoader.scala 7:14]
  output [31:0] io_bundle_write_data, // @[src/main/scala/peripheral/ROMLoader.scala 7:14]
  output        io_bundle_write_enable, // @[src/main/scala/peripheral/ROMLoader.scala 7:14]
  output        io_bundle_write_strobe_0, // @[src/main/scala/peripheral/ROMLoader.scala 7:14]
  output        io_bundle_write_strobe_1, // @[src/main/scala/peripheral/ROMLoader.scala 7:14]
  output        io_bundle_write_strobe_2, // @[src/main/scala/peripheral/ROMLoader.scala 7:14]
  output        io_bundle_write_strobe_3, // @[src/main/scala/peripheral/ROMLoader.scala 7:14]
  output [31:0] io_rom_address, // @[src/main/scala/peripheral/ROMLoader.scala 7:14]
  input  [31:0] io_rom_data, // @[src/main/scala/peripheral/ROMLoader.scala 7:14]
  output        io_load_finished // @[src/main/scala/peripheral/ROMLoader.scala 7:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] address; // @[src/main/scala/peripheral/ROMLoader.scala 17:24]
  reg  valid; // @[src/main/scala/peripheral/ROMLoader.scala 18:24]
  wire [33:0] _GEN_10 = {address, 2'h0}; // @[src/main/scala/peripheral/ROMLoader.scala 27:40]
  wire [34:0] _io_bundle_address_T = {{1'd0}, _GEN_10}; // @[src/main/scala/peripheral/ROMLoader.scala 27:40]
  wire [34:0] _io_bundle_address_T_2 = _io_bundle_address_T + 35'h1000; // @[src/main/scala/peripheral/ROMLoader.scala 27:55]
  wire [31:0] _address_T_1 = address + 32'h1; // @[src/main/scala/peripheral/ROMLoader.scala 29:39]
  wire  _GEN_0 = address == 32'hb | valid; // @[src/main/scala/peripheral/ROMLoader.scala 30:40 31:13 18:24]
  wire [34:0] _GEN_3 = address <= 32'hb ? _io_bundle_address_T_2 : 35'h0; // @[src/main/scala/peripheral/ROMLoader.scala 21:26 24:37 27:28]
  assign io_bundle_address = _GEN_3[31:0];
  assign io_bundle_write_data = address <= 32'hb ? io_rom_data : 32'h0; // @[src/main/scala/peripheral/ROMLoader.scala 22:26 24:37 26:28]
  assign io_bundle_write_enable = address <= 32'hb; // @[src/main/scala/peripheral/ROMLoader.scala 24:16]
  assign io_bundle_write_strobe_0 = address <= 32'hb; // @[src/main/scala/peripheral/ROMLoader.scala 24:16]
  assign io_bundle_write_strobe_1 = address <= 32'hb; // @[src/main/scala/peripheral/ROMLoader.scala 24:16]
  assign io_bundle_write_strobe_2 = address <= 32'hb; // @[src/main/scala/peripheral/ROMLoader.scala 24:16]
  assign io_bundle_write_strobe_3 = address <= 32'hb; // @[src/main/scala/peripheral/ROMLoader.scala 24:16]
  assign io_rom_address = address; // @[src/main/scala/peripheral/ROMLoader.scala 35:20]
  assign io_load_finished = valid; // @[src/main/scala/peripheral/ROMLoader.scala 34:20]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/peripheral/ROMLoader.scala 17:24]
      address <= 32'h0; // @[src/main/scala/peripheral/ROMLoader.scala 17:24]
    end else if (address <= 32'hb) begin // @[src/main/scala/peripheral/ROMLoader.scala 24:37]
      address <= _address_T_1; // @[src/main/scala/peripheral/ROMLoader.scala 29:28]
    end
    if (reset) begin // @[src/main/scala/peripheral/ROMLoader.scala 18:24]
      valid <= 1'h0; // @[src/main/scala/peripheral/ROMLoader.scala 18:24]
    end else if (address <= 32'hb) begin // @[src/main/scala/peripheral/ROMLoader.scala 24:37]
      valid <= _GEN_0;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  address = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  valid = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Control(
  input        io_jump_flag, // @[src/main/scala/riscv/core/fivestage_forward/Control.scala 7:14]
  input  [4:0] io_rs1_id, // @[src/main/scala/riscv/core/fivestage_forward/Control.scala 7:14]
  input  [4:0] io_rs2_id, // @[src/main/scala/riscv/core/fivestage_forward/Control.scala 7:14]
  input        io_memory_read_enable_ex, // @[src/main/scala/riscv/core/fivestage_forward/Control.scala 7:14]
  input  [4:0] io_rd_ex, // @[src/main/scala/riscv/core/fivestage_forward/Control.scala 7:14]
  output       io_if_flush, // @[src/main/scala/riscv/core/fivestage_forward/Control.scala 7:14]
  output       io_id_flush, // @[src/main/scala/riscv/core/fivestage_forward/Control.scala 7:14]
  output       io_pc_stall, // @[src/main/scala/riscv/core/fivestage_forward/Control.scala 7:14]
  output       io_if_stall // @[src/main/scala/riscv/core/fivestage_forward/Control.scala 7:14]
);
  wire  _T_5 = io_memory_read_enable_ex & io_rd_ex != 5'h0 & (io_rd_ex == io_rs1_id | io_rd_ex == io_rs2_id); // @[src/main/scala/riscv/core/fivestage_forward/Control.scala 27:59]
  assign io_if_flush = io_jump_flag; // @[src/main/scala/riscv/core/fivestage_forward/Control.scala 20:15 24:22 25:17]
  assign io_id_flush = io_jump_flag | _T_5; // @[src/main/scala/riscv/core/fivestage_forward/Control.scala 24:22 26:17]
  assign io_pc_stall = io_jump_flag ? 1'h0 : _T_5; // @[src/main/scala/riscv/core/fivestage_forward/Control.scala 22:15 24:22]
  assign io_if_stall = io_jump_flag ? 1'h0 : _T_5; // @[src/main/scala/riscv/core/fivestage_forward/Control.scala 22:15 24:22]
endmodule
module RegisterFile(
  input         clock,
  input         reset,
  input         io_write_enable, // @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
  input  [4:0]  io_write_address, // @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
  input  [31:0] io_write_data, // @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
  input  [4:0]  io_read_address1, // @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
  input  [4:0]  io_read_address2, // @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
  output [31:0] io_read_data1, // @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
  output [31:0] io_read_data2, // @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
  input  [4:0]  io_debug_read_address, // @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
  output [31:0] io_debug_read_data // @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] registers_0; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_1; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_2; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_3; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_4; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_5; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_6; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_7; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_8; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_9; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_10; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_11; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_12; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_13; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_14; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_15; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_16; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_17; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_18; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_19; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_20; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_21; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_22; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_23; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_24; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_25; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_26; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_27; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_28; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_29; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_30; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  reg [31:0] registers_31; // @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
  wire  _io_read_data1_T = io_read_address1 == 5'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 38:25]
  wire  _io_read_data1_T_2 = io_read_address1 == io_write_address & io_write_enable; // @[src/main/scala/riscv/core/RegisterFile.scala 39:46]
  wire [31:0] _GEN_97 = 5'h1 == io_read_address1 ? registers_1 : registers_0; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_98 = 5'h2 == io_read_address1 ? registers_2 : _GEN_97; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_99 = 5'h3 == io_read_address1 ? registers_3 : _GEN_98; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_100 = 5'h4 == io_read_address1 ? registers_4 : _GEN_99; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_101 = 5'h5 == io_read_address1 ? registers_5 : _GEN_100; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_102 = 5'h6 == io_read_address1 ? registers_6 : _GEN_101; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_103 = 5'h7 == io_read_address1 ? registers_7 : _GEN_102; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_104 = 5'h8 == io_read_address1 ? registers_8 : _GEN_103; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_105 = 5'h9 == io_read_address1 ? registers_9 : _GEN_104; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_106 = 5'ha == io_read_address1 ? registers_10 : _GEN_105; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_107 = 5'hb == io_read_address1 ? registers_11 : _GEN_106; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_108 = 5'hc == io_read_address1 ? registers_12 : _GEN_107; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_109 = 5'hd == io_read_address1 ? registers_13 : _GEN_108; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_110 = 5'he == io_read_address1 ? registers_14 : _GEN_109; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_111 = 5'hf == io_read_address1 ? registers_15 : _GEN_110; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_112 = 5'h10 == io_read_address1 ? registers_16 : _GEN_111; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_113 = 5'h11 == io_read_address1 ? registers_17 : _GEN_112; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_114 = 5'h12 == io_read_address1 ? registers_18 : _GEN_113; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_115 = 5'h13 == io_read_address1 ? registers_19 : _GEN_114; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_116 = 5'h14 == io_read_address1 ? registers_20 : _GEN_115; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_117 = 5'h15 == io_read_address1 ? registers_21 : _GEN_116; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_118 = 5'h16 == io_read_address1 ? registers_22 : _GEN_117; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_119 = 5'h17 == io_read_address1 ? registers_23 : _GEN_118; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_120 = 5'h18 == io_read_address1 ? registers_24 : _GEN_119; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_121 = 5'h19 == io_read_address1 ? registers_25 : _GEN_120; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_122 = 5'h1a == io_read_address1 ? registers_26 : _GEN_121; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_123 = 5'h1b == io_read_address1 ? registers_27 : _GEN_122; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_124 = 5'h1c == io_read_address1 ? registers_28 : _GEN_123; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_125 = 5'h1d == io_read_address1 ? registers_29 : _GEN_124; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_126 = 5'h1e == io_read_address1 ? registers_30 : _GEN_125; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_127 = 5'h1f == io_read_address1 ? registers_31 : _GEN_126; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _io_read_data1_T_3 = _io_read_data1_T_2 ? io_write_data : _GEN_127; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire  _io_read_data2_T = io_read_address2 == 5'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 46:25]
  wire  _io_read_data2_T_2 = io_read_address2 == io_write_address & io_write_enable; // @[src/main/scala/riscv/core/RegisterFile.scala 47:46]
  wire [31:0] _GEN_129 = 5'h1 == io_read_address2 ? registers_1 : registers_0; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_130 = 5'h2 == io_read_address2 ? registers_2 : _GEN_129; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_131 = 5'h3 == io_read_address2 ? registers_3 : _GEN_130; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_132 = 5'h4 == io_read_address2 ? registers_4 : _GEN_131; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_133 = 5'h5 == io_read_address2 ? registers_5 : _GEN_132; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_134 = 5'h6 == io_read_address2 ? registers_6 : _GEN_133; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_135 = 5'h7 == io_read_address2 ? registers_7 : _GEN_134; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_136 = 5'h8 == io_read_address2 ? registers_8 : _GEN_135; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_137 = 5'h9 == io_read_address2 ? registers_9 : _GEN_136; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_138 = 5'ha == io_read_address2 ? registers_10 : _GEN_137; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_139 = 5'hb == io_read_address2 ? registers_11 : _GEN_138; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_140 = 5'hc == io_read_address2 ? registers_12 : _GEN_139; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_141 = 5'hd == io_read_address2 ? registers_13 : _GEN_140; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_142 = 5'he == io_read_address2 ? registers_14 : _GEN_141; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_143 = 5'hf == io_read_address2 ? registers_15 : _GEN_142; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_144 = 5'h10 == io_read_address2 ? registers_16 : _GEN_143; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_145 = 5'h11 == io_read_address2 ? registers_17 : _GEN_144; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_146 = 5'h12 == io_read_address2 ? registers_18 : _GEN_145; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_147 = 5'h13 == io_read_address2 ? registers_19 : _GEN_146; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_148 = 5'h14 == io_read_address2 ? registers_20 : _GEN_147; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_149 = 5'h15 == io_read_address2 ? registers_21 : _GEN_148; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_150 = 5'h16 == io_read_address2 ? registers_22 : _GEN_149; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_151 = 5'h17 == io_read_address2 ? registers_23 : _GEN_150; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_152 = 5'h18 == io_read_address2 ? registers_24 : _GEN_151; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_153 = 5'h19 == io_read_address2 ? registers_25 : _GEN_152; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_154 = 5'h1a == io_read_address2 ? registers_26 : _GEN_153; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_155 = 5'h1b == io_read_address2 ? registers_27 : _GEN_154; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_156 = 5'h1c == io_read_address2 ? registers_28 : _GEN_155; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_157 = 5'h1d == io_read_address2 ? registers_29 : _GEN_156; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_158 = 5'h1e == io_read_address2 ? registers_30 : _GEN_157; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_159 = 5'h1f == io_read_address2 ? registers_31 : _GEN_158; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _io_read_data2_T_3 = _io_read_data2_T_2 ? io_write_data : _GEN_159; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  wire  _io_debug_read_data_T = io_debug_read_address == 5'h0; // @[src/main/scala/riscv/core/RegisterFile.scala 54:30]
  wire  _io_debug_read_data_T_2 = io_debug_read_address == io_write_address & io_write_enable; // @[src/main/scala/riscv/core/RegisterFile.scala 55:51]
  wire [31:0] _GEN_161 = 5'h1 == io_debug_read_address ? registers_1 : registers_0; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_162 = 5'h2 == io_debug_read_address ? registers_2 : _GEN_161; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_163 = 5'h3 == io_debug_read_address ? registers_3 : _GEN_162; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_164 = 5'h4 == io_debug_read_address ? registers_4 : _GEN_163; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_165 = 5'h5 == io_debug_read_address ? registers_5 : _GEN_164; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_166 = 5'h6 == io_debug_read_address ? registers_6 : _GEN_165; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_167 = 5'h7 == io_debug_read_address ? registers_7 : _GEN_166; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_168 = 5'h8 == io_debug_read_address ? registers_8 : _GEN_167; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_169 = 5'h9 == io_debug_read_address ? registers_9 : _GEN_168; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_170 = 5'ha == io_debug_read_address ? registers_10 : _GEN_169; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_171 = 5'hb == io_debug_read_address ? registers_11 : _GEN_170; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_172 = 5'hc == io_debug_read_address ? registers_12 : _GEN_171; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_173 = 5'hd == io_debug_read_address ? registers_13 : _GEN_172; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_174 = 5'he == io_debug_read_address ? registers_14 : _GEN_173; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_175 = 5'hf == io_debug_read_address ? registers_15 : _GEN_174; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_176 = 5'h10 == io_debug_read_address ? registers_16 : _GEN_175; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_177 = 5'h11 == io_debug_read_address ? registers_17 : _GEN_176; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_178 = 5'h12 == io_debug_read_address ? registers_18 : _GEN_177; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_179 = 5'h13 == io_debug_read_address ? registers_19 : _GEN_178; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_180 = 5'h14 == io_debug_read_address ? registers_20 : _GEN_179; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_181 = 5'h15 == io_debug_read_address ? registers_21 : _GEN_180; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_182 = 5'h16 == io_debug_read_address ? registers_22 : _GEN_181; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_183 = 5'h17 == io_debug_read_address ? registers_23 : _GEN_182; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_184 = 5'h18 == io_debug_read_address ? registers_24 : _GEN_183; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_185 = 5'h19 == io_debug_read_address ? registers_25 : _GEN_184; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_186 = 5'h1a == io_debug_read_address ? registers_26 : _GEN_185; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_187 = 5'h1b == io_debug_read_address ? registers_27 : _GEN_186; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_188 = 5'h1c == io_debug_read_address ? registers_28 : _GEN_187; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_189 = 5'h1d == io_debug_read_address ? registers_29 : _GEN_188; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_190 = 5'h1e == io_debug_read_address ? registers_30 : _GEN_189; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _GEN_191 = 5'h1f == io_debug_read_address ? registers_31 : _GEN_190; // @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
  wire [31:0] _io_debug_read_data_T_3 = _io_debug_read_data_T_2 ? io_write_data : _GEN_191; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  assign io_read_data1 = _io_read_data1_T ? 32'h0 : _io_read_data1_T_3; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  assign io_read_data2 = _io_read_data2_T ? 32'h0 : _io_read_data2_T_3; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  assign io_debug_read_data = _io_debug_read_data_T ? 32'h0 : _io_debug_read_data_T_3; // @[src/main/scala/chisel3/util/Mux.scala 141:16]
  always @(posedge clock) begin
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h0 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_0 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h1 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_1 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h2 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_2 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h3 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_3 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h4 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_4 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h5 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_5 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h6 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_6 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h7 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_7 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h8 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_8 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h9 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_9 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'ha == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_10 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'hb == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_11 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'hc == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_12 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'hd == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_13 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'he == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_14 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'hf == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_15 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h10 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_16 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h11 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_17 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h12 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_18 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h13 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_19 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h14 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_20 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h15 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_21 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h16 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_22 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h17 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_23 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h18 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_24 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h19 == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_25 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h1a == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_26 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h1b == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_27 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h1c == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_28 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h1d == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_29 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h1e == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_30 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
    if (~reset) begin // @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      if (io_write_enable & io_write_address != 5'h0) begin // @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        if (5'h1f == io_write_address) begin // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
          registers_31 <= io_write_data; // @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
        end
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  registers_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  registers_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  registers_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  registers_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  registers_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  registers_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  registers_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  registers_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  registers_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  registers_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  registers_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  registers_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  registers_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  registers_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  registers_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  registers_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  registers_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  registers_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  registers_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  registers_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  registers_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  registers_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  registers_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  registers_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  registers_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  registers_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  registers_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  registers_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  registers_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  registers_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  registers_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  registers_31 = _RAND_31[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module InstructionFetch(
  input         clock,
  input         reset,
  input         io_stall_flag_ctrl, // @[src/main/scala/riscv/core/fivestage_forward/InstructionFetch.scala 12:14]
  input         io_jump_flag_id, // @[src/main/scala/riscv/core/fivestage_forward/InstructionFetch.scala 12:14]
  input  [31:0] io_jump_address_id, // @[src/main/scala/riscv/core/fivestage_forward/InstructionFetch.scala 12:14]
  input  [31:0] io_rom_instruction, // @[src/main/scala/riscv/core/fivestage_forward/InstructionFetch.scala 12:14]
  input         io_instruction_valid, // @[src/main/scala/riscv/core/fivestage_forward/InstructionFetch.scala 12:14]
  output [31:0] io_instruction_address, // @[src/main/scala/riscv/core/fivestage_forward/InstructionFetch.scala 12:14]
  output [31:0] io_id_instruction // @[src/main/scala/riscv/core/fivestage_forward/InstructionFetch.scala 12:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] pc; // @[src/main/scala/riscv/core/fivestage_forward/InstructionFetch.scala 22:19]
  wire [31:0] _pc_T_1 = pc + 32'h4; // @[src/main/scala/riscv/core/fivestage_forward/InstructionFetch.scala 25:8]
  wire  _pc_T_3 = io_jump_flag_id & ~io_stall_flag_ctrl; // @[src/main/scala/riscv/core/fivestage_forward/InstructionFetch.scala 27:24]
  wire  _pc_T_5 = io_stall_flag_ctrl | ~io_instruction_valid; // @[src/main/scala/riscv/core/fivestage_forward/InstructionFetch.scala 28:27]
  assign io_instruction_address = pc; // @[src/main/scala/riscv/core/fivestage_forward/InstructionFetch.scala 32:26]
  assign io_id_instruction = io_instruction_valid ? io_rom_instruction : 32'h13; // @[src/main/scala/riscv/core/fivestage_forward/InstructionFetch.scala 33:32]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/fivestage_forward/InstructionFetch.scala 22:19]
      pc <= 32'h1000; // @[src/main/scala/riscv/core/fivestage_forward/InstructionFetch.scala 22:19]
    end else if (_pc_T_3) begin // @[src/main/scala/chisel3/util/Mux.scala 141:16]
      pc <= io_jump_address_id;
    end else if (!(_pc_T_5)) begin // @[src/main/scala/chisel3/util/Mux.scala 141:16]
      pc <= _pc_T_1;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  pc = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PipelineRegister(
  input         clock,
  input         reset,
  input         io_stall, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  input         io_flush, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  input  [31:0] io_in, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  output [31:0] io_out // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] myreg; // @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
  reg [31:0] out; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
  assign io_out = out; // @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
      myreg <= 32'h13; // @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    end else if (io_flush) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      myreg <= 32'h13; // @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
    end else if (!(io_stall)) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
      myreg <= io_in; // @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    end
    if (reset) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
      out <= 32'h13; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    end else if (io_flush) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= 32'h13; // @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
    end else if (io_stall) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
      out <= myreg; // @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
    end else begin
      out <= io_in; // @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  myreg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  out = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PipelineRegister_1(
  input         clock,
  input         reset,
  input         io_stall, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  input         io_flush, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  input  [31:0] io_in, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  output [31:0] io_out // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] myreg; // @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
  reg [31:0] out; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
  assign io_out = out; // @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
      myreg <= 32'h1000; // @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    end else if (io_flush) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      myreg <= 32'h1000; // @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
    end else if (!(io_stall)) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
      myreg <= io_in; // @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    end
    if (reset) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
      out <= 32'h1000; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    end else if (io_flush) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= 32'h1000; // @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
    end else if (io_stall) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
      out <= myreg; // @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
    end else begin
      out <= io_in; // @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  myreg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  out = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PipelineRegister_2(
  input         clock,
  input         reset,
  input         io_stall, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  input         io_flush, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  input  [31:0] io_in, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  output [31:0] io_out // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] myreg; // @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
  reg [31:0] out; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
  assign io_out = out; // @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
      myreg <= 32'h0; // @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    end else if (io_flush) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      myreg <= 32'h0; // @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
    end else if (!(io_stall)) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
      myreg <= io_in; // @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    end
    if (reset) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
      out <= 32'h0; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    end else if (io_flush) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= 32'h0; // @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
    end else if (io_stall) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
      out <= myreg; // @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
    end else begin
      out <= io_in; // @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  myreg = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  out = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module IF2ID(
  input         clock,
  input         reset,
  input         io_stall, // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 8:14]
  input         io_flush, // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 8:14]
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 8:14]
  input  [31:0] io_instruction_address, // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 8:14]
  output [31:0] io_output_instruction, // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 8:14]
  output [31:0] io_output_instruction_address, // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 8:14]
  output [31:0] io_output_interrupt_flag // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 8:14]
);
  wire  instruction_clock; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 20:27]
  wire  instruction_reset; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 20:27]
  wire  instruction_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 20:27]
  wire  instruction_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 20:27]
  wire [31:0] instruction_io_in; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 20:27]
  wire [31:0] instruction_io_out; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 20:27]
  wire  instruction_address_clock; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 26:35]
  wire  instruction_address_reset; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 26:35]
  wire  instruction_address_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 26:35]
  wire  instruction_address_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 26:35]
  wire [31:0] instruction_address_io_in; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 26:35]
  wire [31:0] instruction_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 26:35]
  wire  interrupt_flag_clock; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 32:30]
  wire  interrupt_flag_reset; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 32:30]
  wire  interrupt_flag_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 32:30]
  wire  interrupt_flag_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 32:30]
  wire [31:0] interrupt_flag_io_in; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 32:30]
  wire [31:0] interrupt_flag_io_out; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 32:30]
  PipelineRegister instruction ( // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 20:27]
    .clock(instruction_clock),
    .reset(instruction_reset),
    .io_stall(instruction_io_stall),
    .io_flush(instruction_io_flush),
    .io_in(instruction_io_in),
    .io_out(instruction_io_out)
  );
  PipelineRegister_1 instruction_address ( // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 26:35]
    .clock(instruction_address_clock),
    .reset(instruction_address_reset),
    .io_stall(instruction_address_io_stall),
    .io_flush(instruction_address_io_flush),
    .io_in(instruction_address_io_in),
    .io_out(instruction_address_io_out)
  );
  PipelineRegister_2 interrupt_flag ( // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 32:30]
    .clock(interrupt_flag_clock),
    .reset(interrupt_flag_reset),
    .io_stall(interrupt_flag_io_stall),
    .io_flush(interrupt_flag_io_flush),
    .io_in(interrupt_flag_io_in),
    .io_out(interrupt_flag_io_out)
  );
  assign io_output_instruction = instruction_io_out; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 24:25]
  assign io_output_instruction_address = instruction_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 30:33]
  assign io_output_interrupt_flag = interrupt_flag_io_out; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 36:28]
  assign instruction_clock = clock;
  assign instruction_reset = reset;
  assign instruction_io_stall = io_stall; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 22:25]
  assign instruction_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 23:25]
  assign instruction_io_in = io_instruction; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 21:25]
  assign instruction_address_clock = clock;
  assign instruction_address_reset = reset;
  assign instruction_address_io_stall = io_stall; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 28:33]
  assign instruction_address_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 29:33]
  assign instruction_address_io_in = io_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 27:33]
  assign interrupt_flag_clock = clock;
  assign interrupt_flag_reset = reset;
  assign interrupt_flag_io_stall = io_stall; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 34:28]
  assign interrupt_flag_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 35:28]
  assign interrupt_flag_io_in = 32'h0; // @[src/main/scala/riscv/core/fivestage_forward/IF2ID.scala 33:28]
endmodule
module InstructionDecode(
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 122:14]
  output [4:0]  io_regs_reg1_read_address, // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 122:14]
  output [4:0]  io_regs_reg2_read_address, // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 122:14]
  output [31:0] io_ex_immediate, // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 122:14]
  output        io_ex_aluop1_source, // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 122:14]
  output        io_ex_aluop2_source, // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 122:14]
  output        io_ex_memory_read_enable, // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 122:14]
  output        io_ex_memory_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 122:14]
  output [1:0]  io_ex_reg_write_source, // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 122:14]
  output        io_ex_reg_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 122:14]
  output [4:0]  io_ex_reg_write_address, // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 122:14]
  output [11:0] io_ex_csr_address, // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 122:14]
  output        io_ex_csr_write_enable // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 122:14]
);
  wire [6:0] opcode = io_instruction[6:0]; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 138:30]
  wire [2:0] funct3 = io_instruction[14:12]; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 139:30]
  wire [4:0] rd = io_instruction[11:7]; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 141:30]
  wire [4:0] rs1 = io_instruction[19:15]; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 142:30]
  wire  _io_regs_reg1_read_address_T = opcode == 7'h37; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 145:43]
  wire [19:0] _io_ex_immediate_T_2 = io_instruction[31] ? 20'hfffff : 20'h0; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 149:13]
  wire [31:0] _io_ex_immediate_T_4 = {_io_ex_immediate_T_2,io_instruction[31:20]}; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 149:8]
  wire [20:0] _io_ex_immediate_T_7 = io_instruction[31] ? 21'h1fffff : 21'h0; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 151:37]
  wire [31:0] _io_ex_immediate_T_9 = {_io_ex_immediate_T_7,io_instruction[30:20]}; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 151:32]
  wire [31:0] _io_ex_immediate_T_25 = {_io_ex_immediate_T_7,io_instruction[30:25],rd}; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 154:32]
  wire [31:0] _io_ex_immediate_T_32 = {_io_ex_immediate_T_2,io_instruction[7],io_instruction[30:25],io_instruction[11:8]
    ,1'h0}; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 155:32]
  wire [31:0] _io_ex_immediate_T_34 = {io_instruction[31:12],12'h0}; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 162:32]
  wire [11:0] _io_ex_immediate_T_39 = io_instruction[31] ? 12'hfff : 12'h0; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 165:13]
  wire [31:0] _io_ex_immediate_T_43 = {_io_ex_immediate_T_39,io_instruction[19:12],io_instruction[20],io_instruction[30:
    21],1'h0}; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 164:30]
  wire [31:0] _io_ex_immediate_T_45 = 7'h13 == opcode ? _io_ex_immediate_T_9 : _io_ex_immediate_T_4; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_ex_immediate_T_47 = 7'h3 == opcode ? _io_ex_immediate_T_9 : _io_ex_immediate_T_45; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_ex_immediate_T_49 = 7'h67 == opcode ? _io_ex_immediate_T_9 : _io_ex_immediate_T_47; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_ex_immediate_T_51 = 7'h23 == opcode ? _io_ex_immediate_T_25 : _io_ex_immediate_T_49; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_ex_immediate_T_53 = 7'h63 == opcode ? _io_ex_immediate_T_32 : _io_ex_immediate_T_51; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_ex_immediate_T_55 = 7'h37 == opcode ? _io_ex_immediate_T_34 : _io_ex_immediate_T_53; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_ex_immediate_T_57 = 7'h17 == opcode ? _io_ex_immediate_T_34 : _io_ex_immediate_T_55; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_ex_aluop1_source_T = opcode == 7'h17; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 174:12]
  wire  _io_ex_aluop1_source_T_3 = opcode == 7'h6f; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 174:78]
  wire  _io_ex_aluop2_source_T = opcode == 7'h33; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 179:12]
  wire  _io_ex_memory_read_enable_T = opcode == 7'h3; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 183:39]
  wire [1:0] _io_ex_reg_write_source_T_1 = 7'h3 == opcode ? 2'h1 : 2'h0; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [1:0] _io_ex_reg_write_source_T_3 = 7'h73 == opcode ? 2'h2 : _io_ex_reg_write_source_T_1; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [1:0] _io_ex_reg_write_source_T_5 = 7'h6f == opcode ? 2'h3 : _io_ex_reg_write_source_T_3; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_ex_reg_write_enable_T_4 = _io_ex_aluop2_source_T | opcode == 7'h13 | _io_ex_memory_read_enable_T; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 195:97]
  wire  _io_ex_reg_write_enable_T_10 = _io_ex_reg_write_enable_T_4 | _io_ex_aluop1_source_T |
    _io_regs_reg1_read_address_T | _io_ex_aluop1_source_T_3; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 196:105]
  wire  _io_ex_reg_write_enable_T_13 = opcode == 7'h73; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 197:80]
  wire  _io_ex_csr_write_enable_T_4 = funct3 == 3'h2; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 202:14]
  wire  _io_ex_csr_write_enable_T_5 = funct3 == 3'h1 | funct3 == 3'h5 | _io_ex_csr_write_enable_T_4; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 201:83]
  wire  _io_ex_csr_write_enable_T_8 = funct3 == 3'h3; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 203:14]
  wire  _io_ex_csr_write_enable_T_9 = _io_ex_csr_write_enable_T_5 | funct3 == 3'h6 | _io_ex_csr_write_enable_T_8; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 202:85]
  wire  _io_ex_csr_write_enable_T_11 = _io_ex_csr_write_enable_T_9 | funct3 == 3'h7; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 203:44]
  assign io_regs_reg1_read_address = opcode == 7'h37 ? 5'h0 : rs1; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 145:35]
  assign io_regs_reg2_read_address = io_instruction[24:20]; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 143:30]
  assign io_ex_immediate = 7'h6f == opcode ? _io_ex_immediate_T_43 : _io_ex_immediate_T_57; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_ex_aluop1_source = opcode == 7'h17 | opcode == 7'h63 | opcode == 7'h6f; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 174:68]
  assign io_ex_aluop2_source = _io_ex_aluop2_source_T ? 1'h0 : 1'h1; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 178:29]
  assign io_ex_memory_read_enable = opcode == 7'h3; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 183:39]
  assign io_ex_memory_write_enable = opcode == 7'h23; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 184:39]
  assign io_ex_reg_write_source = 7'h67 == opcode ? 2'h3 : _io_ex_reg_write_source_T_5; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_ex_reg_write_enable = _io_ex_reg_write_enable_T_10 | opcode == 7'h67 | opcode == 7'h73; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 197:69]
  assign io_ex_reg_write_address = io_instruction[11:7]; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 198:44]
  assign io_ex_csr_address = io_instruction[31:20]; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 199:44]
  assign io_ex_csr_write_enable = _io_ex_reg_write_enable_T_13 & _io_ex_csr_write_enable_T_11; // @[src/main/scala/riscv/core/fivestage_forward/InstructionDecode.scala 200:59]
endmodule
module PipelineRegister_5(
  input        clock,
  input        reset,
  input        io_flush, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  input  [4:0] io_in, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  output [4:0] io_out // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [4:0] out; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
  assign io_out = out; // @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
      out <= 5'h0; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    end else if (io_flush) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= 5'h0; // @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
    end else begin
      out <= io_in;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  out = _RAND_0[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PipelineRegister_7(
  input   clock,
  input   reset,
  input   io_flush, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  input   io_in, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  output  io_out // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg  out; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
  assign io_out = out; // @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
      out <= 1'h0; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    end else if (io_flush) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= 1'h0; // @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
    end else begin
      out <= io_in;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  out = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PipelineRegister_9(
  input        clock,
  input        reset,
  input        io_flush, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  input  [1:0] io_in, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  output [1:0] io_out // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] out; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
  assign io_out = out; // @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
      out <= 2'h0; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    end else if (io_flush) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= 2'h0; // @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
    end else begin
      out <= io_in;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  out = _RAND_0[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PipelineRegister_16(
  input         clock,
  input         reset,
  input         io_flush, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  input  [11:0] io_in, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  output [11:0] io_out // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [11:0] out; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
  assign io_out = out; // @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
      out <= 12'h0; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    end else if (io_flush) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= 12'h0; // @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
    end else begin
      out <= io_in;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  out = _RAND_0[11:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ID2EX(
  input         clock,
  input         reset,
  input         io_flush, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input  [31:0] io_instruction_address, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input  [4:0]  io_regs_reg1_read_address, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input  [4:0]  io_regs_reg2_read_address, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input         io_regs_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input  [4:0]  io_regs_write_address, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input  [1:0]  io_regs_write_source, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input  [31:0] io_reg1_data, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input  [31:0] io_reg2_data, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input  [31:0] io_immediate, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input         io_aluop1_source, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input         io_aluop2_source, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input         io_csr_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input  [11:0] io_csr_address, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input         io_memory_read_enable, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input         io_memory_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  input  [31:0] io_csr_read_data, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output [31:0] io_output_instruction, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output [31:0] io_output_instruction_address, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output [4:0]  io_output_regs_reg1_read_address, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output [4:0]  io_output_regs_reg2_read_address, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output        io_output_regs_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output [4:0]  io_output_regs_write_address, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output [1:0]  io_output_regs_write_source, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output [31:0] io_output_reg1_data, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output [31:0] io_output_reg2_data, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output [31:0] io_output_immediate, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output        io_output_aluop1_source, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output        io_output_aluop2_source, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output        io_output_csr_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output [11:0] io_output_csr_address, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output        io_output_memory_read_enable, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output        io_output_memory_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
  output [31:0] io_output_csr_read_data // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 8:14]
);
  wire  instruction_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 49:27]
  wire  instruction_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 49:27]
  wire  instruction_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 49:27]
  wire  instruction_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 49:27]
  wire [31:0] instruction_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 49:27]
  wire [31:0] instruction_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 49:27]
  wire  instruction_address_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 55:35]
  wire  instruction_address_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 55:35]
  wire  instruction_address_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 55:35]
  wire  instruction_address_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 55:35]
  wire [31:0] instruction_address_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 55:35]
  wire [31:0] instruction_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 55:35]
  wire  regs_reg1_read_address_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 61:38]
  wire  regs_reg1_read_address_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 61:38]
  wire  regs_reg1_read_address_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 61:38]
  wire [4:0] regs_reg1_read_address_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 61:38]
  wire [4:0] regs_reg1_read_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 61:38]
  wire  regs_reg2_read_address_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 67:38]
  wire  regs_reg2_read_address_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 67:38]
  wire  regs_reg2_read_address_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 67:38]
  wire [4:0] regs_reg2_read_address_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 67:38]
  wire [4:0] regs_reg2_read_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 67:38]
  wire  regs_write_enable_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 73:33]
  wire  regs_write_enable_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 73:33]
  wire  regs_write_enable_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 73:33]
  wire  regs_write_enable_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 73:33]
  wire  regs_write_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 73:33]
  wire  regs_write_address_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 79:34]
  wire  regs_write_address_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 79:34]
  wire  regs_write_address_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 79:34]
  wire [4:0] regs_write_address_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 79:34]
  wire [4:0] regs_write_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 79:34]
  wire  regs_write_source_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 85:33]
  wire  regs_write_source_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 85:33]
  wire  regs_write_source_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 85:33]
  wire [1:0] regs_write_source_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 85:33]
  wire [1:0] regs_write_source_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 85:33]
  wire  reg1_data_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 91:25]
  wire  reg1_data_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 91:25]
  wire  reg1_data_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 91:25]
  wire  reg1_data_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 91:25]
  wire [31:0] reg1_data_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 91:25]
  wire [31:0] reg1_data_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 91:25]
  wire  reg2_data_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 97:25]
  wire  reg2_data_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 97:25]
  wire  reg2_data_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 97:25]
  wire  reg2_data_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 97:25]
  wire [31:0] reg2_data_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 97:25]
  wire [31:0] reg2_data_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 97:25]
  wire  immediate_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 103:25]
  wire  immediate_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 103:25]
  wire  immediate_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 103:25]
  wire  immediate_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 103:25]
  wire [31:0] immediate_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 103:25]
  wire [31:0] immediate_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 103:25]
  wire  aluop1_source_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 109:29]
  wire  aluop1_source_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 109:29]
  wire  aluop1_source_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 109:29]
  wire  aluop1_source_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 109:29]
  wire  aluop1_source_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 109:29]
  wire  aluop2_source_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 115:29]
  wire  aluop2_source_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 115:29]
  wire  aluop2_source_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 115:29]
  wire  aluop2_source_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 115:29]
  wire  aluop2_source_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 115:29]
  wire  csr_write_enable_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 121:32]
  wire  csr_write_enable_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 121:32]
  wire  csr_write_enable_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 121:32]
  wire  csr_write_enable_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 121:32]
  wire  csr_write_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 121:32]
  wire  csr_address_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 127:27]
  wire  csr_address_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 127:27]
  wire  csr_address_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 127:27]
  wire [11:0] csr_address_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 127:27]
  wire [11:0] csr_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 127:27]
  wire  memory_read_enable_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 133:34]
  wire  memory_read_enable_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 133:34]
  wire  memory_read_enable_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 133:34]
  wire  memory_read_enable_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 133:34]
  wire  memory_read_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 133:34]
  wire  memory_write_enable_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 139:35]
  wire  memory_write_enable_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 139:35]
  wire  memory_write_enable_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 139:35]
  wire  memory_write_enable_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 139:35]
  wire  memory_write_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 139:35]
  wire  csr_read_data_clock; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 145:29]
  wire  csr_read_data_reset; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 145:29]
  wire  csr_read_data_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 145:29]
  wire  csr_read_data_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 145:29]
  wire [31:0] csr_read_data_io_in; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 145:29]
  wire [31:0] csr_read_data_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 145:29]
  PipelineRegister instruction ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 49:27]
    .clock(instruction_clock),
    .reset(instruction_reset),
    .io_stall(instruction_io_stall),
    .io_flush(instruction_io_flush),
    .io_in(instruction_io_in),
    .io_out(instruction_io_out)
  );
  PipelineRegister_1 instruction_address ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 55:35]
    .clock(instruction_address_clock),
    .reset(instruction_address_reset),
    .io_stall(instruction_address_io_stall),
    .io_flush(instruction_address_io_flush),
    .io_in(instruction_address_io_in),
    .io_out(instruction_address_io_out)
  );
  PipelineRegister_5 regs_reg1_read_address ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 61:38]
    .clock(regs_reg1_read_address_clock),
    .reset(regs_reg1_read_address_reset),
    .io_flush(regs_reg1_read_address_io_flush),
    .io_in(regs_reg1_read_address_io_in),
    .io_out(regs_reg1_read_address_io_out)
  );
  PipelineRegister_5 regs_reg2_read_address ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 67:38]
    .clock(regs_reg2_read_address_clock),
    .reset(regs_reg2_read_address_reset),
    .io_flush(regs_reg2_read_address_io_flush),
    .io_in(regs_reg2_read_address_io_in),
    .io_out(regs_reg2_read_address_io_out)
  );
  PipelineRegister_7 regs_write_enable ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 73:33]
    .clock(regs_write_enable_clock),
    .reset(regs_write_enable_reset),
    .io_flush(regs_write_enable_io_flush),
    .io_in(regs_write_enable_io_in),
    .io_out(regs_write_enable_io_out)
  );
  PipelineRegister_5 regs_write_address ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 79:34]
    .clock(regs_write_address_clock),
    .reset(regs_write_address_reset),
    .io_flush(regs_write_address_io_flush),
    .io_in(regs_write_address_io_in),
    .io_out(regs_write_address_io_out)
  );
  PipelineRegister_9 regs_write_source ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 85:33]
    .clock(regs_write_source_clock),
    .reset(regs_write_source_reset),
    .io_flush(regs_write_source_io_flush),
    .io_in(regs_write_source_io_in),
    .io_out(regs_write_source_io_out)
  );
  PipelineRegister_2 reg1_data ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 91:25]
    .clock(reg1_data_clock),
    .reset(reg1_data_reset),
    .io_stall(reg1_data_io_stall),
    .io_flush(reg1_data_io_flush),
    .io_in(reg1_data_io_in),
    .io_out(reg1_data_io_out)
  );
  PipelineRegister_2 reg2_data ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 97:25]
    .clock(reg2_data_clock),
    .reset(reg2_data_reset),
    .io_stall(reg2_data_io_stall),
    .io_flush(reg2_data_io_flush),
    .io_in(reg2_data_io_in),
    .io_out(reg2_data_io_out)
  );
  PipelineRegister_2 immediate ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 103:25]
    .clock(immediate_clock),
    .reset(immediate_reset),
    .io_stall(immediate_io_stall),
    .io_flush(immediate_io_flush),
    .io_in(immediate_io_in),
    .io_out(immediate_io_out)
  );
  PipelineRegister_7 aluop1_source ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 109:29]
    .clock(aluop1_source_clock),
    .reset(aluop1_source_reset),
    .io_flush(aluop1_source_io_flush),
    .io_in(aluop1_source_io_in),
    .io_out(aluop1_source_io_out)
  );
  PipelineRegister_7 aluop2_source ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 115:29]
    .clock(aluop2_source_clock),
    .reset(aluop2_source_reset),
    .io_flush(aluop2_source_io_flush),
    .io_in(aluop2_source_io_in),
    .io_out(aluop2_source_io_out)
  );
  PipelineRegister_7 csr_write_enable ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 121:32]
    .clock(csr_write_enable_clock),
    .reset(csr_write_enable_reset),
    .io_flush(csr_write_enable_io_flush),
    .io_in(csr_write_enable_io_in),
    .io_out(csr_write_enable_io_out)
  );
  PipelineRegister_16 csr_address ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 127:27]
    .clock(csr_address_clock),
    .reset(csr_address_reset),
    .io_flush(csr_address_io_flush),
    .io_in(csr_address_io_in),
    .io_out(csr_address_io_out)
  );
  PipelineRegister_7 memory_read_enable ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 133:34]
    .clock(memory_read_enable_clock),
    .reset(memory_read_enable_reset),
    .io_flush(memory_read_enable_io_flush),
    .io_in(memory_read_enable_io_in),
    .io_out(memory_read_enable_io_out)
  );
  PipelineRegister_7 memory_write_enable ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 139:35]
    .clock(memory_write_enable_clock),
    .reset(memory_write_enable_reset),
    .io_flush(memory_write_enable_io_flush),
    .io_in(memory_write_enable_io_in),
    .io_out(memory_write_enable_io_out)
  );
  PipelineRegister_2 csr_read_data ( // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 145:29]
    .clock(csr_read_data_clock),
    .reset(csr_read_data_reset),
    .io_stall(csr_read_data_io_stall),
    .io_flush(csr_read_data_io_flush),
    .io_in(csr_read_data_io_in),
    .io_out(csr_read_data_io_out)
  );
  assign io_output_instruction = instruction_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 53:25]
  assign io_output_instruction_address = instruction_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 59:33]
  assign io_output_regs_reg1_read_address = regs_reg1_read_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 65:36]
  assign io_output_regs_reg2_read_address = regs_reg2_read_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 71:36]
  assign io_output_regs_write_enable = regs_write_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 77:31]
  assign io_output_regs_write_address = regs_write_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 83:32]
  assign io_output_regs_write_source = regs_write_source_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 89:31]
  assign io_output_reg1_data = reg1_data_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 95:23]
  assign io_output_reg2_data = reg2_data_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 101:23]
  assign io_output_immediate = immediate_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 107:23]
  assign io_output_aluop1_source = aluop1_source_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 113:27]
  assign io_output_aluop2_source = aluop2_source_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 119:27]
  assign io_output_csr_write_enable = csr_write_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 125:30]
  assign io_output_csr_address = csr_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 131:25]
  assign io_output_memory_read_enable = memory_read_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 137:32]
  assign io_output_memory_write_enable = memory_write_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 143:33]
  assign io_output_csr_read_data = csr_read_data_io_out; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 149:27]
  assign instruction_clock = clock;
  assign instruction_reset = reset;
  assign instruction_io_stall = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 51:25]
  assign instruction_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 52:25]
  assign instruction_io_in = io_instruction; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 50:25]
  assign instruction_address_clock = clock;
  assign instruction_address_reset = reset;
  assign instruction_address_io_stall = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 57:33]
  assign instruction_address_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 58:33]
  assign instruction_address_io_in = io_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 56:33]
  assign regs_reg1_read_address_clock = clock;
  assign regs_reg1_read_address_reset = reset;
  assign regs_reg1_read_address_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 64:36]
  assign regs_reg1_read_address_io_in = io_regs_reg1_read_address; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 62:36]
  assign regs_reg2_read_address_clock = clock;
  assign regs_reg2_read_address_reset = reset;
  assign regs_reg2_read_address_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 70:36]
  assign regs_reg2_read_address_io_in = io_regs_reg2_read_address; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 68:36]
  assign regs_write_enable_clock = clock;
  assign regs_write_enable_reset = reset;
  assign regs_write_enable_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 76:31]
  assign regs_write_enable_io_in = io_regs_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 74:31]
  assign regs_write_address_clock = clock;
  assign regs_write_address_reset = reset;
  assign regs_write_address_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 82:32]
  assign regs_write_address_io_in = io_regs_write_address; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 80:32]
  assign regs_write_source_clock = clock;
  assign regs_write_source_reset = reset;
  assign regs_write_source_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 88:31]
  assign regs_write_source_io_in = io_regs_write_source; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 86:31]
  assign reg1_data_clock = clock;
  assign reg1_data_reset = reset;
  assign reg1_data_io_stall = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 93:23]
  assign reg1_data_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 94:23]
  assign reg1_data_io_in = io_reg1_data; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 92:23]
  assign reg2_data_clock = clock;
  assign reg2_data_reset = reset;
  assign reg2_data_io_stall = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 99:23]
  assign reg2_data_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 100:23]
  assign reg2_data_io_in = io_reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 98:23]
  assign immediate_clock = clock;
  assign immediate_reset = reset;
  assign immediate_io_stall = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 105:23]
  assign immediate_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 106:23]
  assign immediate_io_in = io_immediate; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 104:23]
  assign aluop1_source_clock = clock;
  assign aluop1_source_reset = reset;
  assign aluop1_source_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 112:27]
  assign aluop1_source_io_in = io_aluop1_source; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 110:27]
  assign aluop2_source_clock = clock;
  assign aluop2_source_reset = reset;
  assign aluop2_source_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 118:27]
  assign aluop2_source_io_in = io_aluop2_source; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 116:27]
  assign csr_write_enable_clock = clock;
  assign csr_write_enable_reset = reset;
  assign csr_write_enable_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 124:30]
  assign csr_write_enable_io_in = io_csr_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 122:30]
  assign csr_address_clock = clock;
  assign csr_address_reset = reset;
  assign csr_address_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 130:25]
  assign csr_address_io_in = io_csr_address; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 128:25]
  assign memory_read_enable_clock = clock;
  assign memory_read_enable_reset = reset;
  assign memory_read_enable_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 136:32]
  assign memory_read_enable_io_in = io_memory_read_enable; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 134:32]
  assign memory_write_enable_clock = clock;
  assign memory_write_enable_reset = reset;
  assign memory_write_enable_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 142:33]
  assign memory_write_enable_io_in = io_memory_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 140:33]
  assign csr_read_data_clock = clock;
  assign csr_read_data_reset = reset;
  assign csr_read_data_io_stall = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 147:27]
  assign csr_read_data_io_flush = io_flush; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 148:27]
  assign csr_read_data_io_in = io_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/ID2EX.scala 146:27]
endmodule
module ALU(
  input  [4:0]  io_func, // @[src/main/scala/riscv/core/ALU.scala 13:14]
  input  [31:0] io_op1, // @[src/main/scala/riscv/core/ALU.scala 13:14]
  input  [31:0] io_op2, // @[src/main/scala/riscv/core/ALU.scala 13:14]
  output [31:0] io_result // @[src/main/scala/riscv/core/ALU.scala 13:14]
);
  wire [31:0] _io_result_T_1 = io_op1 + io_op2; // @[src/main/scala/riscv/core/ALU.scala 25:27]
  wire [31:0] _io_result_T_3 = io_op1 - io_op2; // @[src/main/scala/riscv/core/ALU.scala 28:27]
  wire [62:0] _GEN_18 = {{31'd0}, io_op1}; // @[src/main/scala/riscv/core/ALU.scala 31:27]
  wire [62:0] _io_result_T_5 = _GEN_18 << io_op2[4:0]; // @[src/main/scala/riscv/core/ALU.scala 31:27]
  wire [31:0] _io_result_T_6 = io_op1; // @[src/main/scala/riscv/core/ALU.scala 34:27]
  wire [31:0] _io_result_T_7 = io_op2; // @[src/main/scala/riscv/core/ALU.scala 34:43]
  wire [31:0] _io_result_T_9 = io_op1 ^ io_op2; // @[src/main/scala/riscv/core/ALU.scala 37:27]
  wire [31:0] _io_result_T_10 = io_op1 | io_op2; // @[src/main/scala/riscv/core/ALU.scala 40:27]
  wire [31:0] _io_result_T_11 = io_op1 & io_op2; // @[src/main/scala/riscv/core/ALU.scala 43:27]
  wire [31:0] _io_result_T_13 = io_op1 >> io_op2[4:0]; // @[src/main/scala/riscv/core/ALU.scala 46:27]
  wire [31:0] _io_result_T_17 = $signed(io_op1) >>> io_op2[4:0]; // @[src/main/scala/riscv/core/ALU.scala 49:52]
  wire [63:0] _io_result_T_19 = io_op1 * io_op2; // @[src/main/scala/riscv/core/ALU.scala 55:28]
  wire [63:0] _io_result_T_23 = $signed(io_op1) * $signed(io_op2); // @[src/main/scala/riscv/core/ALU.scala 58:35]
  wire [31:0] _io_result_T_25 = _io_result_T_23[63:32]; // @[src/main/scala/riscv/core/ALU.scala 58:58]
  wire [32:0] _io_result_T_27 = {1'b0,$signed(io_op2)}; // @[src/main/scala/riscv/core/ALU.scala 61:36]
  wire [64:0] _io_result_T_28 = $signed(io_op1) * $signed(_io_result_T_27); // @[src/main/scala/riscv/core/ALU.scala 61:36]
  wire [63:0] _io_result_T_30 = _io_result_T_28[63:0]; // @[src/main/scala/riscv/core/ALU.scala 61:36]
  wire [31:0] _io_result_T_32 = _io_result_T_30[63:32]; // @[src/main/scala/riscv/core/ALU.scala 61:52]
  wire  _io_result_T_35 = io_op2 == 32'h0; // @[src/main/scala/riscv/core/ALU.scala 67:27]
  wire [32:0] _io_result_T_39 = $signed(io_op1) / $signed(io_op2); // @[src/main/scala/riscv/core/ALU.scala 67:73]
  wire [32:0] _io_result_T_40 = io_op2 == 32'h0 ? 33'h0 : _io_result_T_39; // @[src/main/scala/riscv/core/ALU.scala 67:19]
  wire [31:0] _io_result_T_42 = io_op1 / io_op2; // @[src/main/scala/riscv/core/ALU.scala 70:48]
  wire [31:0] _io_result_T_43 = _io_result_T_35 ? 32'h0 : _io_result_T_42; // @[src/main/scala/riscv/core/ALU.scala 70:19]
  wire [31:0] _io_result_T_48 = $signed(io_op1) % $signed(io_op2); // @[src/main/scala/riscv/core/ALU.scala 73:76]
  wire [31:0] _io_result_T_49 = _io_result_T_35 ? io_op1 : _io_result_T_48; // @[src/main/scala/riscv/core/ALU.scala 73:19]
  wire [31:0] _io_result_T_51 = io_op1 % io_op2; // @[src/main/scala/riscv/core/ALU.scala 76:51]
  wire [31:0] _io_result_T_52 = _io_result_T_35 ? io_op1 : _io_result_T_51; // @[src/main/scala/riscv/core/ALU.scala 76:19]
  wire [31:0] _GEN_0 = 5'h12 == io_func ? _io_result_T_52 : 32'h0; // @[src/main/scala/riscv/core/ALU.scala 22:13 23:19 76:13]
  wire [31:0] _GEN_1 = 5'h11 == io_func ? _io_result_T_49 : _GEN_0; // @[src/main/scala/riscv/core/ALU.scala 23:19 73:13]
  wire [31:0] _GEN_2 = 5'h10 == io_func ? _io_result_T_43 : _GEN_1; // @[src/main/scala/riscv/core/ALU.scala 23:19 70:13]
  wire [32:0] _GEN_3 = 5'hf == io_func ? _io_result_T_40 : {{1'd0}, _GEN_2}; // @[src/main/scala/riscv/core/ALU.scala 23:19 67:13]
  wire [32:0] _GEN_4 = 5'he == io_func ? {{1'd0}, _io_result_T_19[63:32]} : _GEN_3; // @[src/main/scala/riscv/core/ALU.scala 23:19 64:19]
  wire [32:0] _GEN_5 = 5'hd == io_func ? {{1'd0}, _io_result_T_32} : _GEN_4; // @[src/main/scala/riscv/core/ALU.scala 23:19 61:17]
  wire [32:0] _GEN_6 = 5'hc == io_func ? {{1'd0}, _io_result_T_25} : _GEN_5; // @[src/main/scala/riscv/core/ALU.scala 23:19 58:17]
  wire [32:0] _GEN_7 = 5'hb == io_func ? {{1'd0}, _io_result_T_19[31:0]} : _GEN_6; // @[src/main/scala/riscv/core/ALU.scala 23:19 55:17]
  wire [32:0] _GEN_8 = 5'ha == io_func ? {{32'd0}, io_op1 < io_op2} : _GEN_7; // @[src/main/scala/riscv/core/ALU.scala 23:19 52:17]
  wire [32:0] _GEN_9 = 5'h9 == io_func ? {{1'd0}, _io_result_T_17} : _GEN_8; // @[src/main/scala/riscv/core/ALU.scala 23:19 49:17]
  wire [32:0] _GEN_10 = 5'h8 == io_func ? {{1'd0}, _io_result_T_13} : _GEN_9; // @[src/main/scala/riscv/core/ALU.scala 23:19 46:17]
  wire [32:0] _GEN_11 = 5'h7 == io_func ? {{1'd0}, _io_result_T_11} : _GEN_10; // @[src/main/scala/riscv/core/ALU.scala 23:19 43:17]
  wire [32:0] _GEN_12 = 5'h6 == io_func ? {{1'd0}, _io_result_T_10} : _GEN_11; // @[src/main/scala/riscv/core/ALU.scala 23:19 40:17]
  wire [32:0] _GEN_13 = 5'h5 == io_func ? {{1'd0}, _io_result_T_9} : _GEN_12; // @[src/main/scala/riscv/core/ALU.scala 23:19 37:17]
  wire [32:0] _GEN_14 = 5'h4 == io_func ? {{32'd0}, $signed(_io_result_T_6) < $signed(_io_result_T_7)} : _GEN_13; // @[src/main/scala/riscv/core/ALU.scala 23:19 34:17]
  wire [62:0] _GEN_15 = 5'h3 == io_func ? _io_result_T_5 : {{30'd0}, _GEN_14}; // @[src/main/scala/riscv/core/ALU.scala 23:19 31:17]
  wire [62:0] _GEN_16 = 5'h2 == io_func ? {{31'd0}, _io_result_T_3} : _GEN_15; // @[src/main/scala/riscv/core/ALU.scala 23:19 28:17]
  wire [62:0] _GEN_17 = 5'h1 == io_func ? {{31'd0}, _io_result_T_1} : _GEN_16; // @[src/main/scala/riscv/core/ALU.scala 23:19 25:17]
  assign io_result = _GEN_17[31:0];
endmodule
module ALUControl(
  input  [6:0] io_opcode, // @[src/main/scala/riscv/core/ALUControl.scala 11:14]
  input  [2:0] io_funct3, // @[src/main/scala/riscv/core/ALUControl.scala 11:14]
  input  [6:0] io_funct7, // @[src/main/scala/riscv/core/ALUControl.scala 11:14]
  output [4:0] io_alu_funct // @[src/main/scala/riscv/core/ALUControl.scala 11:14]
);
  wire [3:0] _io_alu_funct_T_1 = io_funct7[5] ? 4'h9 : 4'h8; // @[src/main/scala/riscv/core/ALUControl.scala 34:41]
  wire [1:0] _io_alu_funct_T_3 = 3'h1 == io_funct3 ? 2'h3 : 2'h1; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [2:0] _io_alu_funct_T_5 = 3'h2 == io_funct3 ? 3'h4 : {{1'd0}, _io_alu_funct_T_3}; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_7 = 3'h3 == io_funct3 ? 4'ha : {{1'd0}, _io_alu_funct_T_5}; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_9 = 3'h4 == io_funct3 ? 4'h5 : _io_alu_funct_T_7; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_11 = 3'h6 == io_funct3 ? 4'h6 : _io_alu_funct_T_9; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_13 = 3'h7 == io_funct3 ? 4'h7 : _io_alu_funct_T_11; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_15 = 3'h5 == io_funct3 ? _io_alu_funct_T_1 : _io_alu_funct_T_13; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_17 = 3'h1 == io_funct3 ? 4'hc : 4'hb; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_19 = 3'h2 == io_funct3 ? 4'hd : _io_alu_funct_T_17; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_21 = 3'h3 == io_funct3 ? 4'he : _io_alu_funct_T_19; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_23 = 3'h4 == io_funct3 ? 4'hf : _io_alu_funct_T_21; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [4:0] _io_alu_funct_T_25 = 3'h5 == io_funct3 ? 5'h10 : {{1'd0}, _io_alu_funct_T_23}; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [4:0] _io_alu_funct_T_27 = 3'h6 == io_funct3 ? 5'h11 : _io_alu_funct_T_25; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [4:0] _io_alu_funct_T_29 = 3'h7 == io_funct3 ? 5'h12 : _io_alu_funct_T_27; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [1:0] _io_alu_funct_T_31 = io_funct7[5] ? 2'h2 : 2'h1; // @[src/main/scala/riscv/core/ALUControl.scala 62:47]
  wire [1:0] _io_alu_funct_T_35 = 3'h1 == io_funct3 ? 2'h3 : _io_alu_funct_T_31; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [2:0] _io_alu_funct_T_37 = 3'h2 == io_funct3 ? 3'h4 : {{1'd0}, _io_alu_funct_T_35}; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_39 = 3'h3 == io_funct3 ? 4'ha : {{1'd0}, _io_alu_funct_T_37}; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_41 = 3'h4 == io_funct3 ? 4'h5 : _io_alu_funct_T_39; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_43 = 3'h6 == io_funct3 ? 4'h6 : _io_alu_funct_T_41; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_45 = 3'h7 == io_funct3 ? 4'h7 : _io_alu_funct_T_43; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_alu_funct_T_47 = 3'h5 == io_funct3 ? _io_alu_funct_T_1 : _io_alu_funct_T_45; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [4:0] _GEN_0 = io_funct7 == 7'h1 ? _io_alu_funct_T_29 : {{1'd0}, _io_alu_funct_T_47}; // @[src/main/scala/riscv/core/ALUControl.scala 40:42 42:24 58:24]
  wire  _GEN_2 = 7'h37 == io_opcode | 7'h17 == io_opcode; // @[src/main/scala/riscv/core/ALUControl.scala 21:21 91:20]
  wire  _GEN_3 = 7'h67 == io_opcode | _GEN_2; // @[src/main/scala/riscv/core/ALUControl.scala 21:21 88:20]
  wire  _GEN_4 = 7'h6f == io_opcode | _GEN_3; // @[src/main/scala/riscv/core/ALUControl.scala 21:21 85:20]
  wire  _GEN_5 = 7'h23 == io_opcode | _GEN_4; // @[src/main/scala/riscv/core/ALUControl.scala 21:21 82:20]
  wire  _GEN_6 = 7'h3 == io_opcode | _GEN_5; // @[src/main/scala/riscv/core/ALUControl.scala 21:21 79:20]
  wire  _GEN_7 = 7'h63 == io_opcode | _GEN_6; // @[src/main/scala/riscv/core/ALUControl.scala 21:21 76:20]
  wire [4:0] _GEN_8 = 7'h33 == io_opcode ? _GEN_0 : {{4'd0}, _GEN_7}; // @[src/main/scala/riscv/core/ALUControl.scala 21:21]
  assign io_alu_funct = 7'h13 == io_opcode ? {{1'd0}, _io_alu_funct_T_15} : _GEN_8; // @[src/main/scala/riscv/core/ALUControl.scala 21:21 23:20]
endmodule
module Execute(
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  input  [31:0] io_instruction_address, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  input  [31:0] io_reg1_data, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  input  [31:0] io_reg2_data, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  input  [31:0] io_immediate_id, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  input         io_aluop1_source_id, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  input         io_aluop2_source_id, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  input  [31:0] io_csr_read_data_id, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  input  [31:0] io_forward_from_mem, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  input  [31:0] io_forward_from_wb, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  input  [1:0]  io_reg1_forward, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  input  [1:0]  io_reg2_forward, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  input         io_interrupt_assert_clint, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  input  [31:0] io_interrupt_handler_address_clint, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  output [31:0] io_mem_alu_result, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  output [31:0] io_mem_reg2_data, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  output [31:0] io_csr_write_data, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  output        io_if_jump_flag, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  output [31:0] io_if_jump_address, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  output        io_clint_jump_flag, // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
  output [31:0] io_clint_jump_address // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 10:14]
);
  wire [4:0] alu_io_func; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 41:24]
  wire [31:0] alu_io_op1; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 41:24]
  wire [31:0] alu_io_op2; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 41:24]
  wire [31:0] alu_io_result; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 41:24]
  wire [6:0] alu_ctrl_io_opcode; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 42:24]
  wire [2:0] alu_ctrl_io_funct3; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 42:24]
  wire [6:0] alu_ctrl_io_funct7; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 42:24]
  wire [4:0] alu_ctrl_io_alu_funct; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 42:24]
  wire [6:0] opcode = io_instruction[6:0]; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 35:30]
  wire [2:0] funct3 = io_instruction[14:12]; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 36:30]
  wire [4:0] uimm = io_instruction[19:15]; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 38:30]
  wire  _reg1_data_T = io_reg1_forward == 2'h1; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 50:21]
  wire [31:0] _reg1_data_T_2 = io_reg1_forward == 2'h2 ? io_forward_from_wb : io_reg1_data; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 52:8]
  wire [31:0] reg1_data = _reg1_data_T ? io_forward_from_mem : _reg1_data_T_2; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 49:22]
  wire  _reg2_data_T = io_reg2_forward == 2'h1; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 55:21]
  wire [31:0] _reg2_data_T_2 = io_reg2_forward == 2'h2 ? io_forward_from_wb : io_reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 57:8]
  wire [31:0] reg2_data = _reg2_data_T ? io_forward_from_mem : _reg2_data_T_2; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 54:22]
  wire [31:0] _io_csr_write_data_T = ~reg1_data; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 77:60]
  wire [31:0] _io_csr_write_data_T_1 = io_csr_read_data_id & _io_csr_write_data_T; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 77:58]
  wire [31:0] _io_csr_write_data_T_2 = io_csr_read_data_id | reg1_data; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 78:58]
  wire [31:0] _io_csr_write_data_T_3 = {27'h0,uimm}; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 79:40]
  wire [31:0] _io_csr_write_data_T_5 = ~_io_csr_write_data_T_3; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 80:60]
  wire [31:0] _io_csr_write_data_T_6 = io_csr_read_data_id & _io_csr_write_data_T_5; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 80:58]
  wire [31:0] _io_csr_write_data_T_8 = io_csr_read_data_id | _io_csr_write_data_T_3; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 81:58]
  wire [31:0] _io_csr_write_data_T_10 = 3'h1 == funct3 ? reg1_data : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_csr_write_data_T_12 = 3'h3 == funct3 ? _io_csr_write_data_T_1 : _io_csr_write_data_T_10; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_csr_write_data_T_14 = 3'h2 == funct3 ? _io_csr_write_data_T_2 : _io_csr_write_data_T_12; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_csr_write_data_T_16 = 3'h5 == funct3 ? _io_csr_write_data_T_3 : _io_csr_write_data_T_14; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_csr_write_data_T_18 = 3'h7 == funct3 ? _io_csr_write_data_T_6 : _io_csr_write_data_T_16; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _instruction_jump_flag_T_1 = opcode == 7'h67; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 87:13]
  wire  _instruction_jump_flag_T_2 = opcode == 7'h6f | _instruction_jump_flag_T_1; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 86:61]
  wire  _instruction_jump_flag_T_4 = reg1_data == reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 92:46]
  wire  _instruction_jump_flag_T_5 = reg1_data != reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 93:46]
  wire [31:0] _instruction_jump_flag_T_6 = _reg1_data_T ? io_forward_from_mem : _reg1_data_T_2; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 94:46]
  wire [31:0] _instruction_jump_flag_T_7 = _reg2_data_T ? io_forward_from_mem : _reg2_data_T_2; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 94:65]
  wire  _instruction_jump_flag_T_8 = $signed(_instruction_jump_flag_T_6) < $signed(_instruction_jump_flag_T_7); // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 94:53]
  wire  _instruction_jump_flag_T_11 = $signed(_instruction_jump_flag_T_6) >= $signed(_instruction_jump_flag_T_7); // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 95:53]
  wire  _instruction_jump_flag_T_12 = reg1_data < reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 96:53]
  wire  _instruction_jump_flag_T_13 = reg1_data >= reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 97:53]
  wire  _instruction_jump_flag_T_17 = 3'h1 == funct3 ? _instruction_jump_flag_T_5 : 3'h0 == funct3 &
    _instruction_jump_flag_T_4; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _instruction_jump_flag_T_19 = 3'h4 == funct3 ? _instruction_jump_flag_T_8 : _instruction_jump_flag_T_17; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _instruction_jump_flag_T_21 = 3'h5 == funct3 ? _instruction_jump_flag_T_11 : _instruction_jump_flag_T_19; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _instruction_jump_flag_T_23 = 3'h6 == funct3 ? _instruction_jump_flag_T_12 : _instruction_jump_flag_T_21; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _instruction_jump_flag_T_25 = 3'h7 == funct3 ? _instruction_jump_flag_T_13 : _instruction_jump_flag_T_23; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _instruction_jump_flag_T_26 = opcode == 7'h63 & _instruction_jump_flag_T_25; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 88:37]
  wire  instruction_jump_flag = _instruction_jump_flag_T_2 | _instruction_jump_flag_T_26; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 87:36]
  ALU alu ( // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 41:24]
    .io_func(alu_io_func),
    .io_op1(alu_io_op1),
    .io_op2(alu_io_op2),
    .io_result(alu_io_result)
  );
  ALUControl alu_ctrl ( // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 42:24]
    .io_opcode(alu_ctrl_io_opcode),
    .io_funct3(alu_ctrl_io_funct3),
    .io_funct7(alu_ctrl_io_funct7),
    .io_alu_funct(alu_ctrl_io_alu_funct)
  );
  assign io_mem_alu_result = alu_io_result; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 70:21]
  assign io_mem_reg2_data = _reg2_data_T ? io_forward_from_mem : _reg2_data_T_2; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 54:22]
  assign io_csr_write_data = 3'h6 == funct3 ? _io_csr_write_data_T_8 : _io_csr_write_data_T_18; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_if_jump_flag = io_interrupt_assert_clint | instruction_jump_flag; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 102:54]
  assign io_if_jump_address = io_interrupt_assert_clint ? io_interrupt_handler_address_clint : alu_io_result; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 103:31]
  assign io_clint_jump_flag = _instruction_jump_flag_T_2 | _instruction_jump_flag_T_26; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 87:36]
  assign io_clint_jump_address = alu_io_result; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 101:25]
  assign alu_io_func = alu_ctrl_io_alu_funct; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 47:22]
  assign alu_io_op1 = io_aluop1_source_id ? io_instruction_address : reg1_data; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 60:20]
  assign alu_io_op2 = io_aluop2_source_id ? io_immediate_id : reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 65:20]
  assign alu_ctrl_io_opcode = io_instruction[6:0]; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 35:30]
  assign alu_ctrl_io_funct3 = io_instruction[14:12]; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 36:30]
  assign alu_ctrl_io_funct7 = io_instruction[31:25]; // @[src/main/scala/riscv/core/fivestage_forward/Execute.scala 37:30]
endmodule
module PipelineRegister_24(
  input        clock,
  input        reset,
  input  [2:0] io_in, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  output [2:0] io_out // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] out; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
  assign io_out = out; // @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
      out <= 3'h0; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    end else begin
      out <= io_in;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  out = _RAND_0[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module EX2MEM(
  input         clock,
  input         reset,
  input         io_regs_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  input  [1:0]  io_regs_write_source, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  input  [31:0] io_regs_write_address, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  input  [31:0] io_instruction_address, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  input  [2:0]  io_funct3, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  input  [31:0] io_reg2_data, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  input         io_memory_read_enable, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  input         io_memory_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  input  [31:0] io_alu_result, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  input  [31:0] io_csr_read_data, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  output        io_output_regs_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  output [1:0]  io_output_regs_write_source, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  output [31:0] io_output_regs_write_address, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  output [31:0] io_output_instruction_address, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  output [31:0] io_output_funct3, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  output [31:0] io_output_reg2_data, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  output        io_output_memory_read_enable, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  output        io_output_memory_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  output [31:0] io_output_alu_result, // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
  output [31:0] io_output_csr_read_data // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 8:14]
);
  wire  regs_write_enable_clock; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 35:33]
  wire  regs_write_enable_reset; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 35:33]
  wire  regs_write_enable_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 35:33]
  wire  regs_write_enable_io_in; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 35:33]
  wire  regs_write_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 35:33]
  wire  regs_write_source_clock; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 41:33]
  wire  regs_write_source_reset; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 41:33]
  wire  regs_write_source_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 41:33]
  wire [1:0] regs_write_source_io_in; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 41:33]
  wire [1:0] regs_write_source_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 41:33]
  wire  regs_write_address_clock; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 47:34]
  wire  regs_write_address_reset; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 47:34]
  wire  regs_write_address_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 47:34]
  wire [4:0] regs_write_address_io_in; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 47:34]
  wire [4:0] regs_write_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 47:34]
  wire  instruction_address_clock; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 53:35]
  wire  instruction_address_reset; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 53:35]
  wire  instruction_address_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 53:35]
  wire  instruction_address_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 53:35]
  wire [31:0] instruction_address_io_in; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 53:35]
  wire [31:0] instruction_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 53:35]
  wire  funct3_clock; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 59:22]
  wire  funct3_reset; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 59:22]
  wire [2:0] funct3_io_in; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 59:22]
  wire [2:0] funct3_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 59:22]
  wire  reg2_data_clock; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 65:25]
  wire  reg2_data_reset; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 65:25]
  wire  reg2_data_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 65:25]
  wire  reg2_data_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 65:25]
  wire [31:0] reg2_data_io_in; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 65:25]
  wire [31:0] reg2_data_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 65:25]
  wire  alu_result_clock; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 71:26]
  wire  alu_result_reset; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 71:26]
  wire  alu_result_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 71:26]
  wire  alu_result_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 71:26]
  wire [31:0] alu_result_io_in; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 71:26]
  wire [31:0] alu_result_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 71:26]
  wire  memory_read_enable_clock; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 77:34]
  wire  memory_read_enable_reset; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 77:34]
  wire  memory_read_enable_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 77:34]
  wire  memory_read_enable_io_in; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 77:34]
  wire  memory_read_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 77:34]
  wire  memory_write_enable_clock; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 83:35]
  wire  memory_write_enable_reset; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 83:35]
  wire  memory_write_enable_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 83:35]
  wire  memory_write_enable_io_in; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 83:35]
  wire  memory_write_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 83:35]
  wire  csr_read_data_clock; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 89:29]
  wire  csr_read_data_reset; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 89:29]
  wire  csr_read_data_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 89:29]
  wire  csr_read_data_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 89:29]
  wire [31:0] csr_read_data_io_in; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 89:29]
  wire [31:0] csr_read_data_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 89:29]
  PipelineRegister_7 regs_write_enable ( // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 35:33]
    .clock(regs_write_enable_clock),
    .reset(regs_write_enable_reset),
    .io_flush(regs_write_enable_io_flush),
    .io_in(regs_write_enable_io_in),
    .io_out(regs_write_enable_io_out)
  );
  PipelineRegister_9 regs_write_source ( // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 41:33]
    .clock(regs_write_source_clock),
    .reset(regs_write_source_reset),
    .io_flush(regs_write_source_io_flush),
    .io_in(regs_write_source_io_in),
    .io_out(regs_write_source_io_out)
  );
  PipelineRegister_5 regs_write_address ( // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 47:34]
    .clock(regs_write_address_clock),
    .reset(regs_write_address_reset),
    .io_flush(regs_write_address_io_flush),
    .io_in(regs_write_address_io_in),
    .io_out(regs_write_address_io_out)
  );
  PipelineRegister_2 instruction_address ( // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 53:35]
    .clock(instruction_address_clock),
    .reset(instruction_address_reset),
    .io_stall(instruction_address_io_stall),
    .io_flush(instruction_address_io_flush),
    .io_in(instruction_address_io_in),
    .io_out(instruction_address_io_out)
  );
  PipelineRegister_24 funct3 ( // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 59:22]
    .clock(funct3_clock),
    .reset(funct3_reset),
    .io_in(funct3_io_in),
    .io_out(funct3_io_out)
  );
  PipelineRegister_2 reg2_data ( // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 65:25]
    .clock(reg2_data_clock),
    .reset(reg2_data_reset),
    .io_stall(reg2_data_io_stall),
    .io_flush(reg2_data_io_flush),
    .io_in(reg2_data_io_in),
    .io_out(reg2_data_io_out)
  );
  PipelineRegister_2 alu_result ( // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 71:26]
    .clock(alu_result_clock),
    .reset(alu_result_reset),
    .io_stall(alu_result_io_stall),
    .io_flush(alu_result_io_flush),
    .io_in(alu_result_io_in),
    .io_out(alu_result_io_out)
  );
  PipelineRegister_7 memory_read_enable ( // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 77:34]
    .clock(memory_read_enable_clock),
    .reset(memory_read_enable_reset),
    .io_flush(memory_read_enable_io_flush),
    .io_in(memory_read_enable_io_in),
    .io_out(memory_read_enable_io_out)
  );
  PipelineRegister_7 memory_write_enable ( // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 83:35]
    .clock(memory_write_enable_clock),
    .reset(memory_write_enable_reset),
    .io_flush(memory_write_enable_io_flush),
    .io_in(memory_write_enable_io_in),
    .io_out(memory_write_enable_io_out)
  );
  PipelineRegister_2 csr_read_data ( // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 89:29]
    .clock(csr_read_data_clock),
    .reset(csr_read_data_reset),
    .io_stall(csr_read_data_io_stall),
    .io_flush(csr_read_data_io_flush),
    .io_in(csr_read_data_io_in),
    .io_out(csr_read_data_io_out)
  );
  assign io_output_regs_write_enable = regs_write_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 39:31]
  assign io_output_regs_write_source = regs_write_source_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 45:31]
  assign io_output_regs_write_address = {{27'd0}, regs_write_address_io_out}; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 51:32]
  assign io_output_instruction_address = instruction_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 57:33]
  assign io_output_funct3 = {{29'd0}, funct3_io_out}; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 63:20]
  assign io_output_reg2_data = reg2_data_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 69:23]
  assign io_output_memory_read_enable = memory_read_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 81:32]
  assign io_output_memory_write_enable = memory_write_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 87:33]
  assign io_output_alu_result = alu_result_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 75:24]
  assign io_output_csr_read_data = csr_read_data_io_out; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 93:27]
  assign regs_write_enable_clock = clock;
  assign regs_write_enable_reset = reset;
  assign regs_write_enable_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 38:31]
  assign regs_write_enable_io_in = io_regs_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 36:31]
  assign regs_write_source_clock = clock;
  assign regs_write_source_reset = reset;
  assign regs_write_source_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 44:31]
  assign regs_write_source_io_in = io_regs_write_source; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 42:31]
  assign regs_write_address_clock = clock;
  assign regs_write_address_reset = reset;
  assign regs_write_address_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 50:32]
  assign regs_write_address_io_in = io_regs_write_address[4:0]; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 48:32]
  assign instruction_address_clock = clock;
  assign instruction_address_reset = reset;
  assign instruction_address_io_stall = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 55:33]
  assign instruction_address_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 56:33]
  assign instruction_address_io_in = io_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 54:33]
  assign funct3_clock = clock;
  assign funct3_reset = reset;
  assign funct3_io_in = io_funct3; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 60:20]
  assign reg2_data_clock = clock;
  assign reg2_data_reset = reset;
  assign reg2_data_io_stall = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 67:23]
  assign reg2_data_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 68:23]
  assign reg2_data_io_in = io_reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 66:23]
  assign alu_result_clock = clock;
  assign alu_result_reset = reset;
  assign alu_result_io_stall = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 73:24]
  assign alu_result_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 74:24]
  assign alu_result_io_in = io_alu_result; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 72:24]
  assign memory_read_enable_clock = clock;
  assign memory_read_enable_reset = reset;
  assign memory_read_enable_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 80:32]
  assign memory_read_enable_io_in = io_memory_read_enable; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 78:32]
  assign memory_write_enable_clock = clock;
  assign memory_write_enable_reset = reset;
  assign memory_write_enable_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 86:33]
  assign memory_write_enable_io_in = io_memory_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 84:33]
  assign csr_read_data_clock = clock;
  assign csr_read_data_reset = reset;
  assign csr_read_data_io_stall = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 91:27]
  assign csr_read_data_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 92:27]
  assign csr_read_data_io_in = io_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/EX2MEM.scala 90:27]
endmodule
module MemoryAccess(
  input  [31:0] io_alu_result, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  input  [31:0] io_reg2_data, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  input         io_memory_read_enable, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  input         io_memory_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  input  [2:0]  io_funct3, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  input  [1:0]  io_regs_write_source, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  input  [31:0] io_csr_read_data, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  output [31:0] io_wb_memory_read_data, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  output [31:0] io_forward_data, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  output [31:0] io_bundle_address, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  output [31:0] io_bundle_write_data, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  output        io_bundle_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  output        io_bundle_write_strobe_0, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  output        io_bundle_write_strobe_1, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  output        io_bundle_write_strobe_2, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  output        io_bundle_write_strobe_3, // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
  input  [31:0] io_bundle_read_data // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 9:14]
);
  wire [1:0] mem_address_index = io_alu_result[1:0]; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 23:40]
  wire [23:0] _io_wb_memory_read_data_T_2 = io_bundle_read_data[31] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 39:19]
  wire [31:0] _io_wb_memory_read_data_T_4 = {_io_wb_memory_read_data_T_2,io_bundle_read_data[31:24]}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 39:14]
  wire [23:0] _io_wb_memory_read_data_T_7 = io_bundle_read_data[7] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 41:28]
  wire [31:0] _io_wb_memory_read_data_T_9 = {_io_wb_memory_read_data_T_7,io_bundle_read_data[7:0]}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 41:23]
  wire [23:0] _io_wb_memory_read_data_T_12 = io_bundle_read_data[15] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 42:28]
  wire [31:0] _io_wb_memory_read_data_T_14 = {_io_wb_memory_read_data_T_12,io_bundle_read_data[15:8]}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 42:23]
  wire [23:0] _io_wb_memory_read_data_T_17 = io_bundle_read_data[23] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 43:28]
  wire [31:0] _io_wb_memory_read_data_T_19 = {_io_wb_memory_read_data_T_17,io_bundle_read_data[23:16]}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 43:23]
  wire  _io_wb_memory_read_data_T_20 = 2'h0 == mem_address_index; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_21 = 2'h0 == mem_address_index ? _io_wb_memory_read_data_T_9 :
    _io_wb_memory_read_data_T_4; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_wb_memory_read_data_T_22 = 2'h1 == mem_address_index; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_23 = 2'h1 == mem_address_index ? _io_wb_memory_read_data_T_14 :
    _io_wb_memory_read_data_T_21; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_wb_memory_read_data_T_24 = 2'h2 == mem_address_index; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_25 = 2'h2 == mem_address_index ? _io_wb_memory_read_data_T_19 :
    _io_wb_memory_read_data_T_23; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_28 = {24'h0,io_bundle_read_data[31:24]}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 48:14]
  wire [31:0] _io_wb_memory_read_data_T_31 = {24'h0,io_bundle_read_data[7:0]}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 50:23]
  wire [31:0] _io_wb_memory_read_data_T_34 = {24'h0,io_bundle_read_data[15:8]}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 51:23]
  wire [31:0] _io_wb_memory_read_data_T_37 = {24'h0,io_bundle_read_data[23:16]}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 52:23]
  wire [31:0] _io_wb_memory_read_data_T_39 = 2'h0 == mem_address_index ? _io_wb_memory_read_data_T_31 :
    _io_wb_memory_read_data_T_28; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_41 = 2'h1 == mem_address_index ? _io_wb_memory_read_data_T_34 :
    _io_wb_memory_read_data_T_39; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_43 = 2'h2 == mem_address_index ? _io_wb_memory_read_data_T_37 :
    _io_wb_memory_read_data_T_41; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_wb_memory_read_data_T_44 = mem_address_index == 2'h0; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 56:29]
  wire [15:0] _io_wb_memory_read_data_T_47 = io_bundle_read_data[15] ? 16'hffff : 16'h0; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 57:19]
  wire [31:0] _io_wb_memory_read_data_T_49 = {_io_wb_memory_read_data_T_47,io_bundle_read_data[15:0]}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 57:14]
  wire [15:0] _io_wb_memory_read_data_T_52 = io_bundle_read_data[31] ? 16'hffff : 16'h0; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 58:19]
  wire [31:0] _io_wb_memory_read_data_T_54 = {_io_wb_memory_read_data_T_52,io_bundle_read_data[31:16]}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 58:14]
  wire [31:0] _io_wb_memory_read_data_T_55 = _io_wb_memory_read_data_T_44 ? _io_wb_memory_read_data_T_49 :
    _io_wb_memory_read_data_T_54; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 55:36]
  wire [31:0] _io_wb_memory_read_data_T_59 = {16'h0,io_bundle_read_data[15:0]}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 62:14]
  wire [31:0] _io_wb_memory_read_data_T_62 = {16'h0,io_bundle_read_data[31:16]}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 63:14]
  wire [31:0] _io_wb_memory_read_data_T_63 = _io_wb_memory_read_data_T_44 ? _io_wb_memory_read_data_T_59 :
    _io_wb_memory_read_data_T_62; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 60:37]
  wire [31:0] _io_wb_memory_read_data_T_65 = 3'h0 == io_funct3 ? _io_wb_memory_read_data_T_25 : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_67 = 3'h4 == io_funct3 ? _io_wb_memory_read_data_T_43 :
    _io_wb_memory_read_data_T_65; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_69 = 3'h1 == io_funct3 ? _io_wb_memory_read_data_T_55 :
    _io_wb_memory_read_data_T_67; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_71 = 3'h5 == io_funct3 ? _io_wb_memory_read_data_T_63 :
    _io_wb_memory_read_data_T_69; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_wb_memory_read_data_T_73 = 3'h2 == io_funct3 ? io_bundle_read_data : _io_wb_memory_read_data_T_71; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _GEN_3 = 2'h3 == mem_address_index; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 70:28 72:{49,49}]
  wire [4:0] _io_bundle_write_data_T_1 = {mem_address_index, 3'h0}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 73:90]
  wire [39:0] _GEN_0 = {{31'd0}, io_reg2_data[8:0]}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 73:68]
  wire [39:0] _io_bundle_write_data_T_2 = _GEN_0 << _io_bundle_write_data_T_1; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 73:68]
  wire [32:0] _io_bundle_write_data_T_5 = {io_reg2_data[16:0], 16'h0}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 89:11]
  wire [32:0] _GEN_6 = _io_wb_memory_read_data_T_44 ? {{16'd0}, io_reg2_data[16:0]} : _io_bundle_write_data_T_5; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 77:39 81:30 86:30]
  wire  _GEN_7 = _io_wb_memory_read_data_T_44 ? 1'h0 : 1'h1; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 70:28 77:39 84:37]
  wire  _T_3 = io_funct3 == 3'h2; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 91:26]
  wire  _GEN_13 = io_funct3 == 3'h1 ? _io_wb_memory_read_data_T_44 : _T_3; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 76:52]
  wire [32:0] _GEN_15 = io_funct3 == 3'h1 ? _GEN_6 : {{1'd0}, io_reg2_data}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 69:28 76:52]
  wire  _GEN_16 = io_funct3 == 3'h1 ? _GEN_7 : _T_3; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 76:52]
  wire  _GEN_18 = io_funct3 == 3'h0 ? _io_wb_memory_read_data_T_20 : _GEN_13; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 71:46]
  wire  _GEN_19 = io_funct3 == 3'h0 ? _io_wb_memory_read_data_T_22 : _GEN_13; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 71:46]
  wire  _GEN_20 = io_funct3 == 3'h0 ? _io_wb_memory_read_data_T_24 : _GEN_16; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 71:46]
  wire  _GEN_21 = io_funct3 == 3'h0 ? _GEN_3 : _GEN_16; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 71:46]
  wire [39:0] _GEN_22 = io_funct3 == 3'h0 ? _io_bundle_write_data_T_2 : {{7'd0}, _GEN_15}; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 71:46 73:28]
  wire [39:0] _GEN_23 = io_memory_write_enable ? _GEN_22 : 40'h0; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 26:26 68:38]
  wire  _GEN_24 = io_memory_write_enable & _GEN_18; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 28:26 68:38]
  wire  _GEN_25 = io_memory_write_enable & _GEN_19; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 28:26 68:38]
  wire  _GEN_26 = io_memory_write_enable & _GEN_20; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 28:26 68:38]
  wire  _GEN_27 = io_memory_write_enable & _GEN_21; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 28:26 68:38]
  wire [39:0] _GEN_29 = io_memory_read_enable ? 40'h0 : _GEN_23; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 26:26 31:31]
  assign io_wb_memory_read_data = io_memory_read_enable ? _io_wb_memory_read_data_T_73 : 32'h0; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 29:26 31:31 33:28]
  assign io_forward_data = io_regs_write_source == 2'h2 ? io_csr_read_data : io_alu_result; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 98:25]
  assign io_bundle_address = io_alu_result; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 27:26]
  assign io_bundle_write_data = _GEN_29[31:0];
  assign io_bundle_write_enable = io_memory_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 25:26]
  assign io_bundle_write_strobe_0 = io_memory_read_enable ? 1'h0 : _GEN_24; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 28:26 31:31]
  assign io_bundle_write_strobe_1 = io_memory_read_enable ? 1'h0 : _GEN_25; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 28:26 31:31]
  assign io_bundle_write_strobe_2 = io_memory_read_enable ? 1'h0 : _GEN_26; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 28:26 31:31]
  assign io_bundle_write_strobe_3 = io_memory_read_enable ? 1'h0 : _GEN_27; // @[src/main/scala/riscv/core/fivestage_forward/MemoryAccess.scala 28:26 31:31]
endmodule
module MEM2WB(
  input         clock,
  input         reset,
  input  [31:0] io_instruction_address, // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 8:14]
  input  [31:0] io_alu_result, // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 8:14]
  input         io_regs_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 8:14]
  input  [1:0]  io_regs_write_source, // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 8:14]
  input  [31:0] io_regs_write_address, // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 8:14]
  input  [31:0] io_memory_read_data, // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 8:14]
  input  [31:0] io_csr_read_data, // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 8:14]
  output [31:0] io_output_instruction_address, // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 8:14]
  output [31:0] io_output_alu_result, // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 8:14]
  output        io_output_regs_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 8:14]
  output [1:0]  io_output_regs_write_source, // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 8:14]
  output [31:0] io_output_regs_write_address, // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 8:14]
  output [31:0] io_output_memory_read_data, // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 8:14]
  output [31:0] io_output_csr_read_data // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 8:14]
);
  wire  alu_result_clock; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 28:26]
  wire  alu_result_reset; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 28:26]
  wire  alu_result_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 28:26]
  wire  alu_result_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 28:26]
  wire [31:0] alu_result_io_in; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 28:26]
  wire [31:0] alu_result_io_out; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 28:26]
  wire  memory_read_data_clock; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 34:32]
  wire  memory_read_data_reset; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 34:32]
  wire  memory_read_data_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 34:32]
  wire  memory_read_data_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 34:32]
  wire [31:0] memory_read_data_io_in; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 34:32]
  wire [31:0] memory_read_data_io_out; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 34:32]
  wire  regs_write_enable_clock; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 40:33]
  wire  regs_write_enable_reset; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 40:33]
  wire  regs_write_enable_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 40:33]
  wire  regs_write_enable_io_in; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 40:33]
  wire  regs_write_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 40:33]
  wire  regs_write_source_clock; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 46:33]
  wire  regs_write_source_reset; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 46:33]
  wire  regs_write_source_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 46:33]
  wire [1:0] regs_write_source_io_in; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 46:33]
  wire [1:0] regs_write_source_io_out; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 46:33]
  wire  regs_write_address_clock; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 52:34]
  wire  regs_write_address_reset; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 52:34]
  wire  regs_write_address_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 52:34]
  wire [4:0] regs_write_address_io_in; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 52:34]
  wire [4:0] regs_write_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 52:34]
  wire  instruction_address_clock; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 58:35]
  wire  instruction_address_reset; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 58:35]
  wire  instruction_address_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 58:35]
  wire  instruction_address_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 58:35]
  wire [31:0] instruction_address_io_in; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 58:35]
  wire [31:0] instruction_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 58:35]
  wire  csr_read_data_clock; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 64:29]
  wire  csr_read_data_reset; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 64:29]
  wire  csr_read_data_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 64:29]
  wire  csr_read_data_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 64:29]
  wire [31:0] csr_read_data_io_in; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 64:29]
  wire [31:0] csr_read_data_io_out; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 64:29]
  PipelineRegister_2 alu_result ( // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 28:26]
    .clock(alu_result_clock),
    .reset(alu_result_reset),
    .io_stall(alu_result_io_stall),
    .io_flush(alu_result_io_flush),
    .io_in(alu_result_io_in),
    .io_out(alu_result_io_out)
  );
  PipelineRegister_2 memory_read_data ( // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 34:32]
    .clock(memory_read_data_clock),
    .reset(memory_read_data_reset),
    .io_stall(memory_read_data_io_stall),
    .io_flush(memory_read_data_io_flush),
    .io_in(memory_read_data_io_in),
    .io_out(memory_read_data_io_out)
  );
  PipelineRegister_7 regs_write_enable ( // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 40:33]
    .clock(regs_write_enable_clock),
    .reset(regs_write_enable_reset),
    .io_flush(regs_write_enable_io_flush),
    .io_in(regs_write_enable_io_in),
    .io_out(regs_write_enable_io_out)
  );
  PipelineRegister_9 regs_write_source ( // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 46:33]
    .clock(regs_write_source_clock),
    .reset(regs_write_source_reset),
    .io_flush(regs_write_source_io_flush),
    .io_in(regs_write_source_io_in),
    .io_out(regs_write_source_io_out)
  );
  PipelineRegister_5 regs_write_address ( // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 52:34]
    .clock(regs_write_address_clock),
    .reset(regs_write_address_reset),
    .io_flush(regs_write_address_io_flush),
    .io_in(regs_write_address_io_in),
    .io_out(regs_write_address_io_out)
  );
  PipelineRegister_2 instruction_address ( // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 58:35]
    .clock(instruction_address_clock),
    .reset(instruction_address_reset),
    .io_stall(instruction_address_io_stall),
    .io_flush(instruction_address_io_flush),
    .io_in(instruction_address_io_in),
    .io_out(instruction_address_io_out)
  );
  PipelineRegister_2 csr_read_data ( // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 64:29]
    .clock(csr_read_data_clock),
    .reset(csr_read_data_reset),
    .io_stall(csr_read_data_io_stall),
    .io_flush(csr_read_data_io_flush),
    .io_in(csr_read_data_io_in),
    .io_out(csr_read_data_io_out)
  );
  assign io_output_instruction_address = instruction_address_io_out; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 62:33]
  assign io_output_alu_result = alu_result_io_out; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 32:24]
  assign io_output_regs_write_enable = regs_write_enable_io_out; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 44:31]
  assign io_output_regs_write_source = regs_write_source_io_out; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 50:31]
  assign io_output_regs_write_address = {{27'd0}, regs_write_address_io_out}; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 56:32]
  assign io_output_memory_read_data = memory_read_data_io_out; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 38:30]
  assign io_output_csr_read_data = csr_read_data_io_out; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 68:27]
  assign alu_result_clock = clock;
  assign alu_result_reset = reset;
  assign alu_result_io_stall = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 30:24]
  assign alu_result_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 31:24]
  assign alu_result_io_in = io_alu_result; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 29:24]
  assign memory_read_data_clock = clock;
  assign memory_read_data_reset = reset;
  assign memory_read_data_io_stall = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 36:30]
  assign memory_read_data_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 37:30]
  assign memory_read_data_io_in = io_memory_read_data; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 35:30]
  assign regs_write_enable_clock = clock;
  assign regs_write_enable_reset = reset;
  assign regs_write_enable_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 43:31]
  assign regs_write_enable_io_in = io_regs_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 41:31]
  assign regs_write_source_clock = clock;
  assign regs_write_source_reset = reset;
  assign regs_write_source_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 49:31]
  assign regs_write_source_io_in = io_regs_write_source; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 47:31]
  assign regs_write_address_clock = clock;
  assign regs_write_address_reset = reset;
  assign regs_write_address_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 55:32]
  assign regs_write_address_io_in = io_regs_write_address[4:0]; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 53:32]
  assign instruction_address_clock = clock;
  assign instruction_address_reset = reset;
  assign instruction_address_io_stall = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 60:33]
  assign instruction_address_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 61:33]
  assign instruction_address_io_in = io_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 59:33]
  assign csr_read_data_clock = clock;
  assign csr_read_data_reset = reset;
  assign csr_read_data_io_stall = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 66:27]
  assign csr_read_data_io_flush = 1'h0; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 67:27]
  assign csr_read_data_io_in = io_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/MEM2WB.scala 65:27]
endmodule
module WriteBack(
  input  [31:0] io_instruction_address, // @[src/main/scala/riscv/core/fivestage_forward/WriteBack.scala 8:14]
  input  [31:0] io_alu_result, // @[src/main/scala/riscv/core/fivestage_forward/WriteBack.scala 8:14]
  input  [31:0] io_memory_read_data, // @[src/main/scala/riscv/core/fivestage_forward/WriteBack.scala 8:14]
  input  [1:0]  io_regs_write_source, // @[src/main/scala/riscv/core/fivestage_forward/WriteBack.scala 8:14]
  input  [31:0] io_csr_read_data, // @[src/main/scala/riscv/core/fivestage_forward/WriteBack.scala 8:14]
  output [31:0] io_regs_write_data // @[src/main/scala/riscv/core/fivestage_forward/WriteBack.scala 8:14]
);
  wire [31:0] _io_regs_write_data_T_1 = io_instruction_address + 32'h4; // @[src/main/scala/riscv/core/fivestage_forward/WriteBack.scala 23:72]
  wire [31:0] _io_regs_write_data_T_3 = 2'h1 == io_regs_write_source ? io_memory_read_data : io_alu_result; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_regs_write_data_T_5 = 2'h2 == io_regs_write_source ? io_csr_read_data : _io_regs_write_data_T_3; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_regs_write_data = 2'h3 == io_regs_write_source ? _io_regs_write_data_T_1 : _io_regs_write_data_T_5; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
endmodule
module Forwarding(
  input  [4:0] io_rs1_ex, // @[src/main/scala/riscv/core/fivestage_forward/Forwarding.scala 13:14]
  input  [4:0] io_rs2_ex, // @[src/main/scala/riscv/core/fivestage_forward/Forwarding.scala 13:14]
  input  [4:0] io_rd_mem, // @[src/main/scala/riscv/core/fivestage_forward/Forwarding.scala 13:14]
  input        io_reg_write_enable_mem, // @[src/main/scala/riscv/core/fivestage_forward/Forwarding.scala 13:14]
  input  [4:0] io_rd_wb, // @[src/main/scala/riscv/core/fivestage_forward/Forwarding.scala 13:14]
  input        io_reg_write_enable_wb, // @[src/main/scala/riscv/core/fivestage_forward/Forwarding.scala 13:14]
  output [1:0] io_reg1_forward_ex, // @[src/main/scala/riscv/core/fivestage_forward/Forwarding.scala 13:14]
  output [1:0] io_reg2_forward_ex // @[src/main/scala/riscv/core/fivestage_forward/Forwarding.scala 13:14]
);
  wire  _T_2 = io_rd_mem != 5'h0; // @[src/main/scala/riscv/core/fivestage_forward/Forwarding.scala 26:72]
  wire  _T_6 = io_rd_wb != 5'h0; // @[src/main/scala/riscv/core/fivestage_forward/Forwarding.scala 28:75]
  wire [1:0] _GEN_0 = io_reg_write_enable_wb & io_rs1_ex == io_rd_wb & io_rd_wb != 5'h0 ? 2'h2 : 2'h0; // @[src/main/scala/riscv/core/fivestage_forward/Forwarding.scala 28:84 29:24 31:24]
  wire [1:0] _GEN_2 = io_reg_write_enable_wb & io_rs2_ex == io_rd_wb & _T_6 ? 2'h2 : 2'h0; // @[src/main/scala/riscv/core/fivestage_forward/Forwarding.scala 35:84 36:24 38:24]
  assign io_reg1_forward_ex = io_reg_write_enable_mem & io_rs1_ex == io_rd_mem & io_rd_mem != 5'h0 ? 2'h1 : _GEN_0; // @[src/main/scala/riscv/core/fivestage_forward/Forwarding.scala 26:81 27:24]
  assign io_reg2_forward_ex = io_reg_write_enable_mem & io_rs2_ex == io_rd_mem & _T_2 ? 2'h1 : _GEN_2; // @[src/main/scala/riscv/core/fivestage_forward/Forwarding.scala 33:81 34:24]
endmodule
module CLINT(
  input         clock,
  input  [31:0] io_interrupt_flag, // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
  input  [31:0] io_instruction_ex, // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
  input  [31:0] io_instruction_address_if, // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
  input  [31:0] io_instruction_address_id, // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
  input         io_jump_flag, // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
  input  [31:0] io_jump_address, // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
  output [31:0] io_ex_interrupt_handler_address, // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
  output        io_ex_interrupt_assert, // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
  input  [31:0] io_csr_bundle_mstatus, // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
  input  [31:0] io_csr_bundle_mepc, // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
  input  [31:0] io_csr_bundle_mcause, // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
  input  [31:0] io_csr_bundle_mtvec, // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
  output [31:0] io_csr_bundle_mstatus_write_data, // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
  output [31:0] io_csr_bundle_mepc_write_data, // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
  output [31:0] io_csr_bundle_mcause_write_data, // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
  output        io_csr_bundle_direct_write_enable // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 28:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  interrupt_enable = io_csr_bundle_mstatus[3]; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 43:47]
  reg  jumpping; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 44:33]
  wire [31:0] _instruction_address_T = jumpping ? io_instruction_address_if : io_instruction_address_id; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 48:8]
  wire [31:0] instruction_address = io_jump_flag ? io_jump_address : _instruction_address_T; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 45:32]
  wire [31:0] mstatus_disable_interrupt = {io_csr_bundle_mstatus[31:4],1'h0,io_csr_bundle_mstatus[2:0]}; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 50:76]
  wire [31:0] mstatus_recover_interrupt = {io_csr_bundle_mstatus[31:4],io_csr_bundle_mstatus[7],io_csr_bundle_mstatus[2:
    0]}; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 52:62]
  wire [3:0] _io_csr_bundle_mcause_write_data_T_1 = 32'h73 == io_instruction_ex ? 4'hb : 4'ha; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_csr_bundle_mcause_write_data_T_3 = 32'h100073 == io_instruction_ex ? 4'h3 :
    _io_csr_bundle_mcause_write_data_T_1; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_csr_bundle_mcause_write_data_T_5 = io_interrupt_flag[0] ? 32'h80000007 : 32'h8000000b; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 71:45]
  wire  _T_5 = io_instruction_ex == 32'h30200073; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 75:32]
  wire [31:0] _GEN_0 = io_instruction_ex == 32'h30200073 ? mstatus_recover_interrupt : io_csr_bundle_mstatus; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 75:58 76:39 83:39]
  wire [31:0] _GEN_4 = io_instruction_ex == 32'h30200073 ? io_csr_bundle_mepc : 32'h0; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 75:58 81:39 88:39]
  wire [31:0] _GEN_5 = io_interrupt_flag != 32'h0 & interrupt_enable ? mstatus_disable_interrupt : _GEN_0; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 68:78 69:39]
  wire [31:0] _GEN_6 = io_interrupt_flag != 32'h0 & interrupt_enable ? instruction_address : io_csr_bundle_mepc; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 68:78 70:39]
  wire [31:0] _GEN_7 = io_interrupt_flag != 32'h0 & interrupt_enable ? _io_csr_bundle_mcause_write_data_T_5 :
    io_csr_bundle_mcause; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 68:78 71:39]
  wire  _GEN_8 = io_interrupt_flag != 32'h0 & interrupt_enable | _T_5; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 68:78 72:39]
  wire [31:0] _GEN_9 = io_interrupt_flag != 32'h0 & interrupt_enable ? io_csr_bundle_mtvec : _GEN_4; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 68:78 74:39]
  assign io_ex_interrupt_handler_address = io_instruction_ex == 32'h73 | io_instruction_ex == 32'h100073 ?
    io_csr_bundle_mtvec : _GEN_9; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 54:101 67:39]
  assign io_ex_interrupt_assert = io_instruction_ex == 32'h73 | io_instruction_ex == 32'h100073 | _GEN_8; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 54:101 65:39]
  assign io_csr_bundle_mstatus_write_data = io_instruction_ex == 32'h73 | io_instruction_ex == 32'h100073 ?
    mstatus_disable_interrupt : _GEN_5; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 54:101 55:38]
  assign io_csr_bundle_mepc_write_data = io_instruction_ex == 32'h73 | io_instruction_ex == 32'h100073 ?
    instruction_address : _GEN_6; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 54:101 56:38]
  assign io_csr_bundle_mcause_write_data = io_instruction_ex == 32'h73 | io_instruction_ex == 32'h100073 ? {{28'd0},
    _io_csr_bundle_mcause_write_data_T_3} : _GEN_7; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 54:101 57:37]
  assign io_csr_bundle_direct_write_enable = io_instruction_ex == 32'h73 | io_instruction_ex == 32'h100073 | _GEN_8; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 54:101 65:39]
  always @(posedge clock) begin
    jumpping <= io_jump_flag | io_ex_interrupt_assert; // @[src/main/scala/riscv/core/fivestage_forward/CLINT.scala 44:47]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  jumpping = _RAND_0[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CSR(
  input         clock,
  input         reset,
  input  [11:0] io_reg_read_address_id, // @[src/main/scala/riscv/core/CSR.scala 21:14]
  input         io_reg_write_enable_ex, // @[src/main/scala/riscv/core/CSR.scala 21:14]
  input  [11:0] io_reg_write_address_ex, // @[src/main/scala/riscv/core/CSR.scala 21:14]
  input  [31:0] io_reg_write_data_ex, // @[src/main/scala/riscv/core/CSR.scala 21:14]
  output [31:0] io_id_reg_read_data, // @[src/main/scala/riscv/core/CSR.scala 21:14]
  output [31:0] io_clint_access_bundle_mstatus, // @[src/main/scala/riscv/core/CSR.scala 21:14]
  output [31:0] io_clint_access_bundle_mepc, // @[src/main/scala/riscv/core/CSR.scala 21:14]
  output [31:0] io_clint_access_bundle_mcause, // @[src/main/scala/riscv/core/CSR.scala 21:14]
  output [31:0] io_clint_access_bundle_mtvec, // @[src/main/scala/riscv/core/CSR.scala 21:14]
  input  [31:0] io_clint_access_bundle_mstatus_write_data, // @[src/main/scala/riscv/core/CSR.scala 21:14]
  input  [31:0] io_clint_access_bundle_mepc_write_data, // @[src/main/scala/riscv/core/CSR.scala 21:14]
  input  [31:0] io_clint_access_bundle_mcause_write_data, // @[src/main/scala/riscv/core/CSR.scala 21:14]
  input         io_clint_access_bundle_direct_write_enable // @[src/main/scala/riscv/core/CSR.scala 21:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [63:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] mstatus; // @[src/main/scala/riscv/core/CSR.scala 32:25]
  reg [31:0] mie; // @[src/main/scala/riscv/core/CSR.scala 33:25]
  reg [31:0] mtvec; // @[src/main/scala/riscv/core/CSR.scala 34:25]
  reg [31:0] mscratch; // @[src/main/scala/riscv/core/CSR.scala 35:25]
  reg [31:0] mepc; // @[src/main/scala/riscv/core/CSR.scala 36:25]
  reg [31:0] mcause; // @[src/main/scala/riscv/core/CSR.scala 37:25]
  reg [63:0] cycles; // @[src/main/scala/riscv/core/CSR.scala 38:25]
  wire [63:0] _cycles_T_1 = cycles + 64'h1; // @[src/main/scala/riscv/core/CSR.scala 50:20]
  wire [31:0] _io_id_reg_read_data_T_1 = 12'h300 == io_reg_read_address_id ? mstatus : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_id_reg_read_data_T_3 = 12'h304 == io_reg_read_address_id ? mie : _io_id_reg_read_data_T_1; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_id_reg_read_data_T_5 = 12'h305 == io_reg_read_address_id ? mtvec : _io_id_reg_read_data_T_3; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_id_reg_read_data_T_7 = 12'h340 == io_reg_read_address_id ? mscratch : _io_id_reg_read_data_T_5; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_id_reg_read_data_T_9 = 12'h341 == io_reg_read_address_id ? mepc : _io_id_reg_read_data_T_7; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_id_reg_read_data_T_11 = 12'h342 == io_reg_read_address_id ? mcause : _io_id_reg_read_data_T_9; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_id_reg_read_data_T_13 = 12'hc00 == io_reg_read_address_id ? cycles[31:0] : _io_id_reg_read_data_T_11; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_clint_access_bundle_mstatus_T = io_reg_write_address_ex == 12'h300; // @[src/main/scala/riscv/core/CSR.scala 57:55]
  wire  _io_clint_access_bundle_mstatus_T_1 = io_reg_write_enable_ex & io_reg_write_address_ex == 12'h300; // @[src/main/scala/riscv/core/CSR.scala 57:28]
  wire  _io_clint_access_bundle_mtvec_T = io_reg_write_address_ex == 12'h305; // @[src/main/scala/riscv/core/CSR.scala 62:55]
  wire  _io_clint_access_bundle_mtvec_T_1 = io_reg_write_enable_ex & io_reg_write_address_ex == 12'h305; // @[src/main/scala/riscv/core/CSR.scala 62:28]
  wire  _io_clint_access_bundle_mcause_T = io_reg_write_address_ex == 12'h342; // @[src/main/scala/riscv/core/CSR.scala 67:55]
  wire  _io_clint_access_bundle_mcause_T_1 = io_reg_write_enable_ex & io_reg_write_address_ex == 12'h342; // @[src/main/scala/riscv/core/CSR.scala 67:28]
  wire  _io_clint_access_bundle_mepc_T = io_reg_write_address_ex == 12'h341; // @[src/main/scala/riscv/core/CSR.scala 72:55]
  wire  _io_clint_access_bundle_mepc_T_1 = io_reg_write_enable_ex & io_reg_write_address_ex == 12'h341; // @[src/main/scala/riscv/core/CSR.scala 72:28]
  wire [31:0] _GEN_0 = _io_clint_access_bundle_mcause_T ? io_reg_write_data_ex : mcause; // @[src/main/scala/riscv/core/CSR.scala 86:64 87:14 37:25]
  wire [31:0] _GEN_1 = _io_clint_access_bundle_mepc_T ? io_reg_write_data_ex : mepc; // @[src/main/scala/riscv/core/CSR.scala 84:62 85:12 36:25]
  wire [31:0] _GEN_2 = _io_clint_access_bundle_mepc_T ? mcause : _GEN_0; // @[src/main/scala/riscv/core/CSR.scala 37:25 84:62]
  wire [31:0] _GEN_12 = io_reg_write_address_ex == 12'h340 ? io_reg_write_data_ex : mscratch; // @[src/main/scala/riscv/core/CSR.scala 96:66 97:16 35:25]
  assign io_id_reg_read_data = 12'hc80 == io_reg_read_address_id ? cycles[63:32] : _io_id_reg_read_data_T_13; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_clint_access_bundle_mstatus = _io_clint_access_bundle_mstatus_T_1 ? io_reg_write_data_ex : mstatus; // @[src/main/scala/riscv/core/CSR.scala 56:40]
  assign io_clint_access_bundle_mepc = _io_clint_access_bundle_mepc_T_1 ? io_reg_write_data_ex : mepc; // @[src/main/scala/riscv/core/CSR.scala 71:37]
  assign io_clint_access_bundle_mcause = _io_clint_access_bundle_mcause_T_1 ? io_reg_write_data_ex : mcause; // @[src/main/scala/riscv/core/CSR.scala 66:39]
  assign io_clint_access_bundle_mtvec = _io_clint_access_bundle_mtvec_T_1 ? io_reg_write_data_ex : mtvec; // @[src/main/scala/riscv/core/CSR.scala 61:38]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/CSR.scala 32:25]
      mstatus <= 32'h0; // @[src/main/scala/riscv/core/CSR.scala 32:25]
    end else if (io_clint_access_bundle_direct_write_enable) begin // @[src/main/scala/riscv/core/CSR.scala 77:52]
      mstatus <= io_clint_access_bundle_mstatus_write_data; // @[src/main/scala/riscv/core/CSR.scala 78:13]
    end else if (io_reg_write_enable_ex) begin // @[src/main/scala/riscv/core/CSR.scala 81:38]
      if (_io_clint_access_bundle_mstatus_T) begin // @[src/main/scala/riscv/core/CSR.scala 82:59]
        mstatus <= io_reg_write_data_ex; // @[src/main/scala/riscv/core/CSR.scala 83:15]
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/CSR.scala 33:25]
      mie <= 32'h0; // @[src/main/scala/riscv/core/CSR.scala 33:25]
    end else if (io_reg_write_enable_ex) begin // @[src/main/scala/riscv/core/CSR.scala 91:32]
      if (io_reg_write_address_ex == 12'h304) begin // @[src/main/scala/riscv/core/CSR.scala 92:55]
        mie <= io_reg_write_data_ex; // @[src/main/scala/riscv/core/CSR.scala 93:11]
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/CSR.scala 34:25]
      mtvec <= 32'h0; // @[src/main/scala/riscv/core/CSR.scala 34:25]
    end else if (io_reg_write_enable_ex) begin // @[src/main/scala/riscv/core/CSR.scala 91:32]
      if (!(io_reg_write_address_ex == 12'h304)) begin // @[src/main/scala/riscv/core/CSR.scala 92:55]
        if (_io_clint_access_bundle_mtvec_T) begin // @[src/main/scala/riscv/core/CSR.scala 94:63]
          mtvec <= io_reg_write_data_ex; // @[src/main/scala/riscv/core/CSR.scala 95:13]
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/CSR.scala 35:25]
      mscratch <= 32'h0; // @[src/main/scala/riscv/core/CSR.scala 35:25]
    end else if (io_reg_write_enable_ex) begin // @[src/main/scala/riscv/core/CSR.scala 91:32]
      if (!(io_reg_write_address_ex == 12'h304)) begin // @[src/main/scala/riscv/core/CSR.scala 92:55]
        if (!(_io_clint_access_bundle_mtvec_T)) begin // @[src/main/scala/riscv/core/CSR.scala 94:63]
          mscratch <= _GEN_12;
        end
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/CSR.scala 36:25]
      mepc <= 32'h0; // @[src/main/scala/riscv/core/CSR.scala 36:25]
    end else if (io_clint_access_bundle_direct_write_enable) begin // @[src/main/scala/riscv/core/CSR.scala 77:52]
      mepc <= io_clint_access_bundle_mepc_write_data; // @[src/main/scala/riscv/core/CSR.scala 79:13]
    end else if (io_reg_write_enable_ex) begin // @[src/main/scala/riscv/core/CSR.scala 81:38]
      if (!(_io_clint_access_bundle_mstatus_T)) begin // @[src/main/scala/riscv/core/CSR.scala 82:59]
        mepc <= _GEN_1;
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/CSR.scala 37:25]
      mcause <= 32'h0; // @[src/main/scala/riscv/core/CSR.scala 37:25]
    end else if (io_clint_access_bundle_direct_write_enable) begin // @[src/main/scala/riscv/core/CSR.scala 77:52]
      mcause <= io_clint_access_bundle_mcause_write_data; // @[src/main/scala/riscv/core/CSR.scala 80:13]
    end else if (io_reg_write_enable_ex) begin // @[src/main/scala/riscv/core/CSR.scala 81:38]
      if (!(_io_clint_access_bundle_mstatus_T)) begin // @[src/main/scala/riscv/core/CSR.scala 82:59]
        mcause <= _GEN_2;
      end
    end
    if (reset) begin // @[src/main/scala/riscv/core/CSR.scala 38:25]
      cycles <= 64'h0; // @[src/main/scala/riscv/core/CSR.scala 38:25]
    end else begin
      cycles <= _cycles_T_1; // @[src/main/scala/riscv/core/CSR.scala 50:10]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  mstatus = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  mie = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  mtvec = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  mscratch = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  mepc = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  mcause = _RAND_5[31:0];
  _RAND_6 = {2{`RANDOM}};
  cycles = _RAND_6[63:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module CPU(
  input         clock,
  input         reset,
  output [31:0] io_instruction_address, // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 10:14]
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 10:14]
  input         io_instruction_valid, // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 10:14]
  output [31:0] io_memory_bundle_address, // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 10:14]
  output [31:0] io_memory_bundle_write_data, // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 10:14]
  output        io_memory_bundle_write_enable, // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 10:14]
  output        io_memory_bundle_write_strobe_0, // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 10:14]
  output        io_memory_bundle_write_strobe_1, // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 10:14]
  output        io_memory_bundle_write_strobe_2, // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 10:14]
  output        io_memory_bundle_write_strobe_3, // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 10:14]
  input  [31:0] io_memory_bundle_read_data, // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 10:14]
  input  [4:0]  io_debug_read_address, // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 10:14]
  output [31:0] io_debug_read_data // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 10:14]
);
  wire  ctrl_io_jump_flag; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 12:26]
  wire [4:0] ctrl_io_rs1_id; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 12:26]
  wire [4:0] ctrl_io_rs2_id; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 12:26]
  wire  ctrl_io_memory_read_enable_ex; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 12:26]
  wire [4:0] ctrl_io_rd_ex; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 12:26]
  wire  ctrl_io_if_flush; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 12:26]
  wire  ctrl_io_id_flush; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 12:26]
  wire  ctrl_io_pc_stall; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 12:26]
  wire  ctrl_io_if_stall; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 12:26]
  wire  regs_clock; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 13:26]
  wire  regs_reset; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 13:26]
  wire  regs_io_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 13:26]
  wire [4:0] regs_io_write_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 13:26]
  wire [31:0] regs_io_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 13:26]
  wire [4:0] regs_io_read_address1; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 13:26]
  wire [4:0] regs_io_read_address2; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 13:26]
  wire [31:0] regs_io_read_data1; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 13:26]
  wire [31:0] regs_io_read_data2; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 13:26]
  wire [4:0] regs_io_debug_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 13:26]
  wire [31:0] regs_io_debug_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 13:26]
  wire  inst_fetch_clock; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 14:26]
  wire  inst_fetch_reset; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 14:26]
  wire  inst_fetch_io_stall_flag_ctrl; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 14:26]
  wire  inst_fetch_io_jump_flag_id; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 14:26]
  wire [31:0] inst_fetch_io_jump_address_id; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 14:26]
  wire [31:0] inst_fetch_io_rom_instruction; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 14:26]
  wire  inst_fetch_io_instruction_valid; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 14:26]
  wire [31:0] inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 14:26]
  wire [31:0] inst_fetch_io_id_instruction; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 14:26]
  wire  if2id_clock; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 15:26]
  wire  if2id_reset; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 15:26]
  wire  if2id_io_stall; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 15:26]
  wire  if2id_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 15:26]
  wire [31:0] if2id_io_instruction; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 15:26]
  wire [31:0] if2id_io_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 15:26]
  wire [31:0] if2id_io_output_instruction; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 15:26]
  wire [31:0] if2id_io_output_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 15:26]
  wire [31:0] if2id_io_output_interrupt_flag; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 15:26]
  wire [31:0] id_io_instruction; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 16:26]
  wire [4:0] id_io_regs_reg1_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 16:26]
  wire [4:0] id_io_regs_reg2_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 16:26]
  wire [31:0] id_io_ex_immediate; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 16:26]
  wire  id_io_ex_aluop1_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 16:26]
  wire  id_io_ex_aluop2_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 16:26]
  wire  id_io_ex_memory_read_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 16:26]
  wire  id_io_ex_memory_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 16:26]
  wire [1:0] id_io_ex_reg_write_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 16:26]
  wire  id_io_ex_reg_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 16:26]
  wire [4:0] id_io_ex_reg_write_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 16:26]
  wire [11:0] id_io_ex_csr_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 16:26]
  wire  id_io_ex_csr_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 16:26]
  wire  id2ex_clock; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire  id2ex_reset; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire  id2ex_io_flush; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [31:0] id2ex_io_instruction; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [31:0] id2ex_io_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [4:0] id2ex_io_regs_reg1_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [4:0] id2ex_io_regs_reg2_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire  id2ex_io_regs_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [4:0] id2ex_io_regs_write_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [1:0] id2ex_io_regs_write_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [31:0] id2ex_io_reg1_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [31:0] id2ex_io_reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [31:0] id2ex_io_immediate; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire  id2ex_io_aluop1_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire  id2ex_io_aluop2_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire  id2ex_io_csr_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [11:0] id2ex_io_csr_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire  id2ex_io_memory_read_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire  id2ex_io_memory_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [31:0] id2ex_io_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [31:0] id2ex_io_output_instruction; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [31:0] id2ex_io_output_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [4:0] id2ex_io_output_regs_reg1_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [4:0] id2ex_io_output_regs_reg2_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire  id2ex_io_output_regs_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [4:0] id2ex_io_output_regs_write_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [1:0] id2ex_io_output_regs_write_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [31:0] id2ex_io_output_reg1_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [31:0] id2ex_io_output_reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [31:0] id2ex_io_output_immediate; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire  id2ex_io_output_aluop1_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire  id2ex_io_output_aluop2_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire  id2ex_io_output_csr_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [11:0] id2ex_io_output_csr_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire  id2ex_io_output_memory_read_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire  id2ex_io_output_memory_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [31:0] id2ex_io_output_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
  wire [31:0] ex_io_instruction; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire [31:0] ex_io_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire [31:0] ex_io_reg1_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire [31:0] ex_io_reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire [31:0] ex_io_immediate_id; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire  ex_io_aluop1_source_id; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire  ex_io_aluop2_source_id; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire [31:0] ex_io_csr_read_data_id; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire [31:0] ex_io_forward_from_mem; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire [31:0] ex_io_forward_from_wb; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire [1:0] ex_io_reg1_forward; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire [1:0] ex_io_reg2_forward; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire  ex_io_interrupt_assert_clint; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire [31:0] ex_io_interrupt_handler_address_clint; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire [31:0] ex_io_mem_alu_result; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire [31:0] ex_io_mem_reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire [31:0] ex_io_csr_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire  ex_io_if_jump_flag; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire [31:0] ex_io_if_jump_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire  ex_io_clint_jump_flag; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire [31:0] ex_io_clint_jump_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
  wire  ex2mem_clock; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire  ex2mem_reset; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire  ex2mem_io_regs_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire [1:0] ex2mem_io_regs_write_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire [31:0] ex2mem_io_regs_write_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire [31:0] ex2mem_io_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire [2:0] ex2mem_io_funct3; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire [31:0] ex2mem_io_reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire  ex2mem_io_memory_read_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire  ex2mem_io_memory_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire [31:0] ex2mem_io_alu_result; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire [31:0] ex2mem_io_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire  ex2mem_io_output_regs_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire [1:0] ex2mem_io_output_regs_write_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire [31:0] ex2mem_io_output_regs_write_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire [31:0] ex2mem_io_output_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire [31:0] ex2mem_io_output_funct3; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire [31:0] ex2mem_io_output_reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire  ex2mem_io_output_memory_read_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire  ex2mem_io_output_memory_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire [31:0] ex2mem_io_output_alu_result; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire [31:0] ex2mem_io_output_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
  wire [31:0] mem_io_alu_result; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire [31:0] mem_io_reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire  mem_io_memory_read_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire  mem_io_memory_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire [2:0] mem_io_funct3; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire [1:0] mem_io_regs_write_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire [31:0] mem_io_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire [31:0] mem_io_wb_memory_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire [31:0] mem_io_forward_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire [31:0] mem_io_bundle_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire [31:0] mem_io_bundle_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire  mem_io_bundle_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire  mem_io_bundle_write_strobe_0; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire  mem_io_bundle_write_strobe_1; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire  mem_io_bundle_write_strobe_2; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire  mem_io_bundle_write_strobe_3; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire [31:0] mem_io_bundle_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
  wire  mem2wb_clock; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire  mem2wb_reset; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire [31:0] mem2wb_io_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire [31:0] mem2wb_io_alu_result; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire  mem2wb_io_regs_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire [1:0] mem2wb_io_regs_write_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire [31:0] mem2wb_io_regs_write_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire [31:0] mem2wb_io_memory_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire [31:0] mem2wb_io_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire [31:0] mem2wb_io_output_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire [31:0] mem2wb_io_output_alu_result; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire  mem2wb_io_output_regs_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire [1:0] mem2wb_io_output_regs_write_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire [31:0] mem2wb_io_output_regs_write_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire [31:0] mem2wb_io_output_memory_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire [31:0] mem2wb_io_output_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
  wire [31:0] wb_io_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 22:26]
  wire [31:0] wb_io_alu_result; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 22:26]
  wire [31:0] wb_io_memory_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 22:26]
  wire [1:0] wb_io_regs_write_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 22:26]
  wire [31:0] wb_io_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 22:26]
  wire [31:0] wb_io_regs_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 22:26]
  wire [4:0] forwarding_io_rs1_ex; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 23:26]
  wire [4:0] forwarding_io_rs2_ex; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 23:26]
  wire [4:0] forwarding_io_rd_mem; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 23:26]
  wire  forwarding_io_reg_write_enable_mem; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 23:26]
  wire [4:0] forwarding_io_rd_wb; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 23:26]
  wire  forwarding_io_reg_write_enable_wb; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 23:26]
  wire [1:0] forwarding_io_reg1_forward_ex; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 23:26]
  wire [1:0] forwarding_io_reg2_forward_ex; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 23:26]
  wire  clint_clock; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire [31:0] clint_io_interrupt_flag; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire [31:0] clint_io_instruction_ex; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire [31:0] clint_io_instruction_address_if; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire [31:0] clint_io_instruction_address_id; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire  clint_io_jump_flag; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire [31:0] clint_io_jump_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire [31:0] clint_io_ex_interrupt_handler_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire  clint_io_ex_interrupt_assert; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire [31:0] clint_io_csr_bundle_mstatus; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire [31:0] clint_io_csr_bundle_mepc; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire [31:0] clint_io_csr_bundle_mcause; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire [31:0] clint_io_csr_bundle_mtvec; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire [31:0] clint_io_csr_bundle_mstatus_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire [31:0] clint_io_csr_bundle_mepc_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire [31:0] clint_io_csr_bundle_mcause_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire  clint_io_csr_bundle_direct_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
  wire  csr_regs_clock; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
  wire  csr_regs_reset; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
  wire [11:0] csr_regs_io_reg_read_address_id; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
  wire  csr_regs_io_reg_write_enable_ex; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
  wire [11:0] csr_regs_io_reg_write_address_ex; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
  wire [31:0] csr_regs_io_reg_write_data_ex; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
  wire [31:0] csr_regs_io_id_reg_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
  wire [31:0] csr_regs_io_clint_access_bundle_mstatus; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
  wire [31:0] csr_regs_io_clint_access_bundle_mepc; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
  wire [31:0] csr_regs_io_clint_access_bundle_mcause; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
  wire [31:0] csr_regs_io_clint_access_bundle_mtvec; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
  wire [31:0] csr_regs_io_clint_access_bundle_mstatus_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
  wire [31:0] csr_regs_io_clint_access_bundle_mepc_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
  wire [31:0] csr_regs_io_clint_access_bundle_mcause_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
  wire  csr_regs_io_clint_access_bundle_direct_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
  Control ctrl ( // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 12:26]
    .io_jump_flag(ctrl_io_jump_flag),
    .io_rs1_id(ctrl_io_rs1_id),
    .io_rs2_id(ctrl_io_rs2_id),
    .io_memory_read_enable_ex(ctrl_io_memory_read_enable_ex),
    .io_rd_ex(ctrl_io_rd_ex),
    .io_if_flush(ctrl_io_if_flush),
    .io_id_flush(ctrl_io_id_flush),
    .io_pc_stall(ctrl_io_pc_stall),
    .io_if_stall(ctrl_io_if_stall)
  );
  RegisterFile regs ( // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 13:26]
    .clock(regs_clock),
    .reset(regs_reset),
    .io_write_enable(regs_io_write_enable),
    .io_write_address(regs_io_write_address),
    .io_write_data(regs_io_write_data),
    .io_read_address1(regs_io_read_address1),
    .io_read_address2(regs_io_read_address2),
    .io_read_data1(regs_io_read_data1),
    .io_read_data2(regs_io_read_data2),
    .io_debug_read_address(regs_io_debug_read_address),
    .io_debug_read_data(regs_io_debug_read_data)
  );
  InstructionFetch inst_fetch ( // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 14:26]
    .clock(inst_fetch_clock),
    .reset(inst_fetch_reset),
    .io_stall_flag_ctrl(inst_fetch_io_stall_flag_ctrl),
    .io_jump_flag_id(inst_fetch_io_jump_flag_id),
    .io_jump_address_id(inst_fetch_io_jump_address_id),
    .io_rom_instruction(inst_fetch_io_rom_instruction),
    .io_instruction_valid(inst_fetch_io_instruction_valid),
    .io_instruction_address(inst_fetch_io_instruction_address),
    .io_id_instruction(inst_fetch_io_id_instruction)
  );
  IF2ID if2id ( // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 15:26]
    .clock(if2id_clock),
    .reset(if2id_reset),
    .io_stall(if2id_io_stall),
    .io_flush(if2id_io_flush),
    .io_instruction(if2id_io_instruction),
    .io_instruction_address(if2id_io_instruction_address),
    .io_output_instruction(if2id_io_output_instruction),
    .io_output_instruction_address(if2id_io_output_instruction_address),
    .io_output_interrupt_flag(if2id_io_output_interrupt_flag)
  );
  InstructionDecode id ( // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 16:26]
    .io_instruction(id_io_instruction),
    .io_regs_reg1_read_address(id_io_regs_reg1_read_address),
    .io_regs_reg2_read_address(id_io_regs_reg2_read_address),
    .io_ex_immediate(id_io_ex_immediate),
    .io_ex_aluop1_source(id_io_ex_aluop1_source),
    .io_ex_aluop2_source(id_io_ex_aluop2_source),
    .io_ex_memory_read_enable(id_io_ex_memory_read_enable),
    .io_ex_memory_write_enable(id_io_ex_memory_write_enable),
    .io_ex_reg_write_source(id_io_ex_reg_write_source),
    .io_ex_reg_write_enable(id_io_ex_reg_write_enable),
    .io_ex_reg_write_address(id_io_ex_reg_write_address),
    .io_ex_csr_address(id_io_ex_csr_address),
    .io_ex_csr_write_enable(id_io_ex_csr_write_enable)
  );
  ID2EX id2ex ( // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 17:26]
    .clock(id2ex_clock),
    .reset(id2ex_reset),
    .io_flush(id2ex_io_flush),
    .io_instruction(id2ex_io_instruction),
    .io_instruction_address(id2ex_io_instruction_address),
    .io_regs_reg1_read_address(id2ex_io_regs_reg1_read_address),
    .io_regs_reg2_read_address(id2ex_io_regs_reg2_read_address),
    .io_regs_write_enable(id2ex_io_regs_write_enable),
    .io_regs_write_address(id2ex_io_regs_write_address),
    .io_regs_write_source(id2ex_io_regs_write_source),
    .io_reg1_data(id2ex_io_reg1_data),
    .io_reg2_data(id2ex_io_reg2_data),
    .io_immediate(id2ex_io_immediate),
    .io_aluop1_source(id2ex_io_aluop1_source),
    .io_aluop2_source(id2ex_io_aluop2_source),
    .io_csr_write_enable(id2ex_io_csr_write_enable),
    .io_csr_address(id2ex_io_csr_address),
    .io_memory_read_enable(id2ex_io_memory_read_enable),
    .io_memory_write_enable(id2ex_io_memory_write_enable),
    .io_csr_read_data(id2ex_io_csr_read_data),
    .io_output_instruction(id2ex_io_output_instruction),
    .io_output_instruction_address(id2ex_io_output_instruction_address),
    .io_output_regs_reg1_read_address(id2ex_io_output_regs_reg1_read_address),
    .io_output_regs_reg2_read_address(id2ex_io_output_regs_reg2_read_address),
    .io_output_regs_write_enable(id2ex_io_output_regs_write_enable),
    .io_output_regs_write_address(id2ex_io_output_regs_write_address),
    .io_output_regs_write_source(id2ex_io_output_regs_write_source),
    .io_output_reg1_data(id2ex_io_output_reg1_data),
    .io_output_reg2_data(id2ex_io_output_reg2_data),
    .io_output_immediate(id2ex_io_output_immediate),
    .io_output_aluop1_source(id2ex_io_output_aluop1_source),
    .io_output_aluop2_source(id2ex_io_output_aluop2_source),
    .io_output_csr_write_enable(id2ex_io_output_csr_write_enable),
    .io_output_csr_address(id2ex_io_output_csr_address),
    .io_output_memory_read_enable(id2ex_io_output_memory_read_enable),
    .io_output_memory_write_enable(id2ex_io_output_memory_write_enable),
    .io_output_csr_read_data(id2ex_io_output_csr_read_data)
  );
  Execute ex ( // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 18:26]
    .io_instruction(ex_io_instruction),
    .io_instruction_address(ex_io_instruction_address),
    .io_reg1_data(ex_io_reg1_data),
    .io_reg2_data(ex_io_reg2_data),
    .io_immediate_id(ex_io_immediate_id),
    .io_aluop1_source_id(ex_io_aluop1_source_id),
    .io_aluop2_source_id(ex_io_aluop2_source_id),
    .io_csr_read_data_id(ex_io_csr_read_data_id),
    .io_forward_from_mem(ex_io_forward_from_mem),
    .io_forward_from_wb(ex_io_forward_from_wb),
    .io_reg1_forward(ex_io_reg1_forward),
    .io_reg2_forward(ex_io_reg2_forward),
    .io_interrupt_assert_clint(ex_io_interrupt_assert_clint),
    .io_interrupt_handler_address_clint(ex_io_interrupt_handler_address_clint),
    .io_mem_alu_result(ex_io_mem_alu_result),
    .io_mem_reg2_data(ex_io_mem_reg2_data),
    .io_csr_write_data(ex_io_csr_write_data),
    .io_if_jump_flag(ex_io_if_jump_flag),
    .io_if_jump_address(ex_io_if_jump_address),
    .io_clint_jump_flag(ex_io_clint_jump_flag),
    .io_clint_jump_address(ex_io_clint_jump_address)
  );
  EX2MEM ex2mem ( // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 19:26]
    .clock(ex2mem_clock),
    .reset(ex2mem_reset),
    .io_regs_write_enable(ex2mem_io_regs_write_enable),
    .io_regs_write_source(ex2mem_io_regs_write_source),
    .io_regs_write_address(ex2mem_io_regs_write_address),
    .io_instruction_address(ex2mem_io_instruction_address),
    .io_funct3(ex2mem_io_funct3),
    .io_reg2_data(ex2mem_io_reg2_data),
    .io_memory_read_enable(ex2mem_io_memory_read_enable),
    .io_memory_write_enable(ex2mem_io_memory_write_enable),
    .io_alu_result(ex2mem_io_alu_result),
    .io_csr_read_data(ex2mem_io_csr_read_data),
    .io_output_regs_write_enable(ex2mem_io_output_regs_write_enable),
    .io_output_regs_write_source(ex2mem_io_output_regs_write_source),
    .io_output_regs_write_address(ex2mem_io_output_regs_write_address),
    .io_output_instruction_address(ex2mem_io_output_instruction_address),
    .io_output_funct3(ex2mem_io_output_funct3),
    .io_output_reg2_data(ex2mem_io_output_reg2_data),
    .io_output_memory_read_enable(ex2mem_io_output_memory_read_enable),
    .io_output_memory_write_enable(ex2mem_io_output_memory_write_enable),
    .io_output_alu_result(ex2mem_io_output_alu_result),
    .io_output_csr_read_data(ex2mem_io_output_csr_read_data)
  );
  MemoryAccess mem ( // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 20:26]
    .io_alu_result(mem_io_alu_result),
    .io_reg2_data(mem_io_reg2_data),
    .io_memory_read_enable(mem_io_memory_read_enable),
    .io_memory_write_enable(mem_io_memory_write_enable),
    .io_funct3(mem_io_funct3),
    .io_regs_write_source(mem_io_regs_write_source),
    .io_csr_read_data(mem_io_csr_read_data),
    .io_wb_memory_read_data(mem_io_wb_memory_read_data),
    .io_forward_data(mem_io_forward_data),
    .io_bundle_address(mem_io_bundle_address),
    .io_bundle_write_data(mem_io_bundle_write_data),
    .io_bundle_write_enable(mem_io_bundle_write_enable),
    .io_bundle_write_strobe_0(mem_io_bundle_write_strobe_0),
    .io_bundle_write_strobe_1(mem_io_bundle_write_strobe_1),
    .io_bundle_write_strobe_2(mem_io_bundle_write_strobe_2),
    .io_bundle_write_strobe_3(mem_io_bundle_write_strobe_3),
    .io_bundle_read_data(mem_io_bundle_read_data)
  );
  MEM2WB mem2wb ( // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 21:26]
    .clock(mem2wb_clock),
    .reset(mem2wb_reset),
    .io_instruction_address(mem2wb_io_instruction_address),
    .io_alu_result(mem2wb_io_alu_result),
    .io_regs_write_enable(mem2wb_io_regs_write_enable),
    .io_regs_write_source(mem2wb_io_regs_write_source),
    .io_regs_write_address(mem2wb_io_regs_write_address),
    .io_memory_read_data(mem2wb_io_memory_read_data),
    .io_csr_read_data(mem2wb_io_csr_read_data),
    .io_output_instruction_address(mem2wb_io_output_instruction_address),
    .io_output_alu_result(mem2wb_io_output_alu_result),
    .io_output_regs_write_enable(mem2wb_io_output_regs_write_enable),
    .io_output_regs_write_source(mem2wb_io_output_regs_write_source),
    .io_output_regs_write_address(mem2wb_io_output_regs_write_address),
    .io_output_memory_read_data(mem2wb_io_output_memory_read_data),
    .io_output_csr_read_data(mem2wb_io_output_csr_read_data)
  );
  WriteBack wb ( // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 22:26]
    .io_instruction_address(wb_io_instruction_address),
    .io_alu_result(wb_io_alu_result),
    .io_memory_read_data(wb_io_memory_read_data),
    .io_regs_write_source(wb_io_regs_write_source),
    .io_csr_read_data(wb_io_csr_read_data),
    .io_regs_write_data(wb_io_regs_write_data)
  );
  Forwarding forwarding ( // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 23:26]
    .io_rs1_ex(forwarding_io_rs1_ex),
    .io_rs2_ex(forwarding_io_rs2_ex),
    .io_rd_mem(forwarding_io_rd_mem),
    .io_reg_write_enable_mem(forwarding_io_reg_write_enable_mem),
    .io_rd_wb(forwarding_io_rd_wb),
    .io_reg_write_enable_wb(forwarding_io_reg_write_enable_wb),
    .io_reg1_forward_ex(forwarding_io_reg1_forward_ex),
    .io_reg2_forward_ex(forwarding_io_reg2_forward_ex)
  );
  CLINT clint ( // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 24:26]
    .clock(clint_clock),
    .io_interrupt_flag(clint_io_interrupt_flag),
    .io_instruction_ex(clint_io_instruction_ex),
    .io_instruction_address_if(clint_io_instruction_address_if),
    .io_instruction_address_id(clint_io_instruction_address_id),
    .io_jump_flag(clint_io_jump_flag),
    .io_jump_address(clint_io_jump_address),
    .io_ex_interrupt_handler_address(clint_io_ex_interrupt_handler_address),
    .io_ex_interrupt_assert(clint_io_ex_interrupt_assert),
    .io_csr_bundle_mstatus(clint_io_csr_bundle_mstatus),
    .io_csr_bundle_mepc(clint_io_csr_bundle_mepc),
    .io_csr_bundle_mcause(clint_io_csr_bundle_mcause),
    .io_csr_bundle_mtvec(clint_io_csr_bundle_mtvec),
    .io_csr_bundle_mstatus_write_data(clint_io_csr_bundle_mstatus_write_data),
    .io_csr_bundle_mepc_write_data(clint_io_csr_bundle_mepc_write_data),
    .io_csr_bundle_mcause_write_data(clint_io_csr_bundle_mcause_write_data),
    .io_csr_bundle_direct_write_enable(clint_io_csr_bundle_direct_write_enable)
  );
  CSR csr_regs ( // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 25:26]
    .clock(csr_regs_clock),
    .reset(csr_regs_reset),
    .io_reg_read_address_id(csr_regs_io_reg_read_address_id),
    .io_reg_write_enable_ex(csr_regs_io_reg_write_enable_ex),
    .io_reg_write_address_ex(csr_regs_io_reg_write_address_ex),
    .io_reg_write_data_ex(csr_regs_io_reg_write_data_ex),
    .io_id_reg_read_data(csr_regs_io_id_reg_read_data),
    .io_clint_access_bundle_mstatus(csr_regs_io_clint_access_bundle_mstatus),
    .io_clint_access_bundle_mepc(csr_regs_io_clint_access_bundle_mepc),
    .io_clint_access_bundle_mcause(csr_regs_io_clint_access_bundle_mcause),
    .io_clint_access_bundle_mtvec(csr_regs_io_clint_access_bundle_mtvec),
    .io_clint_access_bundle_mstatus_write_data(csr_regs_io_clint_access_bundle_mstatus_write_data),
    .io_clint_access_bundle_mepc_write_data(csr_regs_io_clint_access_bundle_mepc_write_data),
    .io_clint_access_bundle_mcause_write_data(csr_regs_io_clint_access_bundle_mcause_write_data),
    .io_clint_access_bundle_direct_write_enable(csr_regs_io_clint_access_bundle_direct_write_enable)
  );
  assign io_instruction_address = inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 42:35]
  assign io_memory_bundle_address = {3'h0,mem_io_bundle_address[28:0]}; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 112:70]
  assign io_memory_bundle_write_data = mem_io_bundle_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 111:20]
  assign io_memory_bundle_write_enable = mem_io_bundle_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 111:20]
  assign io_memory_bundle_write_strobe_0 = mem_io_bundle_write_strobe_0; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 111:20]
  assign io_memory_bundle_write_strobe_1 = mem_io_bundle_write_strobe_1; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 111:20]
  assign io_memory_bundle_write_strobe_2 = mem_io_bundle_write_strobe_2; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 111:20]
  assign io_memory_bundle_write_strobe_3 = mem_io_bundle_write_strobe_3; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 111:20]
  assign io_debug_read_data = regs_io_debug_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 40:30]
  assign ctrl_io_jump_flag = ex_io_if_jump_flag; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 27:33]
  assign ctrl_io_rs1_id = id_io_regs_reg1_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 28:33]
  assign ctrl_io_rs2_id = id_io_regs_reg2_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 29:33]
  assign ctrl_io_memory_read_enable_ex = id2ex_io_output_memory_read_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 30:33]
  assign ctrl_io_rd_ex = id2ex_io_output_regs_write_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 31:33]
  assign regs_clock = clock;
  assign regs_reset = reset;
  assign regs_io_write_enable = mem2wb_io_output_regs_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 33:25]
  assign regs_io_write_address = mem2wb_io_output_regs_write_address[4:0]; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 34:25]
  assign regs_io_write_data = wb_io_regs_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 35:25]
  assign regs_io_read_address1 = id_io_regs_reg1_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 36:25]
  assign regs_io_read_address2 = id_io_regs_reg2_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 37:25]
  assign regs_io_debug_read_address = io_debug_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 39:30]
  assign inst_fetch_clock = clock;
  assign inst_fetch_reset = reset;
  assign inst_fetch_io_stall_flag_ctrl = ctrl_io_pc_stall; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 43:35]
  assign inst_fetch_io_jump_flag_id = ex_io_if_jump_flag; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 44:35]
  assign inst_fetch_io_jump_address_id = ex_io_if_jump_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 45:35]
  assign inst_fetch_io_rom_instruction = io_instruction; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 46:35]
  assign inst_fetch_io_instruction_valid = io_instruction_valid; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 47:35]
  assign if2id_clock = clock;
  assign if2id_reset = reset;
  assign if2id_io_stall = ctrl_io_if_stall; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 49:32]
  assign if2id_io_flush = ctrl_io_if_flush; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 50:32]
  assign if2id_io_instruction = inst_fetch_io_id_instruction; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 51:32]
  assign if2id_io_instruction_address = inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 52:32]
  assign id_io_instruction = if2id_io_output_instruction; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 55:21]
  assign id2ex_clock = clock;
  assign id2ex_reset = reset;
  assign id2ex_io_flush = ctrl_io_id_flush; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 57:35]
  assign id2ex_io_instruction = if2id_io_output_instruction; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 58:35]
  assign id2ex_io_instruction_address = if2id_io_output_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 59:35]
  assign id2ex_io_regs_reg1_read_address = id_io_regs_reg1_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 62:35]
  assign id2ex_io_regs_reg2_read_address = id_io_regs_reg2_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 63:35]
  assign id2ex_io_regs_write_enable = id_io_ex_reg_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 64:35]
  assign id2ex_io_regs_write_address = id_io_ex_reg_write_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 65:35]
  assign id2ex_io_regs_write_source = id_io_ex_reg_write_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 66:35]
  assign id2ex_io_reg1_data = regs_io_read_data1; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 60:35]
  assign id2ex_io_reg2_data = regs_io_read_data2; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 61:35]
  assign id2ex_io_immediate = id_io_ex_immediate; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 67:35]
  assign id2ex_io_aluop1_source = id_io_ex_aluop1_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 68:35]
  assign id2ex_io_aluop2_source = id_io_ex_aluop2_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 69:35]
  assign id2ex_io_csr_write_enable = id_io_ex_csr_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 70:35]
  assign id2ex_io_csr_address = id_io_ex_csr_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 71:35]
  assign id2ex_io_memory_read_enable = id_io_ex_memory_read_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 72:35]
  assign id2ex_io_memory_write_enable = id_io_ex_memory_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 73:35]
  assign id2ex_io_csr_read_data = csr_regs_io_id_reg_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 74:35]
  assign ex_io_instruction = id2ex_io_output_instruction; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 76:41]
  assign ex_io_instruction_address = id2ex_io_output_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 77:41]
  assign ex_io_reg1_data = id2ex_io_output_reg1_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 78:41]
  assign ex_io_reg2_data = id2ex_io_output_reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 79:41]
  assign ex_io_immediate_id = id2ex_io_output_immediate; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 80:41]
  assign ex_io_aluop1_source_id = id2ex_io_output_aluop1_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 81:41]
  assign ex_io_aluop2_source_id = id2ex_io_output_aluop2_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 82:41]
  assign ex_io_csr_read_data_id = id2ex_io_output_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 83:41]
  assign ex_io_forward_from_mem = mem_io_forward_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 84:41]
  assign ex_io_forward_from_wb = wb_io_regs_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 85:41]
  assign ex_io_reg1_forward = forwarding_io_reg1_forward_ex; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 86:41]
  assign ex_io_reg2_forward = forwarding_io_reg2_forward_ex; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 87:41]
  assign ex_io_interrupt_assert_clint = clint_io_ex_interrupt_assert; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 88:41]
  assign ex_io_interrupt_handler_address_clint = clint_io_ex_interrupt_handler_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 89:41]
  assign ex2mem_clock = clock;
  assign ex2mem_reset = reset;
  assign ex2mem_io_regs_write_enable = id2ex_io_output_regs_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 91:33]
  assign ex2mem_io_regs_write_source = id2ex_io_output_regs_write_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 92:33]
  assign ex2mem_io_regs_write_address = {{27'd0}, id2ex_io_output_regs_write_address}; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 93:33]
  assign ex2mem_io_instruction_address = id2ex_io_output_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 94:33]
  assign ex2mem_io_funct3 = id2ex_io_output_instruction[14:12]; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 95:63]
  assign ex2mem_io_reg2_data = ex_io_mem_reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 96:33]
  assign ex2mem_io_memory_read_enable = id2ex_io_output_memory_read_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 97:33]
  assign ex2mem_io_memory_write_enable = id2ex_io_output_memory_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 98:33]
  assign ex2mem_io_alu_result = ex_io_mem_alu_result; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 99:33]
  assign ex2mem_io_csr_read_data = id2ex_io_output_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 100:33]
  assign mem_io_alu_result = ex2mem_io_output_alu_result; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 102:30]
  assign mem_io_reg2_data = ex2mem_io_output_reg2_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 103:30]
  assign mem_io_memory_read_enable = ex2mem_io_output_memory_read_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 104:30]
  assign mem_io_memory_write_enable = ex2mem_io_output_memory_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 105:30]
  assign mem_io_funct3 = ex2mem_io_output_funct3[2:0]; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 106:30]
  assign mem_io_regs_write_source = ex2mem_io_output_regs_write_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 107:30]
  assign mem_io_csr_read_data = ex2mem_io_output_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 108:30]
  assign mem_io_bundle_read_data = io_memory_bundle_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 111:20]
  assign mem2wb_clock = clock;
  assign mem2wb_reset = reset;
  assign mem2wb_io_instruction_address = ex2mem_io_output_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 115:33]
  assign mem2wb_io_alu_result = ex2mem_io_output_alu_result; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 116:33]
  assign mem2wb_io_regs_write_enable = ex2mem_io_output_regs_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 117:33]
  assign mem2wb_io_regs_write_source = ex2mem_io_output_regs_write_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 118:33]
  assign mem2wb_io_regs_write_address = ex2mem_io_output_regs_write_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 119:33]
  assign mem2wb_io_memory_read_data = mem_io_wb_memory_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 120:33]
  assign mem2wb_io_csr_read_data = ex2mem_io_output_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 121:33]
  assign wb_io_instruction_address = mem2wb_io_output_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 123:29]
  assign wb_io_alu_result = mem2wb_io_output_alu_result; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 124:29]
  assign wb_io_memory_read_data = mem2wb_io_output_memory_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 125:29]
  assign wb_io_regs_write_source = mem2wb_io_output_regs_write_source; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 126:29]
  assign wb_io_csr_read_data = mem2wb_io_output_csr_read_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 127:29]
  assign forwarding_io_rs1_ex = id2ex_io_output_regs_reg1_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 129:38]
  assign forwarding_io_rs2_ex = id2ex_io_output_regs_reg2_read_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 130:38]
  assign forwarding_io_rd_mem = ex2mem_io_output_regs_write_address[4:0]; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 131:38]
  assign forwarding_io_reg_write_enable_mem = ex2mem_io_output_regs_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 132:38]
  assign forwarding_io_rd_wb = mem2wb_io_output_regs_write_address[4:0]; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 133:38]
  assign forwarding_io_reg_write_enable_wb = mem2wb_io_output_regs_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 134:38]
  assign clint_clock = clock;
  assign clint_io_interrupt_flag = if2id_io_output_interrupt_flag; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 141:35]
  assign clint_io_instruction_ex = id2ex_io_output_instruction; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 138:35]
  assign clint_io_instruction_address_if = inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 136:35]
  assign clint_io_instruction_address_id = if2id_io_output_instruction_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 137:35]
  assign clint_io_jump_flag = ex_io_clint_jump_flag; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 139:35]
  assign clint_io_jump_address = ex_io_clint_jump_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 140:35]
  assign clint_io_csr_bundle_mstatus = csr_regs_io_clint_access_bundle_mstatus; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 142:23]
  assign clint_io_csr_bundle_mepc = csr_regs_io_clint_access_bundle_mepc; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 142:23]
  assign clint_io_csr_bundle_mcause = csr_regs_io_clint_access_bundle_mcause; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 142:23]
  assign clint_io_csr_bundle_mtvec = csr_regs_io_clint_access_bundle_mtvec; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 142:23]
  assign csr_regs_clock = clock;
  assign csr_regs_reset = reset;
  assign csr_regs_io_reg_read_address_id = id_io_ex_csr_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 144:36]
  assign csr_regs_io_reg_write_enable_ex = id2ex_io_output_csr_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 145:36]
  assign csr_regs_io_reg_write_address_ex = id2ex_io_output_csr_address; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 146:36]
  assign csr_regs_io_reg_write_data_ex = ex_io_csr_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 147:36]
  assign csr_regs_io_clint_access_bundle_mstatus_write_data = clint_io_csr_bundle_mstatus_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 142:23]
  assign csr_regs_io_clint_access_bundle_mepc_write_data = clint_io_csr_bundle_mepc_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 142:23]
  assign csr_regs_io_clint_access_bundle_mcause_write_data = clint_io_csr_bundle_mcause_write_data; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 142:23]
  assign csr_regs_io_clint_access_bundle_direct_write_enable = clint_io_csr_bundle_direct_write_enable; // @[src/main/scala/riscv/core/fivestage_forward/CPU.scala 142:23]
endmodule
module CPU_1(
  input         clock,
  input         reset,
  output [31:0] io_instruction_address, // @[src/main/scala/riscv/core/CPU.scala 11:14]
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/CPU.scala 11:14]
  input         io_instruction_valid, // @[src/main/scala/riscv/core/CPU.scala 11:14]
  output [31:0] io_memory_bundle_address, // @[src/main/scala/riscv/core/CPU.scala 11:14]
  output [31:0] io_memory_bundle_write_data, // @[src/main/scala/riscv/core/CPU.scala 11:14]
  output        io_memory_bundle_write_enable, // @[src/main/scala/riscv/core/CPU.scala 11:14]
  output        io_memory_bundle_write_strobe_0, // @[src/main/scala/riscv/core/CPU.scala 11:14]
  output        io_memory_bundle_write_strobe_1, // @[src/main/scala/riscv/core/CPU.scala 11:14]
  output        io_memory_bundle_write_strobe_2, // @[src/main/scala/riscv/core/CPU.scala 11:14]
  output        io_memory_bundle_write_strobe_3, // @[src/main/scala/riscv/core/CPU.scala 11:14]
  input  [31:0] io_memory_bundle_read_data, // @[src/main/scala/riscv/core/CPU.scala 11:14]
  input  [4:0]  io_debug_read_address, // @[src/main/scala/riscv/core/CPU.scala 11:14]
  output [31:0] io_debug_read_data // @[src/main/scala/riscv/core/CPU.scala 11:14]
);
  wire  cpu_clock; // @[src/main/scala/riscv/core/CPU.scala 20:23]
  wire  cpu_reset; // @[src/main/scala/riscv/core/CPU.scala 20:23]
  wire [31:0] cpu_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 20:23]
  wire [31:0] cpu_io_instruction; // @[src/main/scala/riscv/core/CPU.scala 20:23]
  wire  cpu_io_instruction_valid; // @[src/main/scala/riscv/core/CPU.scala 20:23]
  wire [31:0] cpu_io_memory_bundle_address; // @[src/main/scala/riscv/core/CPU.scala 20:23]
  wire [31:0] cpu_io_memory_bundle_write_data; // @[src/main/scala/riscv/core/CPU.scala 20:23]
  wire  cpu_io_memory_bundle_write_enable; // @[src/main/scala/riscv/core/CPU.scala 20:23]
  wire  cpu_io_memory_bundle_write_strobe_0; // @[src/main/scala/riscv/core/CPU.scala 20:23]
  wire  cpu_io_memory_bundle_write_strobe_1; // @[src/main/scala/riscv/core/CPU.scala 20:23]
  wire  cpu_io_memory_bundle_write_strobe_2; // @[src/main/scala/riscv/core/CPU.scala 20:23]
  wire  cpu_io_memory_bundle_write_strobe_3; // @[src/main/scala/riscv/core/CPU.scala 20:23]
  wire [31:0] cpu_io_memory_bundle_read_data; // @[src/main/scala/riscv/core/CPU.scala 20:23]
  wire [4:0] cpu_io_debug_read_address; // @[src/main/scala/riscv/core/CPU.scala 20:23]
  wire [31:0] cpu_io_debug_read_data; // @[src/main/scala/riscv/core/CPU.scala 20:23]
  CPU cpu ( // @[src/main/scala/riscv/core/CPU.scala 20:23]
    .clock(cpu_clock),
    .reset(cpu_reset),
    .io_instruction_address(cpu_io_instruction_address),
    .io_instruction(cpu_io_instruction),
    .io_instruction_valid(cpu_io_instruction_valid),
    .io_memory_bundle_address(cpu_io_memory_bundle_address),
    .io_memory_bundle_write_data(cpu_io_memory_bundle_write_data),
    .io_memory_bundle_write_enable(cpu_io_memory_bundle_write_enable),
    .io_memory_bundle_write_strobe_0(cpu_io_memory_bundle_write_strobe_0),
    .io_memory_bundle_write_strobe_1(cpu_io_memory_bundle_write_strobe_1),
    .io_memory_bundle_write_strobe_2(cpu_io_memory_bundle_write_strobe_2),
    .io_memory_bundle_write_strobe_3(cpu_io_memory_bundle_write_strobe_3),
    .io_memory_bundle_read_data(cpu_io_memory_bundle_read_data),
    .io_debug_read_address(cpu_io_debug_read_address),
    .io_debug_read_data(cpu_io_debug_read_data)
  );
  assign io_instruction_address = cpu_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 21:14]
  assign io_memory_bundle_address = cpu_io_memory_bundle_address; // @[src/main/scala/riscv/core/CPU.scala 21:14]
  assign io_memory_bundle_write_data = cpu_io_memory_bundle_write_data; // @[src/main/scala/riscv/core/CPU.scala 21:14]
  assign io_memory_bundle_write_enable = cpu_io_memory_bundle_write_enable; // @[src/main/scala/riscv/core/CPU.scala 21:14]
  assign io_memory_bundle_write_strobe_0 = cpu_io_memory_bundle_write_strobe_0; // @[src/main/scala/riscv/core/CPU.scala 21:14]
  assign io_memory_bundle_write_strobe_1 = cpu_io_memory_bundle_write_strobe_1; // @[src/main/scala/riscv/core/CPU.scala 21:14]
  assign io_memory_bundle_write_strobe_2 = cpu_io_memory_bundle_write_strobe_2; // @[src/main/scala/riscv/core/CPU.scala 21:14]
  assign io_memory_bundle_write_strobe_3 = cpu_io_memory_bundle_write_strobe_3; // @[src/main/scala/riscv/core/CPU.scala 21:14]
  assign io_debug_read_data = cpu_io_debug_read_data; // @[src/main/scala/riscv/core/CPU.scala 21:14]
  assign cpu_clock = clock;
  assign cpu_reset = reset;
  assign cpu_io_instruction = io_instruction; // @[src/main/scala/riscv/core/CPU.scala 21:14]
  assign cpu_io_instruction_valid = io_instruction_valid; // @[src/main/scala/riscv/core/CPU.scala 21:14]
  assign cpu_io_memory_bundle_read_data = io_memory_bundle_read_data; // @[src/main/scala/riscv/core/CPU.scala 21:14]
  assign cpu_io_debug_read_address = io_debug_read_address; // @[src/main/scala/riscv/core/CPU.scala 21:14]
endmodule
module TestTopModule(
  input         clock,
  input         reset,
  input  [4:0]  io_regs_debug_read_address, // @[src/test/scala/riscv/TestTopModule.scala 10:14]
  input  [31:0] io_mem_debug_read_address, // @[src/test/scala/riscv/TestTopModule.scala 10:14]
  output [31:0] io_regs_debug_read_data, // @[src/test/scala/riscv/TestTopModule.scala 10:14]
  output [31:0] io_mem_debug_read_data // @[src/test/scala/riscv/TestTopModule.scala 10:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  mem_clock; // @[src/test/scala/riscv/TestTopModule.scala 18:31]
  wire [31:0] mem_io_bundle_address; // @[src/test/scala/riscv/TestTopModule.scala 18:31]
  wire [31:0] mem_io_bundle_write_data; // @[src/test/scala/riscv/TestTopModule.scala 18:31]
  wire  mem_io_bundle_write_enable; // @[src/test/scala/riscv/TestTopModule.scala 18:31]
  wire  mem_io_bundle_write_strobe_0; // @[src/test/scala/riscv/TestTopModule.scala 18:31]
  wire  mem_io_bundle_write_strobe_1; // @[src/test/scala/riscv/TestTopModule.scala 18:31]
  wire  mem_io_bundle_write_strobe_2; // @[src/test/scala/riscv/TestTopModule.scala 18:31]
  wire  mem_io_bundle_write_strobe_3; // @[src/test/scala/riscv/TestTopModule.scala 18:31]
  wire [31:0] mem_io_bundle_read_data; // @[src/test/scala/riscv/TestTopModule.scala 18:31]
  wire [31:0] mem_io_instruction; // @[src/test/scala/riscv/TestTopModule.scala 18:31]
  wire [31:0] mem_io_instruction_address; // @[src/test/scala/riscv/TestTopModule.scala 18:31]
  wire [31:0] mem_io_debug_read_address; // @[src/test/scala/riscv/TestTopModule.scala 18:31]
  wire [31:0] mem_io_debug_read_data; // @[src/test/scala/riscv/TestTopModule.scala 18:31]
  wire  instruction_rom_clock; // @[src/test/scala/riscv/TestTopModule.scala 19:31]
  wire [31:0] instruction_rom_io_address; // @[src/test/scala/riscv/TestTopModule.scala 19:31]
  wire [31:0] instruction_rom_io_data; // @[src/test/scala/riscv/TestTopModule.scala 19:31]
  wire  rom_loader_clock; // @[src/test/scala/riscv/TestTopModule.scala 20:31]
  wire  rom_loader_reset; // @[src/test/scala/riscv/TestTopModule.scala 20:31]
  wire [31:0] rom_loader_io_bundle_address; // @[src/test/scala/riscv/TestTopModule.scala 20:31]
  wire [31:0] rom_loader_io_bundle_write_data; // @[src/test/scala/riscv/TestTopModule.scala 20:31]
  wire  rom_loader_io_bundle_write_enable; // @[src/test/scala/riscv/TestTopModule.scala 20:31]
  wire  rom_loader_io_bundle_write_strobe_0; // @[src/test/scala/riscv/TestTopModule.scala 20:31]
  wire  rom_loader_io_bundle_write_strobe_1; // @[src/test/scala/riscv/TestTopModule.scala 20:31]
  wire  rom_loader_io_bundle_write_strobe_2; // @[src/test/scala/riscv/TestTopModule.scala 20:31]
  wire  rom_loader_io_bundle_write_strobe_3; // @[src/test/scala/riscv/TestTopModule.scala 20:31]
  wire [31:0] rom_loader_io_rom_address; // @[src/test/scala/riscv/TestTopModule.scala 20:31]
  wire [31:0] rom_loader_io_rom_data; // @[src/test/scala/riscv/TestTopModule.scala 20:31]
  wire  rom_loader_io_load_finished; // @[src/test/scala/riscv/TestTopModule.scala 20:31]
  wire  cpu_clock; // @[src/test/scala/riscv/TestTopModule.scala 34:21]
  wire  cpu_reset; // @[src/test/scala/riscv/TestTopModule.scala 34:21]
  wire [31:0] cpu_io_instruction_address; // @[src/test/scala/riscv/TestTopModule.scala 34:21]
  wire [31:0] cpu_io_instruction; // @[src/test/scala/riscv/TestTopModule.scala 34:21]
  wire  cpu_io_instruction_valid; // @[src/test/scala/riscv/TestTopModule.scala 34:21]
  wire [31:0] cpu_io_memory_bundle_address; // @[src/test/scala/riscv/TestTopModule.scala 34:21]
  wire [31:0] cpu_io_memory_bundle_write_data; // @[src/test/scala/riscv/TestTopModule.scala 34:21]
  wire  cpu_io_memory_bundle_write_enable; // @[src/test/scala/riscv/TestTopModule.scala 34:21]
  wire  cpu_io_memory_bundle_write_strobe_0; // @[src/test/scala/riscv/TestTopModule.scala 34:21]
  wire  cpu_io_memory_bundle_write_strobe_1; // @[src/test/scala/riscv/TestTopModule.scala 34:21]
  wire  cpu_io_memory_bundle_write_strobe_2; // @[src/test/scala/riscv/TestTopModule.scala 34:21]
  wire  cpu_io_memory_bundle_write_strobe_3; // @[src/test/scala/riscv/TestTopModule.scala 34:21]
  wire [31:0] cpu_io_memory_bundle_read_data; // @[src/test/scala/riscv/TestTopModule.scala 34:21]
  wire [4:0] cpu_io_debug_read_address; // @[src/test/scala/riscv/TestTopModule.scala 34:21]
  wire [31:0] cpu_io_debug_read_data; // @[src/test/scala/riscv/TestTopModule.scala 34:21]
  reg [1:0] CPU_clkdiv; // @[src/test/scala/riscv/TestTopModule.scala 26:27]
  wire [1:0] _CPU_next_T_2 = CPU_clkdiv + 2'h1; // @[src/test/scala/riscv/TestTopModule.scala 29:57]
  Memory mem ( // @[src/test/scala/riscv/TestTopModule.scala 18:31]
    .clock(mem_clock),
    .io_bundle_address(mem_io_bundle_address),
    .io_bundle_write_data(mem_io_bundle_write_data),
    .io_bundle_write_enable(mem_io_bundle_write_enable),
    .io_bundle_write_strobe_0(mem_io_bundle_write_strobe_0),
    .io_bundle_write_strobe_1(mem_io_bundle_write_strobe_1),
    .io_bundle_write_strobe_2(mem_io_bundle_write_strobe_2),
    .io_bundle_write_strobe_3(mem_io_bundle_write_strobe_3),
    .io_bundle_read_data(mem_io_bundle_read_data),
    .io_instruction(mem_io_instruction),
    .io_instruction_address(mem_io_instruction_address),
    .io_debug_read_address(mem_io_debug_read_address),
    .io_debug_read_data(mem_io_debug_read_data)
  );
  InstructionROM instruction_rom ( // @[src/test/scala/riscv/TestTopModule.scala 19:31]
    .clock(instruction_rom_clock),
    .io_address(instruction_rom_io_address),
    .io_data(instruction_rom_io_data)
  );
  ROMLoader rom_loader ( // @[src/test/scala/riscv/TestTopModule.scala 20:31]
    .clock(rom_loader_clock),
    .reset(rom_loader_reset),
    .io_bundle_address(rom_loader_io_bundle_address),
    .io_bundle_write_data(rom_loader_io_bundle_write_data),
    .io_bundle_write_enable(rom_loader_io_bundle_write_enable),
    .io_bundle_write_strobe_0(rom_loader_io_bundle_write_strobe_0),
    .io_bundle_write_strobe_1(rom_loader_io_bundle_write_strobe_1),
    .io_bundle_write_strobe_2(rom_loader_io_bundle_write_strobe_2),
    .io_bundle_write_strobe_3(rom_loader_io_bundle_write_strobe_3),
    .io_rom_address(rom_loader_io_rom_address),
    .io_rom_data(rom_loader_io_rom_data),
    .io_load_finished(rom_loader_io_load_finished)
  );
  CPU_1 cpu ( // @[src/test/scala/riscv/TestTopModule.scala 34:21]
    .clock(cpu_clock),
    .reset(cpu_reset),
    .io_instruction_address(cpu_io_instruction_address),
    .io_instruction(cpu_io_instruction),
    .io_instruction_valid(cpu_io_instruction_valid),
    .io_memory_bundle_address(cpu_io_memory_bundle_address),
    .io_memory_bundle_write_data(cpu_io_memory_bundle_write_data),
    .io_memory_bundle_write_enable(cpu_io_memory_bundle_write_enable),
    .io_memory_bundle_write_strobe_0(cpu_io_memory_bundle_write_strobe_0),
    .io_memory_bundle_write_strobe_1(cpu_io_memory_bundle_write_strobe_1),
    .io_memory_bundle_write_strobe_2(cpu_io_memory_bundle_write_strobe_2),
    .io_memory_bundle_write_strobe_3(cpu_io_memory_bundle_write_strobe_3),
    .io_memory_bundle_read_data(cpu_io_memory_bundle_read_data),
    .io_debug_read_address(cpu_io_debug_read_address),
    .io_debug_read_data(cpu_io_debug_read_data)
  );
  assign io_regs_debug_read_data = cpu_io_debug_read_data; // @[src/test/scala/riscv/TestTopModule.scala 50:31]
  assign io_mem_debug_read_data = mem_io_debug_read_data; // @[src/test/scala/riscv/TestTopModule.scala 54:29]
  assign mem_clock = clock;
  assign mem_io_bundle_address = ~rom_loader_io_load_finished ? rom_loader_io_bundle_address :
    cpu_io_memory_bundle_address; // @[src/test/scala/riscv/TestTopModule.scala 41:40 42:28 46:28]
  assign mem_io_bundle_write_data = ~rom_loader_io_load_finished ? rom_loader_io_bundle_write_data :
    cpu_io_memory_bundle_write_data; // @[src/test/scala/riscv/TestTopModule.scala 41:40 42:28 46:28]
  assign mem_io_bundle_write_enable = ~rom_loader_io_load_finished ? rom_loader_io_bundle_write_enable :
    cpu_io_memory_bundle_write_enable; // @[src/test/scala/riscv/TestTopModule.scala 41:40 42:28 46:28]
  assign mem_io_bundle_write_strobe_0 = ~rom_loader_io_load_finished ? rom_loader_io_bundle_write_strobe_0 :
    cpu_io_memory_bundle_write_strobe_0; // @[src/test/scala/riscv/TestTopModule.scala 41:40 42:28 46:28]
  assign mem_io_bundle_write_strobe_1 = ~rom_loader_io_load_finished ? rom_loader_io_bundle_write_strobe_1 :
    cpu_io_memory_bundle_write_strobe_1; // @[src/test/scala/riscv/TestTopModule.scala 41:40 42:28 46:28]
  assign mem_io_bundle_write_strobe_2 = ~rom_loader_io_load_finished ? rom_loader_io_bundle_write_strobe_2 :
    cpu_io_memory_bundle_write_strobe_2; // @[src/test/scala/riscv/TestTopModule.scala 41:40 42:28 46:28]
  assign mem_io_bundle_write_strobe_3 = ~rom_loader_io_load_finished ? rom_loader_io_bundle_write_strobe_3 :
    cpu_io_memory_bundle_write_strobe_3; // @[src/test/scala/riscv/TestTopModule.scala 41:40 42:28 46:28]
  assign mem_io_instruction_address = cpu_io_instruction_address; // @[src/test/scala/riscv/TestTopModule.scala 37:32]
  assign mem_io_debug_read_address = io_mem_debug_read_address; // @[src/test/scala/riscv/TestTopModule.scala 53:29]
  assign instruction_rom_clock = clock;
  assign instruction_rom_io_address = rom_loader_io_rom_address; // @[src/test/scala/riscv/TestTopModule.scala 24:30]
  assign rom_loader_clock = clock;
  assign rom_loader_reset = reset;
  assign rom_loader_io_rom_data = instruction_rom_io_data; // @[src/test/scala/riscv/TestTopModule.scala 22:30]
  assign cpu_clock = CPU_clkdiv == 2'h0; // @[src/test/scala/riscv/TestTopModule.scala 33:22]
  assign cpu_reset = reset;
  assign cpu_io_instruction = mem_io_instruction; // @[src/test/scala/riscv/TestTopModule.scala 38:32]
  assign cpu_io_instruction_valid = rom_loader_io_load_finished; // @[src/test/scala/riscv/TestTopModule.scala 36:32]
  assign cpu_io_memory_bundle_read_data = ~rom_loader_io_load_finished ? 32'h0 : mem_io_bundle_read_data; // @[src/test/scala/riscv/TestTopModule.scala 41:40 43:38 46:28]
  assign cpu_io_debug_read_address = io_regs_debug_read_address; // @[src/test/scala/riscv/TestTopModule.scala 49:31]
  always @(posedge clock) begin
    if (reset) begin // @[src/test/scala/riscv/TestTopModule.scala 26:27]
      CPU_clkdiv <= 2'h0; // @[src/test/scala/riscv/TestTopModule.scala 26:27]
    end else if (CPU_clkdiv == 2'h3) begin // @[src/test/scala/riscv/TestTopModule.scala 29:20]
      CPU_clkdiv <= 2'h0;
    end else begin
      CPU_clkdiv <= _CPU_next_T_2;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  CPU_clkdiv = _RAND_0[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
