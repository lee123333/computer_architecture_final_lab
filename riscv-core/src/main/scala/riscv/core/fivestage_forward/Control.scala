package riscv.core.fivestage_forward

import chisel3._
import riscv.Parameters

class Control extends Module {
  val io = IO(new Bundle {
    val jump_flag             = Input(Bool())                                     // ex.io.if_jump_flag
    val rs1_id                = Input(UInt(Parameters.PhysicalRegisterAddrWidth)) // id.io.regs_reg1_read_address
    val rs2_id                = Input(UInt(Parameters.PhysicalRegisterAddrWidth)) // id.io.regs_reg2_read_address
    val memory_read_enable_ex = Input(Bool())                                     // id2ex.io.output_memory_read_enable
    val rd_ex                 = Input(UInt(Parameters.PhysicalRegisterAddrWidth)) // id2ex.io.output_regs_write_address

    val if_flush = Output(Bool())
    val id_flush = Output(Bool())
    val pc_stall = Output(Bool())
    val if_stall = Output(Bool())
  })

  io.if_flush := false.B
  io.id_flush := false.B
  io.pc_stall := false.B
  io.if_stall := false.B
  when(io.jump_flag) {
    io.if_flush := true.B
    io.id_flush := true.B
  }.elsewhen(io.memory_read_enable_ex && io.rd_ex =/= 0.U && (io.rd_ex === io.rs1_id || io.rd_ex === io.rs2_id)) {
    io.id_flush := true.B
    io.pc_stall := true.B
    io.if_stall := true.B
  }
}
