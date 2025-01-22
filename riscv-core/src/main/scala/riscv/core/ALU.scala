package riscv.core

import chisel3._
import chisel3.experimental.ChiselEnum
import chisel3.util._
import riscv.Parameters

object ALUFunctions extends ChiselEnum {
  val zero, add, sub, sll, slt, xor, or, and, srl, sra, sltu, mul, mulh, mulhsu, mulhu, div , divu, rem, remu,jb  = Value
}

class ALU extends Module {
  val io = IO(new Bundle {
    val func = Input(ALUFunctions())

    val op1 = Input(UInt(Parameters.DataWidth))
    val op2 = Input(UInt(Parameters.DataWidth))

    val result = Output(UInt(Parameters.DataWidth))
  })

  io.result := 0.U
  switch(io.func) {
    is(ALUFunctions.add) {
      io.result := io.op1 + io.op2
    }
    is(ALUFunctions.sub) {
      io.result := io.op1 - io.op2
    }
    is(ALUFunctions.sll) {
      io.result := io.op1 << io.op2(4, 0)
    }
    is(ALUFunctions.slt) {
      io.result := io.op1.asSInt < io.op2.asSInt
    }
    is(ALUFunctions.xor) {
      io.result := io.op1 ^ io.op2
    }
    is(ALUFunctions.or) {
      io.result := io.op1 | io.op2
    }
    is(ALUFunctions.and) {
      io.result := io.op1 & io.op2
    }
    is(ALUFunctions.srl) {
      io.result := io.op1 >> io.op2(4, 0)
    }
    is(ALUFunctions.sra) {
      io.result := (io.op1.asSInt >> io.op2(4, 0)).asUInt
    }
    is(ALUFunctions.sltu) {
      io.result := io.op1 < io.op2
    }
    is(ALUFunctions.mul) {
      io.result := (io.op1 * io.op2)(31, 0)
    }
    is(ALUFunctions.mulh) {
      io.result := (io.op1.asSInt * io.op2.asSInt >> 32).asUInt
    }
    is(ALUFunctions.mulhsu) {
      io.result := ((io.op1.asSInt *io.op2) >> 32).asUInt  
    }
    is(ALUFunctions.mulhu) {
        io.result := ((io.op1 * io.op2 ) >> 32).asUInt
    }
    is(ALUFunctions.div) {
  io.result := Mux(io.op2 === 0.U, "hFFFFFFFF".U, (io.op1.asSInt / io.op2.asSInt).asUInt)  // 有符號除法，防止除以零
    }
    is(ALUFunctions.divu) {
  io.result := Mux(io.op2 === 0.U, "hFFFFFFFF".U, io.op1 / io.op2)  // 無符號除法 // 無符號除法
    }  
    is(ALUFunctions.rem) {
  io.result := Mux(io.op2 === 0.U, io.op1, (io.op1.asSInt % io.op2.asSInt).asUInt)  // 餘數
    }
    is(ALUFunctions.remu) {
  io.result := Mux(io.op2 === 0.U, io.op1, io.op1 % io.op2)  // 無符號餘數
    }   
    is(ALUFunctions.jb) {
      io.result := (io.op1 + io.op2)
    }
  }
}