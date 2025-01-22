package riscv.core

import chisel3._
import chisel3.util._
import riscv.core.threestage.InstructionTypes
import riscv.core.threestage.Instructions
import riscv.core.threestage.InstructionsTypeI
import riscv.core.threestage.InstructionsTypeR
import riscv.core.threestage.InstructionsTypeM
class ALUControl extends Module {
  val io = IO(new Bundle {
    val opcode = Input(UInt(7.W))
    val funct3 = Input(UInt(3.W))
    val funct7 = Input(UInt(7.W))

    val alu_funct = Output(ALUFunctions())
  })

  io.alu_funct := ALUFunctions.zero

  switch(io.opcode) {
    is(InstructionTypes.I) {
      io.alu_funct := MuxLookup(
        io.funct3,
        ALUFunctions.zero,
        IndexedSeq(
          InstructionsTypeI.addi  -> ALUFunctions.add,
          InstructionsTypeI.slli  -> ALUFunctions.sll,
          InstructionsTypeI.slti  -> ALUFunctions.slt,
          InstructionsTypeI.sltiu -> ALUFunctions.sltu,
          InstructionsTypeI.xori  -> ALUFunctions.xor,
          InstructionsTypeI.ori   -> ALUFunctions.or,
          InstructionsTypeI.andi  -> ALUFunctions.and,
          InstructionsTypeI.sri   -> Mux(io.funct7(5), ALUFunctions.sra, ALUFunctions.srl)
        ),
      )
    }
    // 因為 M extension 是 R type 的情況, 因此在這部份新增 M extension 的條件
    is(InstructionTypes.RM) {
        when(io.funct7 === "b0000001".U) {
  // 僅處理 M Extension 指令
          io.alu_funct := MuxLookup(
            io.funct3,
            ALUFunctions.zero,
            IndexedSeq(
              InstructionsTypeM.mul     -> ALUFunctions.mul,
              InstructionsTypeM.mulh    -> ALUFunctions.mulh,
              InstructionsTypeM.mulhsu  -> ALUFunctions.mulhsu,  
              InstructionsTypeM.mulhu   -> ALUFunctions.mulhu,  
              InstructionsTypeM.div     -> ALUFunctions.div,
              InstructionsTypeM.divu    -> ALUFunctions.divu,
              InstructionsTypeM.rem     -> ALUFunctions.rem,   
              InstructionsTypeM.remu    -> ALUFunctions.remu
            )
          )
        }.otherwise {
          // 處理 R Type 指令
          io.alu_funct := MuxLookup(
            io.funct3,
            ALUFunctions.zero,
            IndexedSeq(
              InstructionsTypeR.add_sub -> Mux(io.funct7(5), ALUFunctions.sub, ALUFunctions.add),
              InstructionsTypeR.sll     -> ALUFunctions.sll,
              InstructionsTypeR.slt     -> ALUFunctions.slt,
              InstructionsTypeR.sltu    -> ALUFunctions.sltu,
              InstructionsTypeR.xor     -> ALUFunctions.xor,
              InstructionsTypeR.or      -> ALUFunctions.or,
              InstructionsTypeR.and     -> ALUFunctions.and,
              InstructionsTypeR.sr      -> Mux(io.funct7(5), ALUFunctions.sra, ALUFunctions.srl)
            )
          )
        }

    }
    is(InstructionTypes.B) {
      io.alu_funct := ALUFunctions.jb
    }
    is(InstructionTypes.L) {
      io.alu_funct := ALUFunctions.add
    }
    is(InstructionTypes.S) {
      io.alu_funct := ALUFunctions.add
    }
    is(Instructions.jal) {
      io.alu_funct := ALUFunctions.jb
    }
    is(Instructions.jalr) {
      io.alu_funct := ALUFunctions.add
    }
    is(Instructions.lui) {
      io.alu_funct := ALUFunctions.add
    }
    is(Instructions.auipc) {
      io.alu_funct := ALUFunctions.add
    }
  }
}