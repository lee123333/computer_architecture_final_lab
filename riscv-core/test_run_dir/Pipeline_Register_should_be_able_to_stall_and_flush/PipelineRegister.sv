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
      myreg <= 32'h6197adc9; // @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    end else if (io_flush) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      myreg <= 32'h6197adc9; // @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
    end else if (!(io_stall)) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
      myreg <= io_in; // @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    end
    if (reset) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
      out <= 32'h6197adc9; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    end else if (io_flush) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= 32'h6197adc9; // @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
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
