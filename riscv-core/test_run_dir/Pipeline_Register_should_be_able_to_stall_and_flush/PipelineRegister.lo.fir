FIRRTL version 1.2.0
circuit PipelineRegister :
  module PipelineRegister :
    input clock : Clock
    input reset : UInt<1>
    input io_stall : UInt<1> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    input io_flush : UInt<1> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    input io_in : UInt<32> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    output io_out : UInt<32> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<32>, clock with :
      reset => (UInt<1>("h0"), myreg) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<32>, clock with :
      reset => (UInt<1>("h0"), out) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    node _GEN_0 = mux(io_stall, myreg, io_in) @[src/main/scala/riscv/core/PipelineRegister.scala 19:25 20:11 24:13]
    node _GEN_1 = mux(io_flush, UInt<32>("h6197adc9"), _GEN_0) @[src/main/scala/riscv/core/PipelineRegister.scala 15:18 16:11]
    io_out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
    myreg <= mux(reset, UInt<32>("h6197adc9"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 13:{22,22}]
    out <= mux(reset, UInt<32>("h6197adc9"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 14:{22,22}]
