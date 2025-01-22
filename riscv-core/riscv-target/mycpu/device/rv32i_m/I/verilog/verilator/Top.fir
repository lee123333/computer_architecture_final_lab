FIRRTL version 1.2.0
circuit Top :
  module Control :
    input clock : Clock
    input reset : Reset
    output io : { flip JumpFlag : UInt<1>, Flush : UInt<1>} @[src/main/scala/riscv/core/threestage/Control.scala 6:14]

    io.Flush <= io.JumpFlag @[src/main/scala/riscv/core/threestage/Control.scala 10:12]

  module RegisterFile :
    input clock : Clock
    input reset : Reset
    output io : { flip write_enable : UInt<1>, flip write_address : UInt<5>, flip write_data : UInt<32>, flip read_address1 : UInt<5>, flip read_address2 : UInt<5>, read_data1 : UInt<32>, read_data2 : UInt<32>, flip debug_read_address : UInt<5>, debug_read_data : UInt<32>} @[src/main/scala/riscv/core/RegisterFile.scala 14:14]

    reg registers : UInt<32>[32], clock with :
      reset => (UInt<1>("h0"), registers) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    node _T = asUInt(reset) @[src/main/scala/riscv/core/RegisterFile.scala 29:15]
    node _T_1 = eq(_T, UInt<1>("h0")) @[src/main/scala/riscv/core/RegisterFile.scala 29:8]
    when _T_1 : @[src/main/scala/riscv/core/RegisterFile.scala 29:23]
      node _T_2 = neq(io.write_address, UInt<1>("h0")) @[src/main/scala/riscv/core/RegisterFile.scala 30:46]
      node _T_3 = and(io.write_enable, _T_2) @[src/main/scala/riscv/core/RegisterFile.scala 30:26]
      when _T_3 : @[src/main/scala/riscv/core/RegisterFile.scala 30:55]
        registers[io.write_address] <= io.write_data @[src/main/scala/riscv/core/RegisterFile.scala 31:35]
    node _io_read_data1_T = eq(io.read_address1, UInt<1>("h0")) @[src/main/scala/riscv/core/RegisterFile.scala 38:25]
    node _io_read_data1_T_1 = eq(io.read_address1, io.write_address) @[src/main/scala/riscv/core/RegisterFile.scala 39:25]
    node _io_read_data1_T_2 = and(_io_read_data1_T_1, io.write_enable) @[src/main/scala/riscv/core/RegisterFile.scala 39:46]
    node _io_read_data1_T_3 = mux(_io_read_data1_T_2, io.write_data, registers[io.read_address1]) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    node _io_read_data1_T_4 = mux(_io_read_data1_T, UInt<1>("h0"), _io_read_data1_T_3) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    io.read_data1 <= _io_read_data1_T_4 @[src/main/scala/riscv/core/RegisterFile.scala 35:17]
    node _io_read_data2_T = eq(io.read_address2, UInt<1>("h0")) @[src/main/scala/riscv/core/RegisterFile.scala 46:25]
    node _io_read_data2_T_1 = eq(io.read_address2, io.write_address) @[src/main/scala/riscv/core/RegisterFile.scala 47:25]
    node _io_read_data2_T_2 = and(_io_read_data2_T_1, io.write_enable) @[src/main/scala/riscv/core/RegisterFile.scala 47:46]
    node _io_read_data2_T_3 = mux(_io_read_data2_T_2, io.write_data, registers[io.read_address2]) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    node _io_read_data2_T_4 = mux(_io_read_data2_T, UInt<1>("h0"), _io_read_data2_T_3) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    io.read_data2 <= _io_read_data2_T_4 @[src/main/scala/riscv/core/RegisterFile.scala 43:17]
    node _io_debug_read_data_T = eq(io.debug_read_address, UInt<1>("h0")) @[src/main/scala/riscv/core/RegisterFile.scala 54:30]
    node _io_debug_read_data_T_1 = eq(io.debug_read_address, io.write_address) @[src/main/scala/riscv/core/RegisterFile.scala 55:30]
    node _io_debug_read_data_T_2 = and(_io_debug_read_data_T_1, io.write_enable) @[src/main/scala/riscv/core/RegisterFile.scala 55:51]
    node _io_debug_read_data_T_3 = mux(_io_debug_read_data_T_2, io.write_data, registers[io.debug_read_address]) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    node _io_debug_read_data_T_4 = mux(_io_debug_read_data_T, UInt<1>("h0"), _io_debug_read_data_T_3) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    io.debug_read_data <= _io_debug_read_data_T_4 @[src/main/scala/riscv/core/RegisterFile.scala 51:22]

  module InstructionFetch :
    input clock : Clock
    input reset : Reset
    output io : { flip jump_flag_ex : UInt<1>, flip jump_address_ex : UInt<32>, flip rom_instruction : UInt<32>, flip instruction_valid : UInt<1>, instruction_address : UInt<32>, id_instruction : UInt<32>} @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 12:14]

    reg pc : UInt<32>, clock with :
      reset => (reset, UInt<32>("h1000")) @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 21:19]
    node _pc_T = add(pc, UInt<3>("h4")) @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 27:35]
    node _pc_T_1 = tail(_pc_T, 1) @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 27:35]
    node _pc_T_2 = mux(io.instruction_valid, _pc_T_1, pc) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    node _pc_T_3 = mux(io.jump_flag_ex, io.jump_address_ex, _pc_T_2) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    pc <= _pc_T_3 @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 23:6]
    io.instruction_address <= pc @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 31:26]
    node _io_id_instruction_T = mux(io.instruction_valid, io.rom_instruction, UInt<32>("h13")) @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 32:32]
    io.id_instruction <= _io_id_instruction_T @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 32:26]

  module PipelineRegister :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<32>, out : UInt<32>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<32>, clock with :
      reset => (reset, UInt<32>("h13")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<32>, clock with :
      reset => (reset, UInt<32>("h13")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<32>("h13") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<32>("h13") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<32>, out : UInt<32>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<32>, clock with :
      reset => (reset, UInt<32>("h1000")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<32>, clock with :
      reset => (reset, UInt<32>("h1000")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<32>("h1000") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<32>("h1000") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<32>, out : UInt<32>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module IF2ID :
    input clock : Clock
    input reset : Reset
    output io : { flip flush : UInt<1>, flip instruction : UInt<32>, flip instruction_address : UInt<32>, flip interrupt_flag : UInt<32>, output_instruction : UInt<32>, output_instruction_address : UInt<32>, output_interrupt_flag : UInt<32>} @[src/main/scala/riscv/core/threestage/IF2ID.scala 8:14]

    inst instruction of PipelineRegister @[src/main/scala/riscv/core/threestage/IF2ID.scala 21:27]
    instruction.clock <= clock
    instruction.reset <= reset
    instruction.io.in <= io.instruction @[src/main/scala/riscv/core/threestage/IF2ID.scala 22:25]
    instruction.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/IF2ID.scala 23:25]
    instruction.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/IF2ID.scala 24:25]
    io.output_instruction <= instruction.io.out @[src/main/scala/riscv/core/threestage/IF2ID.scala 25:25]
    inst instruction_address of PipelineRegister_1 @[src/main/scala/riscv/core/threestage/IF2ID.scala 27:35]
    instruction_address.clock <= clock
    instruction_address.reset <= reset
    instruction_address.io.in <= io.instruction_address @[src/main/scala/riscv/core/threestage/IF2ID.scala 28:33]
    instruction_address.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/IF2ID.scala 29:33]
    instruction_address.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/IF2ID.scala 30:33]
    io.output_instruction_address <= instruction_address.io.out @[src/main/scala/riscv/core/threestage/IF2ID.scala 31:33]
    inst interrupt_flag of PipelineRegister_2 @[src/main/scala/riscv/core/threestage/IF2ID.scala 33:30]
    interrupt_flag.clock <= clock
    interrupt_flag.reset <= reset
    interrupt_flag.io.in <= io.interrupt_flag @[src/main/scala/riscv/core/threestage/IF2ID.scala 34:28]
    interrupt_flag.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/IF2ID.scala 35:28]
    interrupt_flag.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/IF2ID.scala 36:28]
    io.output_interrupt_flag <= interrupt_flag.io.out @[src/main/scala/riscv/core/threestage/IF2ID.scala 37:28]

  module InstructionDecode :
    input clock : Clock
    input reset : Reset
    output io : { flip instruction : UInt<32>, regs_reg1_read_address : UInt<5>, regs_reg2_read_address : UInt<5>, ex_immediate : UInt<32>, ex_aluop1_source : UInt<1>, ex_aluop2_source : UInt<1>, ex_memory_read_enable : UInt<1>, ex_memory_write_enable : UInt<1>, ex_reg_write_source : UInt<2>, ex_reg_write_enable : UInt<1>, ex_reg_write_address : UInt<5>, ex_csr_address : UInt<12>, ex_csr_write_enable : UInt<1>} @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 122:14]

    node opcode = bits(io.instruction, 6, 0) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 138:30]
    node funct3 = bits(io.instruction, 14, 12) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 139:30]
    node funct7 = bits(io.instruction, 31, 25) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 140:30]
    node rd = bits(io.instruction, 11, 7) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 141:30]
    node rs1 = bits(io.instruction, 19, 15) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 142:30]
    node rs2 = bits(io.instruction, 24, 20) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 143:30]
    node _io_regs_reg1_read_address_T = eq(opcode, UInt<6>("h37")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 145:43]
    node _io_regs_reg1_read_address_T_1 = mux(_io_regs_reg1_read_address_T, UInt<5>("h0"), rs1) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 145:35]
    io.regs_reg1_read_address <= _io_regs_reg1_read_address_T_1 @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 145:29]
    io.regs_reg2_read_address <= rs2 @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 146:29]
    node _io_ex_immediate_T = bits(io.instruction, 31, 31) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 149:32]
    node _io_ex_immediate_T_1 = bits(_io_ex_immediate_T, 0, 0) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 149:13]
    node _io_ex_immediate_T_2 = mux(_io_ex_immediate_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 149:13]
    node _io_ex_immediate_T_3 = bits(io.instruction, 31, 20) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 149:53]
    node _io_ex_immediate_T_4 = cat(_io_ex_immediate_T_2, _io_ex_immediate_T_3) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 149:8]
    node _io_ex_immediate_T_5 = bits(io.instruction, 31, 31) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 151:56]
    node _io_ex_immediate_T_6 = bits(_io_ex_immediate_T_5, 0, 0) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 151:37]
    node _io_ex_immediate_T_7 = mux(_io_ex_immediate_T_6, UInt<21>("h1fffff"), UInt<21>("h0")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 151:37]
    node _io_ex_immediate_T_8 = bits(io.instruction, 30, 20) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 151:77]
    node _io_ex_immediate_T_9 = cat(_io_ex_immediate_T_7, _io_ex_immediate_T_8) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 151:32]
    node _io_ex_immediate_T_10 = bits(io.instruction, 31, 31) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 152:56]
    node _io_ex_immediate_T_11 = bits(_io_ex_immediate_T_10, 0, 0) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 152:37]
    node _io_ex_immediate_T_12 = mux(_io_ex_immediate_T_11, UInt<21>("h1fffff"), UInt<21>("h0")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 152:37]
    node _io_ex_immediate_T_13 = bits(io.instruction, 30, 20) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 152:77]
    node _io_ex_immediate_T_14 = cat(_io_ex_immediate_T_12, _io_ex_immediate_T_13) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 152:32]
    node _io_ex_immediate_T_15 = bits(io.instruction, 31, 31) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 153:56]
    node _io_ex_immediate_T_16 = bits(_io_ex_immediate_T_15, 0, 0) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 153:37]
    node _io_ex_immediate_T_17 = mux(_io_ex_immediate_T_16, UInt<21>("h1fffff"), UInt<21>("h0")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 153:37]
    node _io_ex_immediate_T_18 = bits(io.instruction, 30, 20) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 153:77]
    node _io_ex_immediate_T_19 = cat(_io_ex_immediate_T_17, _io_ex_immediate_T_18) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 153:32]
    node _io_ex_immediate_T_20 = bits(io.instruction, 31, 31) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 154:56]
    node _io_ex_immediate_T_21 = bits(_io_ex_immediate_T_20, 0, 0) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 154:37]
    node _io_ex_immediate_T_22 = mux(_io_ex_immediate_T_21, UInt<21>("h1fffff"), UInt<21>("h0")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 154:37]
    node _io_ex_immediate_T_23 = bits(io.instruction, 30, 25) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 154:77]
    node _io_ex_immediate_T_24 = bits(io.instruction, 11, 7) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 154:101]
    node io_ex_immediate_hi = cat(_io_ex_immediate_T_22, _io_ex_immediate_T_23) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 154:32]
    node _io_ex_immediate_T_25 = cat(io_ex_immediate_hi, _io_ex_immediate_T_24) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 154:32]
    node _io_ex_immediate_T_26 = bits(io.instruction, 31, 31) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 156:32]
    node _io_ex_immediate_T_27 = bits(_io_ex_immediate_T_26, 0, 0) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 156:13]
    node _io_ex_immediate_T_28 = mux(_io_ex_immediate_T_27, UInt<20>("hfffff"), UInt<20>("h0")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 156:13]
    node _io_ex_immediate_T_29 = bits(io.instruction, 7, 7) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 157:23]
    node _io_ex_immediate_T_30 = bits(io.instruction, 30, 25) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 158:23]
    node _io_ex_immediate_T_31 = bits(io.instruction, 11, 8) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 159:23]
    node io_ex_immediate_lo = cat(_io_ex_immediate_T_31, UInt<1>("h0")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 155:32]
    node io_ex_immediate_hi_hi = cat(_io_ex_immediate_T_28, _io_ex_immediate_T_29) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 155:32]
    node io_ex_immediate_hi_1 = cat(io_ex_immediate_hi_hi, _io_ex_immediate_T_30) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 155:32]
    node _io_ex_immediate_T_32 = cat(io_ex_immediate_hi_1, io_ex_immediate_lo) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 155:32]
    node _io_ex_immediate_T_33 = bits(io.instruction, 31, 12) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 162:47]
    node _io_ex_immediate_T_34 = cat(_io_ex_immediate_T_33, UInt<12>("h0")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 162:32]
    node _io_ex_immediate_T_35 = bits(io.instruction, 31, 12) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 163:47]
    node _io_ex_immediate_T_36 = cat(_io_ex_immediate_T_35, UInt<12>("h0")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 163:32]
    node _io_ex_immediate_T_37 = bits(io.instruction, 31, 31) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 165:32]
    node _io_ex_immediate_T_38 = bits(_io_ex_immediate_T_37, 0, 0) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 165:13]
    node _io_ex_immediate_T_39 = mux(_io_ex_immediate_T_38, UInt<12>("hfff"), UInt<12>("h0")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 165:13]
    node _io_ex_immediate_T_40 = bits(io.instruction, 19, 12) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 166:23]
    node _io_ex_immediate_T_41 = bits(io.instruction, 20, 20) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 167:23]
    node _io_ex_immediate_T_42 = bits(io.instruction, 30, 21) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 168:23]
    node io_ex_immediate_lo_1 = cat(_io_ex_immediate_T_42, UInt<1>("h0")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 164:30]
    node io_ex_immediate_hi_hi_1 = cat(_io_ex_immediate_T_39, _io_ex_immediate_T_40) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 164:30]
    node io_ex_immediate_hi_2 = cat(io_ex_immediate_hi_hi_1, _io_ex_immediate_T_41) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 164:30]
    node _io_ex_immediate_T_43 = cat(io_ex_immediate_hi_2, io_ex_immediate_lo_1) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 164:30]
    node _io_ex_immediate_T_44 = eq(UInt<5>("h13"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_immediate_T_45 = mux(_io_ex_immediate_T_44, _io_ex_immediate_T_9, _io_ex_immediate_T_4) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_immediate_T_46 = eq(UInt<2>("h3"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_immediate_T_47 = mux(_io_ex_immediate_T_46, _io_ex_immediate_T_14, _io_ex_immediate_T_45) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_immediate_T_48 = eq(UInt<7>("h67"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_immediate_T_49 = mux(_io_ex_immediate_T_48, _io_ex_immediate_T_19, _io_ex_immediate_T_47) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_immediate_T_50 = eq(UInt<6>("h23"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_immediate_T_51 = mux(_io_ex_immediate_T_50, _io_ex_immediate_T_25, _io_ex_immediate_T_49) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_immediate_T_52 = eq(UInt<7>("h63"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_immediate_T_53 = mux(_io_ex_immediate_T_52, _io_ex_immediate_T_32, _io_ex_immediate_T_51) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_immediate_T_54 = eq(UInt<6>("h37"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_immediate_T_55 = mux(_io_ex_immediate_T_54, _io_ex_immediate_T_34, _io_ex_immediate_T_53) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_immediate_T_56 = eq(UInt<5>("h17"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_immediate_T_57 = mux(_io_ex_immediate_T_56, _io_ex_immediate_T_36, _io_ex_immediate_T_55) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_immediate_T_58 = eq(UInt<7>("h6f"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_immediate_T_59 = mux(_io_ex_immediate_T_58, _io_ex_immediate_T_43, _io_ex_immediate_T_57) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    io.ex_immediate <= _io_ex_immediate_T_59 @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 147:19]
    node _io_ex_aluop1_source_T = eq(opcode, UInt<5>("h17")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 174:12]
    node _io_ex_aluop1_source_T_1 = eq(opcode, UInt<7>("h63")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 174:45]
    node _io_ex_aluop1_source_T_2 = or(_io_ex_aluop1_source_T, _io_ex_aluop1_source_T_1) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 174:35]
    node _io_ex_aluop1_source_T_3 = eq(opcode, UInt<7>("h6f")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 174:78]
    node _io_ex_aluop1_source_T_4 = or(_io_ex_aluop1_source_T_2, _io_ex_aluop1_source_T_3) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 174:68]
    node _io_ex_aluop1_source_T_5 = mux(_io_ex_aluop1_source_T_4, UInt<1>("h1"), UInt<1>("h0")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 173:29]
    io.ex_aluop1_source <= _io_ex_aluop1_source_T_5 @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 173:23]
    node _io_ex_aluop2_source_T = eq(opcode, UInt<6>("h33")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 179:12]
    node _io_ex_aluop2_source_T_1 = mux(_io_ex_aluop2_source_T, UInt<1>("h0"), UInt<1>("h1")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 178:29]
    io.ex_aluop2_source <= _io_ex_aluop2_source_T_1 @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 178:23]
    node _io_ex_memory_read_enable_T = eq(opcode, UInt<2>("h3")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 183:39]
    io.ex_memory_read_enable <= _io_ex_memory_read_enable_T @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 183:29]
    node _io_ex_memory_write_enable_T = eq(opcode, UInt<6>("h23")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 184:39]
    io.ex_memory_write_enable <= _io_ex_memory_write_enable_T @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 184:29]
    node _io_ex_reg_write_source_T = eq(UInt<2>("h3"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_reg_write_source_T_1 = mux(_io_ex_reg_write_source_T, UInt<2>("h1"), UInt<2>("h0")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_reg_write_source_T_2 = eq(UInt<7>("h73"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_reg_write_source_T_3 = mux(_io_ex_reg_write_source_T_2, UInt<2>("h2"), _io_ex_reg_write_source_T_1) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_reg_write_source_T_4 = eq(UInt<7>("h6f"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_reg_write_source_T_5 = mux(_io_ex_reg_write_source_T_4, UInt<2>("h3"), _io_ex_reg_write_source_T_3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_reg_write_source_T_6 = eq(UInt<7>("h67"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_reg_write_source_T_7 = mux(_io_ex_reg_write_source_T_6, UInt<2>("h3"), _io_ex_reg_write_source_T_5) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    io.ex_reg_write_source <= _io_ex_reg_write_source_T_7 @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 185:26]
    node _io_ex_reg_write_enable_T = eq(opcode, UInt<6>("h33")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 195:37]
    node _io_ex_reg_write_enable_T_1 = eq(opcode, UInt<5>("h13")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 195:73]
    node _io_ex_reg_write_enable_T_2 = or(_io_ex_reg_write_enable_T, _io_ex_reg_write_enable_T_1) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 195:62]
    node _io_ex_reg_write_enable_T_3 = eq(opcode, UInt<2>("h3")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 196:13]
    node _io_ex_reg_write_enable_T_4 = or(_io_ex_reg_write_enable_T_2, _io_ex_reg_write_enable_T_3) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 195:97]
    node _io_ex_reg_write_enable_T_5 = eq(opcode, UInt<5>("h17")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 196:48]
    node _io_ex_reg_write_enable_T_6 = or(_io_ex_reg_write_enable_T_4, _io_ex_reg_write_enable_T_5) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 196:37]
    node _io_ex_reg_write_enable_T_7 = eq(opcode, UInt<6>("h37")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 196:83]
    node _io_ex_reg_write_enable_T_8 = or(_io_ex_reg_write_enable_T_6, _io_ex_reg_write_enable_T_7) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 196:72]
    node _io_ex_reg_write_enable_T_9 = eq(opcode, UInt<7>("h6f")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 197:13]
    node _io_ex_reg_write_enable_T_10 = or(_io_ex_reg_write_enable_T_8, _io_ex_reg_write_enable_T_9) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 196:105]
    node _io_ex_reg_write_enable_T_11 = eq(opcode, UInt<7>("h67")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 197:46]
    node _io_ex_reg_write_enable_T_12 = or(_io_ex_reg_write_enable_T_10, _io_ex_reg_write_enable_T_11) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 197:35]
    node _io_ex_reg_write_enable_T_13 = eq(opcode, UInt<7>("h73")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 197:80]
    node _io_ex_reg_write_enable_T_14 = or(_io_ex_reg_write_enable_T_12, _io_ex_reg_write_enable_T_13) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 197:69]
    io.ex_reg_write_enable <= _io_ex_reg_write_enable_T_14 @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 195:26]
    io.ex_reg_write_address <= rd @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 198:27]
    node _io_ex_csr_address_T = bits(io.instruction, 31, 20) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 199:44]
    io.ex_csr_address <= _io_ex_csr_address_T @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 199:27]
    node _io_ex_csr_write_enable_T = eq(opcode, UInt<7>("h73")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 200:37]
    node _io_ex_csr_write_enable_T_1 = eq(funct3, UInt<1>("h1")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 201:12]
    node _io_ex_csr_write_enable_T_2 = eq(funct3, UInt<3>("h5")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 201:52]
    node _io_ex_csr_write_enable_T_3 = or(_io_ex_csr_write_enable_T_1, _io_ex_csr_write_enable_T_2) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 201:42]
    node _io_ex_csr_write_enable_T_4 = eq(funct3, UInt<2>("h2")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 202:14]
    node _io_ex_csr_write_enable_T_5 = or(_io_ex_csr_write_enable_T_3, _io_ex_csr_write_enable_T_4) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 201:83]
    node _io_ex_csr_write_enable_T_6 = eq(funct3, UInt<3>("h6")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 202:54]
    node _io_ex_csr_write_enable_T_7 = or(_io_ex_csr_write_enable_T_5, _io_ex_csr_write_enable_T_6) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 202:44]
    node _io_ex_csr_write_enable_T_8 = eq(funct3, UInt<2>("h3")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 203:14]
    node _io_ex_csr_write_enable_T_9 = or(_io_ex_csr_write_enable_T_7, _io_ex_csr_write_enable_T_8) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 202:85]
    node _io_ex_csr_write_enable_T_10 = eq(funct3, UInt<3>("h7")) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 203:54]
    node _io_ex_csr_write_enable_T_11 = or(_io_ex_csr_write_enable_T_9, _io_ex_csr_write_enable_T_10) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 203:44]
    node _io_ex_csr_write_enable_T_12 = and(_io_ex_csr_write_enable_T, _io_ex_csr_write_enable_T_11) @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 200:59]
    io.ex_csr_write_enable <= _io_ex_csr_write_enable_T_12 @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 200:26]

  module PipelineRegister_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<32>, out : UInt<32>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<32>, clock with :
      reset => (reset, UInt<32>("h13")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<32>, clock with :
      reset => (reset, UInt<32>("h13")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<32>("h13") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<32>("h13") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<32>, out : UInt<32>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<32>, clock with :
      reset => (reset, UInt<32>("h1000")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<32>, clock with :
      reset => (reset, UInt<32>("h1000")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<32>("h1000") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<32>("h1000") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<1>, out : UInt<1>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<5>, out : UInt<5>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<5>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<5>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<2>, out : UInt<2>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<2>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<2>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<32>, out : UInt<32>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<32>, out : UInt<32>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<32>, out : UInt<32>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<1>, out : UInt<1>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<1>, out : UInt<1>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<1>, out : UInt<1>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<12>, out : UInt<12>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<12>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<12>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<1>, out : UInt<1>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_16 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<1>, out : UInt<1>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module PipelineRegister_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip stall : UInt<1>, flip flush : UInt<1>, flip in : UInt<32>, out : UInt<32>} @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    when io.flush : @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
      myreg <= UInt<1>("h0") @[src/main/scala/riscv/core/PipelineRegister.scala 17:11]
    else :
      when io.stall : @[src/main/scala/riscv/core/PipelineRegister.scala 19:25]
        out <= myreg @[src/main/scala/riscv/core/PipelineRegister.scala 20:11]
      else :
        myreg <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 23:13]
        out <= io.in @[src/main/scala/riscv/core/PipelineRegister.scala 24:13]
    io.out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]

  module ID2EX :
    input clock : Clock
    input reset : Reset
    output io : { flip flush : UInt<1>, flip instruction : UInt<32>, flip instruction_address : UInt<32>, flip regs_write_enable : UInt<1>, flip regs_write_address : UInt<5>, flip regs_write_source : UInt<2>, flip reg1_data : UInt<32>, flip reg2_data : UInt<32>, flip immediate : UInt<32>, flip aluop1_source : UInt<1>, flip aluop2_source : UInt<1>, flip csr_write_enable : UInt<1>, flip csr_address : UInt<12>, flip memory_read_enable : UInt<1>, flip memory_write_enable : UInt<1>, flip csr_read_data : UInt<32>, output_instruction : UInt<32>, output_instruction_address : UInt<32>, output_regs_write_enable : UInt<1>, output_regs_write_address : UInt<5>, output_regs_write_source : UInt<2>, output_reg1_data : UInt<32>, output_reg2_data : UInt<32>, output_immediate : UInt<32>, output_aluop1_source : UInt<1>, output_aluop2_source : UInt<1>, output_csr_write_enable : UInt<1>, output_csr_address : UInt<12>, output_memory_read_enable : UInt<1>, output_memory_write_enable : UInt<1>, output_csr_read_data : UInt<32>} @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]

    inst instruction of PipelineRegister_3 @[src/main/scala/riscv/core/threestage/ID2EX.scala 45:27]
    instruction.clock <= clock
    instruction.reset <= reset
    instruction.io.in <= io.instruction @[src/main/scala/riscv/core/threestage/ID2EX.scala 46:25]
    instruction.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/ID2EX.scala 47:25]
    instruction.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/ID2EX.scala 48:25]
    io.output_instruction <= instruction.io.out @[src/main/scala/riscv/core/threestage/ID2EX.scala 49:25]
    inst instruction_address of PipelineRegister_4 @[src/main/scala/riscv/core/threestage/ID2EX.scala 51:35]
    instruction_address.clock <= clock
    instruction_address.reset <= reset
    instruction_address.io.in <= io.instruction_address @[src/main/scala/riscv/core/threestage/ID2EX.scala 52:33]
    instruction_address.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/ID2EX.scala 53:33]
    instruction_address.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/ID2EX.scala 54:33]
    io.output_instruction_address <= instruction_address.io.out @[src/main/scala/riscv/core/threestage/ID2EX.scala 55:33]
    inst regs_write_enable of PipelineRegister_5 @[src/main/scala/riscv/core/threestage/ID2EX.scala 57:33]
    regs_write_enable.clock <= clock
    regs_write_enable.reset <= reset
    regs_write_enable.io.in <= io.regs_write_enable @[src/main/scala/riscv/core/threestage/ID2EX.scala 58:31]
    regs_write_enable.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/ID2EX.scala 59:31]
    regs_write_enable.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/ID2EX.scala 60:31]
    io.output_regs_write_enable <= regs_write_enable.io.out @[src/main/scala/riscv/core/threestage/ID2EX.scala 61:31]
    inst regs_write_address of PipelineRegister_6 @[src/main/scala/riscv/core/threestage/ID2EX.scala 63:34]
    regs_write_address.clock <= clock
    regs_write_address.reset <= reset
    regs_write_address.io.in <= io.regs_write_address @[src/main/scala/riscv/core/threestage/ID2EX.scala 64:32]
    regs_write_address.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/ID2EX.scala 65:32]
    regs_write_address.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/ID2EX.scala 66:32]
    io.output_regs_write_address <= regs_write_address.io.out @[src/main/scala/riscv/core/threestage/ID2EX.scala 67:32]
    inst regs_write_source of PipelineRegister_7 @[src/main/scala/riscv/core/threestage/ID2EX.scala 69:33]
    regs_write_source.clock <= clock
    regs_write_source.reset <= reset
    regs_write_source.io.in <= io.regs_write_source @[src/main/scala/riscv/core/threestage/ID2EX.scala 70:31]
    regs_write_source.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/ID2EX.scala 71:31]
    regs_write_source.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/ID2EX.scala 72:31]
    io.output_regs_write_source <= regs_write_source.io.out @[src/main/scala/riscv/core/threestage/ID2EX.scala 73:31]
    inst reg1_data of PipelineRegister_8 @[src/main/scala/riscv/core/threestage/ID2EX.scala 75:25]
    reg1_data.clock <= clock
    reg1_data.reset <= reset
    reg1_data.io.in <= io.reg1_data @[src/main/scala/riscv/core/threestage/ID2EX.scala 76:23]
    reg1_data.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/ID2EX.scala 77:23]
    reg1_data.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/ID2EX.scala 78:23]
    io.output_reg1_data <= reg1_data.io.out @[src/main/scala/riscv/core/threestage/ID2EX.scala 79:23]
    inst reg2_data of PipelineRegister_9 @[src/main/scala/riscv/core/threestage/ID2EX.scala 81:25]
    reg2_data.clock <= clock
    reg2_data.reset <= reset
    reg2_data.io.in <= io.reg2_data @[src/main/scala/riscv/core/threestage/ID2EX.scala 82:23]
    reg2_data.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/ID2EX.scala 83:23]
    reg2_data.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/ID2EX.scala 84:23]
    io.output_reg2_data <= reg2_data.io.out @[src/main/scala/riscv/core/threestage/ID2EX.scala 85:23]
    inst immediate of PipelineRegister_10 @[src/main/scala/riscv/core/threestage/ID2EX.scala 87:25]
    immediate.clock <= clock
    immediate.reset <= reset
    immediate.io.in <= io.immediate @[src/main/scala/riscv/core/threestage/ID2EX.scala 88:23]
    immediate.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/ID2EX.scala 89:23]
    immediate.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/ID2EX.scala 90:23]
    io.output_immediate <= immediate.io.out @[src/main/scala/riscv/core/threestage/ID2EX.scala 91:23]
    inst aluop1_source of PipelineRegister_11 @[src/main/scala/riscv/core/threestage/ID2EX.scala 93:29]
    aluop1_source.clock <= clock
    aluop1_source.reset <= reset
    aluop1_source.io.in <= io.aluop1_source @[src/main/scala/riscv/core/threestage/ID2EX.scala 94:27]
    aluop1_source.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/ID2EX.scala 95:27]
    aluop1_source.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/ID2EX.scala 96:27]
    io.output_aluop1_source <= aluop1_source.io.out @[src/main/scala/riscv/core/threestage/ID2EX.scala 97:27]
    inst aluop2_source of PipelineRegister_12 @[src/main/scala/riscv/core/threestage/ID2EX.scala 99:29]
    aluop2_source.clock <= clock
    aluop2_source.reset <= reset
    aluop2_source.io.in <= io.aluop2_source @[src/main/scala/riscv/core/threestage/ID2EX.scala 100:27]
    aluop2_source.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/ID2EX.scala 101:27]
    aluop2_source.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/ID2EX.scala 102:27]
    io.output_aluop2_source <= aluop2_source.io.out @[src/main/scala/riscv/core/threestage/ID2EX.scala 103:27]
    inst csr_write_enable of PipelineRegister_13 @[src/main/scala/riscv/core/threestage/ID2EX.scala 105:32]
    csr_write_enable.clock <= clock
    csr_write_enable.reset <= reset
    csr_write_enable.io.in <= io.csr_write_enable @[src/main/scala/riscv/core/threestage/ID2EX.scala 106:30]
    csr_write_enable.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/ID2EX.scala 107:30]
    csr_write_enable.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/ID2EX.scala 108:30]
    io.output_csr_write_enable <= csr_write_enable.io.out @[src/main/scala/riscv/core/threestage/ID2EX.scala 109:30]
    inst csr_address of PipelineRegister_14 @[src/main/scala/riscv/core/threestage/ID2EX.scala 111:27]
    csr_address.clock <= clock
    csr_address.reset <= reset
    csr_address.io.in <= io.csr_address @[src/main/scala/riscv/core/threestage/ID2EX.scala 112:25]
    csr_address.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/ID2EX.scala 113:25]
    csr_address.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/ID2EX.scala 114:25]
    io.output_csr_address <= csr_address.io.out @[src/main/scala/riscv/core/threestage/ID2EX.scala 115:25]
    inst memory_read_enable of PipelineRegister_15 @[src/main/scala/riscv/core/threestage/ID2EX.scala 117:34]
    memory_read_enable.clock <= clock
    memory_read_enable.reset <= reset
    memory_read_enable.io.in <= io.memory_read_enable @[src/main/scala/riscv/core/threestage/ID2EX.scala 118:32]
    memory_read_enable.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/ID2EX.scala 119:32]
    memory_read_enable.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/ID2EX.scala 120:32]
    io.output_memory_read_enable <= memory_read_enable.io.out @[src/main/scala/riscv/core/threestage/ID2EX.scala 121:32]
    inst memory_write_enable of PipelineRegister_16 @[src/main/scala/riscv/core/threestage/ID2EX.scala 123:35]
    memory_write_enable.clock <= clock
    memory_write_enable.reset <= reset
    memory_write_enable.io.in <= io.memory_write_enable @[src/main/scala/riscv/core/threestage/ID2EX.scala 124:33]
    memory_write_enable.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/ID2EX.scala 125:33]
    memory_write_enable.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/ID2EX.scala 126:33]
    io.output_memory_write_enable <= memory_write_enable.io.out @[src/main/scala/riscv/core/threestage/ID2EX.scala 127:33]
    inst csr_read_data of PipelineRegister_17 @[src/main/scala/riscv/core/threestage/ID2EX.scala 129:29]
    csr_read_data.clock <= clock
    csr_read_data.reset <= reset
    csr_read_data.io.in <= io.csr_read_data @[src/main/scala/riscv/core/threestage/ID2EX.scala 130:27]
    csr_read_data.io.stall <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/ID2EX.scala 131:27]
    csr_read_data.io.flush <= io.flush @[src/main/scala/riscv/core/threestage/ID2EX.scala 132:27]
    io.output_csr_read_data <= csr_read_data.io.out @[src/main/scala/riscv/core/threestage/ID2EX.scala 133:27]

  module ALU :
    input clock : Clock
    input reset : Reset
    output io : { flip func : UInt<5>, flip op1 : UInt<32>, flip op2 : UInt<32>, result : UInt<32>} @[src/main/scala/riscv/core/ALU.scala 13:14]

    io.result <= UInt<1>("h0") @[src/main/scala/riscv/core/ALU.scala 22:13]
    node _T = asUInt(UInt<1>("h1")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_1 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_2 = eq(_T, _T_1) @[src/main/scala/riscv/core/ALU.scala 23:19]
    when _T_2 : @[src/main/scala/riscv/core/ALU.scala 23:19]
      node _io_result_T = add(io.op1, io.op2) @[src/main/scala/riscv/core/ALU.scala 25:27]
      node _io_result_T_1 = tail(_io_result_T, 1) @[src/main/scala/riscv/core/ALU.scala 25:27]
      io.result <= _io_result_T_1 @[src/main/scala/riscv/core/ALU.scala 25:17]
    else :
      node _T_3 = asUInt(UInt<2>("h2")) @[src/main/scala/riscv/core/ALU.scala 23:19]
      node _T_4 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
      node _T_5 = eq(_T_3, _T_4) @[src/main/scala/riscv/core/ALU.scala 23:19]
      when _T_5 : @[src/main/scala/riscv/core/ALU.scala 23:19]
        node _io_result_T_2 = sub(io.op1, io.op2) @[src/main/scala/riscv/core/ALU.scala 28:27]
        node _io_result_T_3 = tail(_io_result_T_2, 1) @[src/main/scala/riscv/core/ALU.scala 28:27]
        io.result <= _io_result_T_3 @[src/main/scala/riscv/core/ALU.scala 28:17]
      else :
        node _T_6 = asUInt(UInt<2>("h3")) @[src/main/scala/riscv/core/ALU.scala 23:19]
        node _T_7 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
        node _T_8 = eq(_T_6, _T_7) @[src/main/scala/riscv/core/ALU.scala 23:19]
        when _T_8 : @[src/main/scala/riscv/core/ALU.scala 23:19]
          node _io_result_T_4 = bits(io.op2, 4, 0) @[src/main/scala/riscv/core/ALU.scala 31:36]
          node _io_result_T_5 = dshl(io.op1, _io_result_T_4) @[src/main/scala/riscv/core/ALU.scala 31:27]
          io.result <= _io_result_T_5 @[src/main/scala/riscv/core/ALU.scala 31:17]
        else :
          node _T_9 = asUInt(UInt<3>("h4")) @[src/main/scala/riscv/core/ALU.scala 23:19]
          node _T_10 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
          node _T_11 = eq(_T_9, _T_10) @[src/main/scala/riscv/core/ALU.scala 23:19]
          when _T_11 : @[src/main/scala/riscv/core/ALU.scala 23:19]
            node _io_result_T_6 = asSInt(io.op1) @[src/main/scala/riscv/core/ALU.scala 34:27]
            node _io_result_T_7 = asSInt(io.op2) @[src/main/scala/riscv/core/ALU.scala 34:43]
            node _io_result_T_8 = lt(_io_result_T_6, _io_result_T_7) @[src/main/scala/riscv/core/ALU.scala 34:34]
            io.result <= _io_result_T_8 @[src/main/scala/riscv/core/ALU.scala 34:17]
          else :
            node _T_12 = asUInt(UInt<3>("h5")) @[src/main/scala/riscv/core/ALU.scala 23:19]
            node _T_13 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
            node _T_14 = eq(_T_12, _T_13) @[src/main/scala/riscv/core/ALU.scala 23:19]
            when _T_14 : @[src/main/scala/riscv/core/ALU.scala 23:19]
              node _io_result_T_9 = xor(io.op1, io.op2) @[src/main/scala/riscv/core/ALU.scala 37:27]
              io.result <= _io_result_T_9 @[src/main/scala/riscv/core/ALU.scala 37:17]
            else :
              node _T_15 = asUInt(UInt<3>("h6")) @[src/main/scala/riscv/core/ALU.scala 23:19]
              node _T_16 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
              node _T_17 = eq(_T_15, _T_16) @[src/main/scala/riscv/core/ALU.scala 23:19]
              when _T_17 : @[src/main/scala/riscv/core/ALU.scala 23:19]
                node _io_result_T_10 = or(io.op1, io.op2) @[src/main/scala/riscv/core/ALU.scala 40:27]
                io.result <= _io_result_T_10 @[src/main/scala/riscv/core/ALU.scala 40:17]
              else :
                node _T_18 = asUInt(UInt<3>("h7")) @[src/main/scala/riscv/core/ALU.scala 23:19]
                node _T_19 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
                node _T_20 = eq(_T_18, _T_19) @[src/main/scala/riscv/core/ALU.scala 23:19]
                when _T_20 : @[src/main/scala/riscv/core/ALU.scala 23:19]
                  node _io_result_T_11 = and(io.op1, io.op2) @[src/main/scala/riscv/core/ALU.scala 43:27]
                  io.result <= _io_result_T_11 @[src/main/scala/riscv/core/ALU.scala 43:17]
                else :
                  node _T_21 = asUInt(UInt<4>("h8")) @[src/main/scala/riscv/core/ALU.scala 23:19]
                  node _T_22 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
                  node _T_23 = eq(_T_21, _T_22) @[src/main/scala/riscv/core/ALU.scala 23:19]
                  when _T_23 : @[src/main/scala/riscv/core/ALU.scala 23:19]
                    node _io_result_T_12 = bits(io.op2, 4, 0) @[src/main/scala/riscv/core/ALU.scala 46:36]
                    node _io_result_T_13 = dshr(io.op1, _io_result_T_12) @[src/main/scala/riscv/core/ALU.scala 46:27]
                    io.result <= _io_result_T_13 @[src/main/scala/riscv/core/ALU.scala 46:17]
                  else :
                    node _T_24 = asUInt(UInt<4>("h9")) @[src/main/scala/riscv/core/ALU.scala 23:19]
                    node _T_25 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
                    node _T_26 = eq(_T_24, _T_25) @[src/main/scala/riscv/core/ALU.scala 23:19]
                    when _T_26 : @[src/main/scala/riscv/core/ALU.scala 23:19]
                      node _io_result_T_14 = asSInt(io.op1) @[src/main/scala/riscv/core/ALU.scala 49:28]
                      node _io_result_T_15 = bits(io.op2, 4, 0) @[src/main/scala/riscv/core/ALU.scala 49:44]
                      node _io_result_T_16 = dshr(_io_result_T_14, _io_result_T_15) @[src/main/scala/riscv/core/ALU.scala 49:35]
                      node _io_result_T_17 = asUInt(_io_result_T_16) @[src/main/scala/riscv/core/ALU.scala 49:52]
                      io.result <= _io_result_T_17 @[src/main/scala/riscv/core/ALU.scala 49:17]
                    else :
                      node _T_27 = asUInt(UInt<4>("ha")) @[src/main/scala/riscv/core/ALU.scala 23:19]
                      node _T_28 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
                      node _T_29 = eq(_T_27, _T_28) @[src/main/scala/riscv/core/ALU.scala 23:19]
                      when _T_29 : @[src/main/scala/riscv/core/ALU.scala 23:19]
                        node _io_result_T_18 = lt(io.op1, io.op2) @[src/main/scala/riscv/core/ALU.scala 52:27]
                        io.result <= _io_result_T_18 @[src/main/scala/riscv/core/ALU.scala 52:17]
                      else :
                        node _T_30 = asUInt(UInt<4>("hb")) @[src/main/scala/riscv/core/ALU.scala 23:19]
                        node _T_31 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
                        node _T_32 = eq(_T_30, _T_31) @[src/main/scala/riscv/core/ALU.scala 23:19]
                        when _T_32 : @[src/main/scala/riscv/core/ALU.scala 23:19]
                          node _io_result_T_19 = mul(io.op1, io.op2) @[src/main/scala/riscv/core/ALU.scala 55:28]
                          node _io_result_T_20 = bits(_io_result_T_19, 31, 0) @[src/main/scala/riscv/core/ALU.scala 55:37]
                          io.result <= _io_result_T_20 @[src/main/scala/riscv/core/ALU.scala 55:17]
                        else :
                          node _T_33 = asUInt(UInt<4>("hc")) @[src/main/scala/riscv/core/ALU.scala 23:19]
                          node _T_34 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
                          node _T_35 = eq(_T_33, _T_34) @[src/main/scala/riscv/core/ALU.scala 23:19]
                          when _T_35 : @[src/main/scala/riscv/core/ALU.scala 23:19]
                            node _io_result_T_21 = asSInt(io.op1) @[src/main/scala/riscv/core/ALU.scala 58:28]
                            node _io_result_T_22 = asSInt(io.op2) @[src/main/scala/riscv/core/ALU.scala 58:44]
                            node _io_result_T_23 = mul(_io_result_T_21, _io_result_T_22) @[src/main/scala/riscv/core/ALU.scala 58:35]
                            node _io_result_T_24 = shr(_io_result_T_23, 32) @[src/main/scala/riscv/core/ALU.scala 58:51]
                            node _io_result_T_25 = asUInt(_io_result_T_24) @[src/main/scala/riscv/core/ALU.scala 58:58]
                            io.result <= _io_result_T_25 @[src/main/scala/riscv/core/ALU.scala 58:17]
                          else :
                            node _T_36 = asUInt(UInt<4>("hd")) @[src/main/scala/riscv/core/ALU.scala 23:19]
                            node _T_37 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
                            node _T_38 = eq(_T_36, _T_37) @[src/main/scala/riscv/core/ALU.scala 23:19]
                            when _T_38 : @[src/main/scala/riscv/core/ALU.scala 23:19]
                              node _io_result_T_26 = asSInt(io.op1) @[src/main/scala/riscv/core/ALU.scala 61:29]
                              node _io_result_T_27 = cvt(io.op2) @[src/main/scala/riscv/core/ALU.scala 61:36]
                              node _io_result_T_28 = mul(_io_result_T_26, _io_result_T_27) @[src/main/scala/riscv/core/ALU.scala 61:36]
                              node _io_result_T_29 = tail(_io_result_T_28, 1) @[src/main/scala/riscv/core/ALU.scala 61:36]
                              node _io_result_T_30 = asSInt(_io_result_T_29) @[src/main/scala/riscv/core/ALU.scala 61:36]
                              node _io_result_T_31 = shr(_io_result_T_30, 32) @[src/main/scala/riscv/core/ALU.scala 61:45]
                              node _io_result_T_32 = asUInt(_io_result_T_31) @[src/main/scala/riscv/core/ALU.scala 61:52]
                              io.result <= _io_result_T_32 @[src/main/scala/riscv/core/ALU.scala 61:17]
                            else :
                              node _T_39 = asUInt(UInt<4>("he")) @[src/main/scala/riscv/core/ALU.scala 23:19]
                              node _T_40 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
                              node _T_41 = eq(_T_39, _T_40) @[src/main/scala/riscv/core/ALU.scala 23:19]
                              when _T_41 : @[src/main/scala/riscv/core/ALU.scala 23:19]
                                node _io_result_T_33 = mul(io.op1, io.op2) @[src/main/scala/riscv/core/ALU.scala 64:31]
                                node _io_result_T_34 = shr(_io_result_T_33, 32) @[src/main/scala/riscv/core/ALU.scala 64:42]
                                io.result <= _io_result_T_34 @[src/main/scala/riscv/core/ALU.scala 64:19]
                              else :
                                node _T_42 = asUInt(UInt<4>("hf")) @[src/main/scala/riscv/core/ALU.scala 23:19]
                                node _T_43 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
                                node _T_44 = eq(_T_42, _T_43) @[src/main/scala/riscv/core/ALU.scala 23:19]
                                when _T_44 : @[src/main/scala/riscv/core/ALU.scala 23:19]
                                  node _io_result_T_35 = eq(io.op2, UInt<1>("h0")) @[src/main/scala/riscv/core/ALU.scala 67:27]
                                  node _io_result_T_36 = asSInt(io.op1) @[src/main/scala/riscv/core/ALU.scala 67:49]
                                  node _io_result_T_37 = asSInt(io.op2) @[src/main/scala/riscv/core/ALU.scala 67:65]
                                  node _io_result_T_38 = div(_io_result_T_36, _io_result_T_37) @[src/main/scala/riscv/core/ALU.scala 67:56]
                                  node _io_result_T_39 = asUInt(_io_result_T_38) @[src/main/scala/riscv/core/ALU.scala 67:73]
                                  node _io_result_T_40 = mux(_io_result_T_35, UInt<1>("h0"), _io_result_T_39) @[src/main/scala/riscv/core/ALU.scala 67:19]
                                  io.result <= _io_result_T_40 @[src/main/scala/riscv/core/ALU.scala 67:13]
                                else :
                                  node _T_45 = asUInt(UInt<5>("h10")) @[src/main/scala/riscv/core/ALU.scala 23:19]
                                  node _T_46 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
                                  node _T_47 = eq(_T_45, _T_46) @[src/main/scala/riscv/core/ALU.scala 23:19]
                                  when _T_47 : @[src/main/scala/riscv/core/ALU.scala 23:19]
                                    node _io_result_T_41 = eq(io.op2, UInt<1>("h0")) @[src/main/scala/riscv/core/ALU.scala 70:27]
                                    node _io_result_T_42 = div(io.op1, io.op2) @[src/main/scala/riscv/core/ALU.scala 70:48]
                                    node _io_result_T_43 = mux(_io_result_T_41, UInt<1>("h0"), _io_result_T_42) @[src/main/scala/riscv/core/ALU.scala 70:19]
                                    io.result <= _io_result_T_43 @[src/main/scala/riscv/core/ALU.scala 70:13]
                                  else :
                                    node _T_48 = asUInt(UInt<5>("h11")) @[src/main/scala/riscv/core/ALU.scala 23:19]
                                    node _T_49 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
                                    node _T_50 = eq(_T_48, _T_49) @[src/main/scala/riscv/core/ALU.scala 23:19]
                                    when _T_50 : @[src/main/scala/riscv/core/ALU.scala 23:19]
                                      node _io_result_T_44 = eq(io.op2, UInt<1>("h0")) @[src/main/scala/riscv/core/ALU.scala 73:27]
                                      node _io_result_T_45 = asSInt(io.op1) @[src/main/scala/riscv/core/ALU.scala 73:52]
                                      node _io_result_T_46 = asSInt(io.op2) @[src/main/scala/riscv/core/ALU.scala 73:68]
                                      node _io_result_T_47 = rem(_io_result_T_45, _io_result_T_46) @[src/main/scala/riscv/core/ALU.scala 73:59]
                                      node _io_result_T_48 = asUInt(_io_result_T_47) @[src/main/scala/riscv/core/ALU.scala 73:76]
                                      node _io_result_T_49 = mux(_io_result_T_44, io.op1, _io_result_T_48) @[src/main/scala/riscv/core/ALU.scala 73:19]
                                      io.result <= _io_result_T_49 @[src/main/scala/riscv/core/ALU.scala 73:13]
                                    else :
                                      node _T_51 = asUInt(UInt<5>("h12")) @[src/main/scala/riscv/core/ALU.scala 23:19]
                                      node _T_52 = asUInt(io.func) @[src/main/scala/riscv/core/ALU.scala 23:19]
                                      node _T_53 = eq(_T_51, _T_52) @[src/main/scala/riscv/core/ALU.scala 23:19]
                                      when _T_53 : @[src/main/scala/riscv/core/ALU.scala 23:19]
                                        node _io_result_T_50 = eq(io.op2, UInt<1>("h0")) @[src/main/scala/riscv/core/ALU.scala 76:27]
                                        node _io_result_T_51 = rem(io.op1, io.op2) @[src/main/scala/riscv/core/ALU.scala 76:51]
                                        node _io_result_T_52 = mux(_io_result_T_50, io.op1, _io_result_T_51) @[src/main/scala/riscv/core/ALU.scala 76:19]
                                        io.result <= _io_result_T_52 @[src/main/scala/riscv/core/ALU.scala 76:13]


  module ALUControl :
    input clock : Clock
    input reset : Reset
    output io : { flip opcode : UInt<7>, flip funct3 : UInt<3>, flip funct7 : UInt<7>, alu_funct : UInt<5>} @[src/main/scala/riscv/core/ALUControl.scala 11:14]

    io.alu_funct <= UInt<1>("h0") @[src/main/scala/riscv/core/ALUControl.scala 19:16]
    node _T = eq(UInt<5>("h13"), io.opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
    when _T : @[src/main/scala/riscv/core/ALUControl.scala 21:21]
      node _io_alu_funct_T = bits(io.funct7, 5, 5) @[src/main/scala/riscv/core/ALUControl.scala 34:51]
      node _io_alu_funct_T_1 = mux(_io_alu_funct_T, UInt<4>("h9"), UInt<4>("h8")) @[src/main/scala/riscv/core/ALUControl.scala 34:41]
      node _io_alu_funct_T_2 = eq(UInt<1>("h1"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _io_alu_funct_T_3 = mux(_io_alu_funct_T_2, UInt<2>("h3"), UInt<1>("h1")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _io_alu_funct_T_4 = eq(UInt<2>("h2"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _io_alu_funct_T_5 = mux(_io_alu_funct_T_4, UInt<3>("h4"), _io_alu_funct_T_3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _io_alu_funct_T_6 = eq(UInt<2>("h3"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _io_alu_funct_T_7 = mux(_io_alu_funct_T_6, UInt<4>("ha"), _io_alu_funct_T_5) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _io_alu_funct_T_8 = eq(UInt<3>("h4"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _io_alu_funct_T_9 = mux(_io_alu_funct_T_8, UInt<3>("h5"), _io_alu_funct_T_7) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _io_alu_funct_T_10 = eq(UInt<3>("h6"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _io_alu_funct_T_11 = mux(_io_alu_funct_T_10, UInt<3>("h6"), _io_alu_funct_T_9) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _io_alu_funct_T_12 = eq(UInt<3>("h7"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _io_alu_funct_T_13 = mux(_io_alu_funct_T_12, UInt<3>("h7"), _io_alu_funct_T_11) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _io_alu_funct_T_14 = eq(UInt<3>("h5"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _io_alu_funct_T_15 = mux(_io_alu_funct_T_14, _io_alu_funct_T_1, _io_alu_funct_T_13) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      io.alu_funct <= _io_alu_funct_T_15 @[src/main/scala/riscv/core/ALUControl.scala 23:20]
    else :
      node _T_1 = eq(UInt<6>("h33"), io.opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
      when _T_1 : @[src/main/scala/riscv/core/ALUControl.scala 21:21]
        node _T_2 = eq(io.funct7, UInt<1>("h1")) @[src/main/scala/riscv/core/ALUControl.scala 40:24]
        when _T_2 : @[src/main/scala/riscv/core/ALUControl.scala 40:42]
          node _io_alu_funct_T_16 = eq(UInt<1>("h1"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_17 = mux(_io_alu_funct_T_16, UInt<4>("hc"), UInt<4>("hb")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_18 = eq(UInt<2>("h2"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_19 = mux(_io_alu_funct_T_18, UInt<4>("hd"), _io_alu_funct_T_17) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_20 = eq(UInt<2>("h3"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_21 = mux(_io_alu_funct_T_20, UInt<4>("he"), _io_alu_funct_T_19) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_22 = eq(UInt<3>("h4"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_23 = mux(_io_alu_funct_T_22, UInt<4>("hf"), _io_alu_funct_T_21) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_24 = eq(UInt<3>("h5"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_25 = mux(_io_alu_funct_T_24, UInt<5>("h10"), _io_alu_funct_T_23) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_26 = eq(UInt<3>("h6"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_27 = mux(_io_alu_funct_T_26, UInt<5>("h11"), _io_alu_funct_T_25) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_28 = eq(UInt<3>("h7"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_29 = mux(_io_alu_funct_T_28, UInt<5>("h12"), _io_alu_funct_T_27) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          io.alu_funct <= _io_alu_funct_T_29 @[src/main/scala/riscv/core/ALUControl.scala 42:24]
        else :
          node _io_alu_funct_T_30 = bits(io.funct7, 5, 5) @[src/main/scala/riscv/core/ALUControl.scala 62:57]
          node _io_alu_funct_T_31 = mux(_io_alu_funct_T_30, UInt<2>("h2"), UInt<1>("h1")) @[src/main/scala/riscv/core/ALUControl.scala 62:47]
          node _io_alu_funct_T_32 = bits(io.funct7, 5, 5) @[src/main/scala/riscv/core/ALUControl.scala 69:57]
          node _io_alu_funct_T_33 = mux(_io_alu_funct_T_32, UInt<4>("h9"), UInt<4>("h8")) @[src/main/scala/riscv/core/ALUControl.scala 69:47]
          node _io_alu_funct_T_34 = eq(UInt<1>("h1"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_35 = mux(_io_alu_funct_T_34, UInt<2>("h3"), _io_alu_funct_T_31) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_36 = eq(UInt<2>("h2"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_37 = mux(_io_alu_funct_T_36, UInt<3>("h4"), _io_alu_funct_T_35) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_38 = eq(UInt<2>("h3"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_39 = mux(_io_alu_funct_T_38, UInt<4>("ha"), _io_alu_funct_T_37) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_40 = eq(UInt<3>("h4"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_41 = mux(_io_alu_funct_T_40, UInt<3>("h5"), _io_alu_funct_T_39) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_42 = eq(UInt<3>("h6"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_43 = mux(_io_alu_funct_T_42, UInt<3>("h6"), _io_alu_funct_T_41) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_44 = eq(UInt<3>("h7"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_45 = mux(_io_alu_funct_T_44, UInt<3>("h7"), _io_alu_funct_T_43) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_46 = eq(UInt<3>("h5"), io.funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          node _io_alu_funct_T_47 = mux(_io_alu_funct_T_46, _io_alu_funct_T_33, _io_alu_funct_T_45) @[src/main/scala/chisel3/util/Mux.scala 77:13]
          io.alu_funct <= _io_alu_funct_T_47 @[src/main/scala/riscv/core/ALUControl.scala 58:24]
      else :
        node _T_3 = eq(UInt<7>("h63"), io.opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
        when _T_3 : @[src/main/scala/riscv/core/ALUControl.scala 21:21]
          io.alu_funct <= UInt<1>("h1") @[src/main/scala/riscv/core/ALUControl.scala 76:20]
        else :
          node _T_4 = eq(UInt<2>("h3"), io.opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
          when _T_4 : @[src/main/scala/riscv/core/ALUControl.scala 21:21]
            io.alu_funct <= UInt<1>("h1") @[src/main/scala/riscv/core/ALUControl.scala 79:20]
          else :
            node _T_5 = eq(UInt<6>("h23"), io.opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
            when _T_5 : @[src/main/scala/riscv/core/ALUControl.scala 21:21]
              io.alu_funct <= UInt<1>("h1") @[src/main/scala/riscv/core/ALUControl.scala 82:20]
            else :
              node _T_6 = eq(UInt<7>("h6f"), io.opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
              when _T_6 : @[src/main/scala/riscv/core/ALUControl.scala 21:21]
                io.alu_funct <= UInt<1>("h1") @[src/main/scala/riscv/core/ALUControl.scala 85:20]
              else :
                node _T_7 = eq(UInt<7>("h67"), io.opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
                when _T_7 : @[src/main/scala/riscv/core/ALUControl.scala 21:21]
                  io.alu_funct <= UInt<1>("h1") @[src/main/scala/riscv/core/ALUControl.scala 88:20]
                else :
                  node _T_8 = eq(UInt<6>("h37"), io.opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
                  when _T_8 : @[src/main/scala/riscv/core/ALUControl.scala 21:21]
                    io.alu_funct <= UInt<1>("h1") @[src/main/scala/riscv/core/ALUControl.scala 91:20]
                  else :
                    node _T_9 = eq(UInt<5>("h17"), io.opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
                    when _T_9 : @[src/main/scala/riscv/core/ALUControl.scala 21:21]
                      io.alu_funct <= UInt<1>("h1") @[src/main/scala/riscv/core/ALUControl.scala 94:20]


  module Execute :
    input clock : Clock
    input reset : Reset
    output io : { flip instruction : UInt<32>, flip instruction_address : UInt<32>, flip reg1_data : UInt<32>, flip reg2_data : UInt<32>, flip csr_read_data : UInt<32>, flip immediate_id : UInt<32>, flip aluop1_source_id : UInt<1>, flip aluop2_source_id : UInt<1>, flip memory_read_enable_id : UInt<1>, flip memory_write_enable_id : UInt<1>, flip regs_write_source_id : UInt<2>, flip interrupt_assert_clint : UInt<1>, flip interrupt_handler_address_clint : UInt<32>, flip memory_bundle : { flip address : UInt<32>, flip write_data : UInt<32>, flip write_enable : UInt<1>, flip write_strobe : UInt<1>[4], read_data : UInt<32>}, csr_write_data : UInt<32>, regs_write_data : UInt<32>, if_jump_flag : UInt<1>, if_jump_address : UInt<32>, clint_jump_flag : UInt<1>, clint_jump_address : UInt<32>} @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]

    node opcode = bits(io.instruction, 6, 0) @[src/main/scala/riscv/core/threestage/Execute.scala 36:30]
    node funct3 = bits(io.instruction, 14, 12) @[src/main/scala/riscv/core/threestage/Execute.scala 37:30]
    node funct7 = bits(io.instruction, 31, 25) @[src/main/scala/riscv/core/threestage/Execute.scala 38:30]
    node uimm = bits(io.instruction, 19, 15) @[src/main/scala/riscv/core/threestage/Execute.scala 39:30]
    inst alu of ALU @[src/main/scala/riscv/core/threestage/Execute.scala 42:24]
    alu.clock <= clock
    alu.reset <= reset
    inst alu_ctrl of ALUControl @[src/main/scala/riscv/core/threestage/Execute.scala 43:24]
    alu_ctrl.clock <= clock
    alu_ctrl.reset <= reset
    alu_ctrl.io.opcode <= opcode @[src/main/scala/riscv/core/threestage/Execute.scala 45:22]
    alu_ctrl.io.funct3 <= funct3 @[src/main/scala/riscv/core/threestage/Execute.scala 46:22]
    alu_ctrl.io.funct7 <= funct7 @[src/main/scala/riscv/core/threestage/Execute.scala 47:22]
    alu.io.func <= alu_ctrl.io.alu_funct @[src/main/scala/riscv/core/threestage/Execute.scala 48:22]
    node _alu_io_op1_T = eq(io.aluop1_source_id, UInt<1>("h1")) @[src/main/scala/riscv/core/threestage/Execute.scala 50:25]
    node _alu_io_op1_T_1 = mux(_alu_io_op1_T, io.instruction_address, io.reg1_data) @[src/main/scala/riscv/core/threestage/Execute.scala 49:20]
    alu.io.op1 <= _alu_io_op1_T_1 @[src/main/scala/riscv/core/threestage/Execute.scala 49:14]
    node _alu_io_op2_T = eq(io.aluop2_source_id, UInt<1>("h1")) @[src/main/scala/riscv/core/threestage/Execute.scala 55:25]
    node _alu_io_op2_T_1 = mux(_alu_io_op2_T, io.immediate_id, io.reg2_data) @[src/main/scala/riscv/core/threestage/Execute.scala 54:20]
    alu.io.op2 <= _alu_io_op2_T_1 @[src/main/scala/riscv/core/threestage/Execute.scala 54:14]
    node _io_csr_write_data_T = not(io.reg1_data) @[src/main/scala/riscv/core/threestage/Execute.scala 64:58]
    node _io_csr_write_data_T_1 = and(io.csr_read_data, _io_csr_write_data_T) @[src/main/scala/riscv/core/threestage/Execute.scala 64:55]
    node _io_csr_write_data_T_2 = or(io.csr_read_data, io.reg1_data) @[src/main/scala/riscv/core/threestage/Execute.scala 65:55]
    node _io_csr_write_data_T_3 = cat(UInt<27>("h0"), uimm) @[src/main/scala/riscv/core/threestage/Execute.scala 66:48]
    node _io_csr_write_data_T_4 = cat(UInt<27>("h0"), uimm) @[src/main/scala/riscv/core/threestage/Execute.scala 67:70]
    node _io_csr_write_data_T_5 = not(_io_csr_write_data_T_4) @[src/main/scala/riscv/core/threestage/Execute.scala 67:58]
    node _io_csr_write_data_T_6 = and(io.csr_read_data, _io_csr_write_data_T_5) @[src/main/scala/riscv/core/threestage/Execute.scala 67:55]
    node _io_csr_write_data_T_7 = cat(UInt<27>("h0"), uimm) @[src/main/scala/riscv/core/threestage/Execute.scala 68:67]
    node _io_csr_write_data_T_8 = or(io.csr_read_data, _io_csr_write_data_T_7) @[src/main/scala/riscv/core/threestage/Execute.scala 68:55]
    node _io_csr_write_data_T_9 = eq(UInt<1>("h1"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_write_data_T_10 = mux(_io_csr_write_data_T_9, io.reg1_data, UInt<1>("h0")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_write_data_T_11 = eq(UInt<2>("h3"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_write_data_T_12 = mux(_io_csr_write_data_T_11, _io_csr_write_data_T_1, _io_csr_write_data_T_10) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_write_data_T_13 = eq(UInt<2>("h2"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_write_data_T_14 = mux(_io_csr_write_data_T_13, _io_csr_write_data_T_2, _io_csr_write_data_T_12) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_write_data_T_15 = eq(UInt<3>("h5"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_write_data_T_16 = mux(_io_csr_write_data_T_15, _io_csr_write_data_T_3, _io_csr_write_data_T_14) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_write_data_T_17 = eq(UInt<3>("h7"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_write_data_T_18 = mux(_io_csr_write_data_T_17, _io_csr_write_data_T_6, _io_csr_write_data_T_16) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_write_data_T_19 = eq(UInt<3>("h6"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_write_data_T_20 = mux(_io_csr_write_data_T_19, _io_csr_write_data_T_8, _io_csr_write_data_T_18) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    io.csr_write_data <= _io_csr_write_data_T_20 @[src/main/scala/riscv/core/threestage/Execute.scala 59:21]
    node mem_address_index = bits(alu.io.result, 1, 0) @[src/main/scala/riscv/core/threestage/Execute.scala 73:40]
    wire mem_read_data : UInt<32> @[src/main/scala/riscv/core/threestage/Execute.scala 74:31]
    io.memory_bundle.write_enable <= io.memory_write_enable_id @[src/main/scala/riscv/core/threestage/Execute.scala 75:33]
    io.memory_bundle.write_data <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/Execute.scala 76:33]
    io.memory_bundle.address <= alu.io.result @[src/main/scala/riscv/core/threestage/Execute.scala 77:33]
    wire _WIRE : UInt<1>[4] @[src/main/scala/riscv/core/threestage/Execute.scala 78:43]
    _WIRE[0] <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/Execute.scala 78:43]
    _WIRE[1] <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/Execute.scala 78:43]
    _WIRE[2] <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/Execute.scala 78:43]
    _WIRE[3] <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/Execute.scala 78:43]
    io.memory_bundle.write_strobe <= _WIRE @[src/main/scala/riscv/core/threestage/Execute.scala 78:33]
    mem_read_data <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/Execute.scala 79:33]
    when io.memory_read_enable_id : @[src/main/scala/riscv/core/threestage/Execute.scala 81:34]
      node _mem_read_data_T = bits(io.memory_bundle.read_data, 31, 31) @[src/main/scala/riscv/core/threestage/Execute.scala 89:28]
      node _mem_read_data_T_1 = bits(_mem_read_data_T, 0, 0) @[src/main/scala/riscv/core/threestage/Execute.scala 89:19]
      node _mem_read_data_T_2 = mux(_mem_read_data_T_1, UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 89:19]
      node _mem_read_data_T_3 = bits(io.memory_bundle.read_data, 31, 24) @[src/main/scala/riscv/core/threestage/Execute.scala 89:39]
      node _mem_read_data_T_4 = cat(_mem_read_data_T_2, _mem_read_data_T_3) @[src/main/scala/riscv/core/threestage/Execute.scala 89:14]
      node _mem_read_data_T_5 = bits(io.memory_bundle.read_data, 7, 7) @[src/main/scala/riscv/core/threestage/Execute.scala 91:37]
      node _mem_read_data_T_6 = bits(_mem_read_data_T_5, 0, 0) @[src/main/scala/riscv/core/threestage/Execute.scala 91:28]
      node _mem_read_data_T_7 = mux(_mem_read_data_T_6, UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 91:28]
      node _mem_read_data_T_8 = bits(io.memory_bundle.read_data, 7, 0) @[src/main/scala/riscv/core/threestage/Execute.scala 91:47]
      node _mem_read_data_T_9 = cat(_mem_read_data_T_7, _mem_read_data_T_8) @[src/main/scala/riscv/core/threestage/Execute.scala 91:23]
      node _mem_read_data_T_10 = bits(io.memory_bundle.read_data, 15, 15) @[src/main/scala/riscv/core/threestage/Execute.scala 92:37]
      node _mem_read_data_T_11 = bits(_mem_read_data_T_10, 0, 0) @[src/main/scala/riscv/core/threestage/Execute.scala 92:28]
      node _mem_read_data_T_12 = mux(_mem_read_data_T_11, UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 92:28]
      node _mem_read_data_T_13 = bits(io.memory_bundle.read_data, 15, 8) @[src/main/scala/riscv/core/threestage/Execute.scala 92:48]
      node _mem_read_data_T_14 = cat(_mem_read_data_T_12, _mem_read_data_T_13) @[src/main/scala/riscv/core/threestage/Execute.scala 92:23]
      node _mem_read_data_T_15 = bits(io.memory_bundle.read_data, 23, 23) @[src/main/scala/riscv/core/threestage/Execute.scala 93:37]
      node _mem_read_data_T_16 = bits(_mem_read_data_T_15, 0, 0) @[src/main/scala/riscv/core/threestage/Execute.scala 93:28]
      node _mem_read_data_T_17 = mux(_mem_read_data_T_16, UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 93:28]
      node _mem_read_data_T_18 = bits(io.memory_bundle.read_data, 23, 16) @[src/main/scala/riscv/core/threestage/Execute.scala 93:48]
      node _mem_read_data_T_19 = cat(_mem_read_data_T_17, _mem_read_data_T_18) @[src/main/scala/riscv/core/threestage/Execute.scala 93:23]
      node _mem_read_data_T_20 = eq(UInt<1>("h0"), mem_address_index) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_21 = mux(_mem_read_data_T_20, _mem_read_data_T_9, _mem_read_data_T_4) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_22 = eq(UInt<1>("h1"), mem_address_index) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_23 = mux(_mem_read_data_T_22, _mem_read_data_T_14, _mem_read_data_T_21) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_24 = eq(UInt<2>("h2"), mem_address_index) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_25 = mux(_mem_read_data_T_24, _mem_read_data_T_19, _mem_read_data_T_23) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_26 = mux(UInt<1>("h0"), UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 98:19]
      node _mem_read_data_T_27 = bits(io.memory_bundle.read_data, 31, 24) @[src/main/scala/riscv/core/threestage/Execute.scala 98:34]
      node _mem_read_data_T_28 = cat(_mem_read_data_T_26, _mem_read_data_T_27) @[src/main/scala/riscv/core/threestage/Execute.scala 98:14]
      node _mem_read_data_T_29 = mux(UInt<1>("h0"), UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 100:28]
      node _mem_read_data_T_30 = bits(io.memory_bundle.read_data, 7, 0) @[src/main/scala/riscv/core/threestage/Execute.scala 100:43]
      node _mem_read_data_T_31 = cat(_mem_read_data_T_29, _mem_read_data_T_30) @[src/main/scala/riscv/core/threestage/Execute.scala 100:23]
      node _mem_read_data_T_32 = mux(UInt<1>("h0"), UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 101:28]
      node _mem_read_data_T_33 = bits(io.memory_bundle.read_data, 15, 8) @[src/main/scala/riscv/core/threestage/Execute.scala 101:43]
      node _mem_read_data_T_34 = cat(_mem_read_data_T_32, _mem_read_data_T_33) @[src/main/scala/riscv/core/threestage/Execute.scala 101:23]
      node _mem_read_data_T_35 = mux(UInt<1>("h0"), UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 102:28]
      node _mem_read_data_T_36 = bits(io.memory_bundle.read_data, 23, 16) @[src/main/scala/riscv/core/threestage/Execute.scala 102:43]
      node _mem_read_data_T_37 = cat(_mem_read_data_T_35, _mem_read_data_T_36) @[src/main/scala/riscv/core/threestage/Execute.scala 102:23]
      node _mem_read_data_T_38 = eq(UInt<1>("h0"), mem_address_index) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_39 = mux(_mem_read_data_T_38, _mem_read_data_T_31, _mem_read_data_T_28) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_40 = eq(UInt<1>("h1"), mem_address_index) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_41 = mux(_mem_read_data_T_40, _mem_read_data_T_34, _mem_read_data_T_39) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_42 = eq(UInt<2>("h2"), mem_address_index) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_43 = mux(_mem_read_data_T_42, _mem_read_data_T_37, _mem_read_data_T_41) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_44 = eq(mem_address_index, UInt<1>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 106:29]
      node _mem_read_data_T_45 = bits(io.memory_bundle.read_data, 15, 15) @[src/main/scala/riscv/core/threestage/Execute.scala 107:28]
      node _mem_read_data_T_46 = bits(_mem_read_data_T_45, 0, 0) @[src/main/scala/riscv/core/threestage/Execute.scala 107:19]
      node _mem_read_data_T_47 = mux(_mem_read_data_T_46, UInt<16>("hffff"), UInt<16>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 107:19]
      node _mem_read_data_T_48 = bits(io.memory_bundle.read_data, 15, 0) @[src/main/scala/riscv/core/threestage/Execute.scala 107:39]
      node _mem_read_data_T_49 = cat(_mem_read_data_T_47, _mem_read_data_T_48) @[src/main/scala/riscv/core/threestage/Execute.scala 107:14]
      node _mem_read_data_T_50 = bits(io.memory_bundle.read_data, 31, 31) @[src/main/scala/riscv/core/threestage/Execute.scala 108:28]
      node _mem_read_data_T_51 = bits(_mem_read_data_T_50, 0, 0) @[src/main/scala/riscv/core/threestage/Execute.scala 108:19]
      node _mem_read_data_T_52 = mux(_mem_read_data_T_51, UInt<16>("hffff"), UInt<16>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 108:19]
      node _mem_read_data_T_53 = bits(io.memory_bundle.read_data, 31, 16) @[src/main/scala/riscv/core/threestage/Execute.scala 108:39]
      node _mem_read_data_T_54 = cat(_mem_read_data_T_52, _mem_read_data_T_53) @[src/main/scala/riscv/core/threestage/Execute.scala 108:14]
      node _mem_read_data_T_55 = mux(_mem_read_data_T_44, _mem_read_data_T_49, _mem_read_data_T_54) @[src/main/scala/riscv/core/threestage/Execute.scala 105:36]
      node _mem_read_data_T_56 = eq(mem_address_index, UInt<1>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 111:29]
      node _mem_read_data_T_57 = mux(UInt<1>("h0"), UInt<16>("hffff"), UInt<16>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 112:19]
      node _mem_read_data_T_58 = bits(io.memory_bundle.read_data, 15, 0) @[src/main/scala/riscv/core/threestage/Execute.scala 112:34]
      node _mem_read_data_T_59 = cat(_mem_read_data_T_57, _mem_read_data_T_58) @[src/main/scala/riscv/core/threestage/Execute.scala 112:14]
      node _mem_read_data_T_60 = mux(UInt<1>("h0"), UInt<16>("hffff"), UInt<16>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 113:19]
      node _mem_read_data_T_61 = bits(io.memory_bundle.read_data, 31, 16) @[src/main/scala/riscv/core/threestage/Execute.scala 113:34]
      node _mem_read_data_T_62 = cat(_mem_read_data_T_60, _mem_read_data_T_61) @[src/main/scala/riscv/core/threestage/Execute.scala 113:14]
      node _mem_read_data_T_63 = mux(_mem_read_data_T_56, _mem_read_data_T_59, _mem_read_data_T_62) @[src/main/scala/riscv/core/threestage/Execute.scala 110:37]
      node _mem_read_data_T_64 = eq(UInt<1>("h0"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_65 = mux(_mem_read_data_T_64, _mem_read_data_T_25, UInt<1>("h0")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_66 = eq(UInt<3>("h4"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_67 = mux(_mem_read_data_T_66, _mem_read_data_T_43, _mem_read_data_T_65) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_68 = eq(UInt<1>("h1"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_69 = mux(_mem_read_data_T_68, _mem_read_data_T_55, _mem_read_data_T_67) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_70 = eq(UInt<3>("h5"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_71 = mux(_mem_read_data_T_70, _mem_read_data_T_63, _mem_read_data_T_69) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_72 = eq(UInt<2>("h2"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      node _mem_read_data_T_73 = mux(_mem_read_data_T_72, io.memory_bundle.read_data, _mem_read_data_T_71) @[src/main/scala/chisel3/util/Mux.scala 77:13]
      mem_read_data <= _mem_read_data_T_73 @[src/main/scala/riscv/core/threestage/Execute.scala 83:19]
    else :
      when io.memory_write_enable_id : @[src/main/scala/riscv/core/threestage/Execute.scala 118:41]
        io.memory_bundle.write_data <= io.reg2_data @[src/main/scala/riscv/core/threestage/Execute.scala 119:35]
        wire _WIRE_1 : UInt<1>[4] @[src/main/scala/riscv/core/threestage/Execute.scala 120:45]
        _WIRE_1[0] <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/Execute.scala 120:45]
        _WIRE_1[1] <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/Execute.scala 120:45]
        _WIRE_1[2] <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/Execute.scala 120:45]
        _WIRE_1[3] <= UInt<1>("h0") @[src/main/scala/riscv/core/threestage/Execute.scala 120:45]
        io.memory_bundle.write_strobe <= _WIRE_1 @[src/main/scala/riscv/core/threestage/Execute.scala 120:35]
        node _T = eq(funct3, UInt<1>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 121:17]
        when _T : @[src/main/scala/riscv/core/threestage/Execute.scala 121:43]
          io.memory_bundle.write_strobe[mem_address_index] <= UInt<1>("h1") @[src/main/scala/riscv/core/threestage/Execute.scala 122:56]
          node _io_memory_bundle_write_data_T = bits(io.reg2_data, 8, 0) @[src/main/scala/riscv/core/threestage/Execute.scala 123:50]
          node _io_memory_bundle_write_data_T_1 = dshl(mem_address_index, UInt<2>("h3")) @[src/main/scala/riscv/core/threestage/Execute.scala 123:97]
          node _io_memory_bundle_write_data_T_2 = dshl(_io_memory_bundle_write_data_T, _io_memory_bundle_write_data_T_1) @[src/main/scala/riscv/core/threestage/Execute.scala 123:75]
          io.memory_bundle.write_data <= _io_memory_bundle_write_data_T_2 @[src/main/scala/riscv/core/threestage/Execute.scala 123:35]
        else :
          node _T_1 = eq(funct3, UInt<1>("h1")) @[src/main/scala/riscv/core/threestage/Execute.scala 126:23]
          when _T_1 : @[src/main/scala/riscv/core/threestage/Execute.scala 126:49]
            node _T_2 = eq(mem_address_index, UInt<1>("h0")) @[src/main/scala/riscv/core/threestage/Execute.scala 127:30]
            when _T_2 : @[src/main/scala/riscv/core/threestage/Execute.scala 127:39]
              io.memory_bundle.write_strobe[0] <= UInt<1>("h1") @[src/main/scala/riscv/core/threestage/Execute.scala 129:44]
              io.memory_bundle.write_strobe[1] <= UInt<1>("h1") @[src/main/scala/riscv/core/threestage/Execute.scala 129:44]
              node _io_memory_bundle_write_data_T_3 = bits(io.reg2_data, 16, 0) @[src/main/scala/riscv/core/threestage/Execute.scala 131:52]
              io.memory_bundle.write_data <= _io_memory_bundle_write_data_T_3 @[src/main/scala/riscv/core/threestage/Execute.scala 131:37]
            else :
              io.memory_bundle.write_strobe[2] <= UInt<1>("h1") @[src/main/scala/riscv/core/threestage/Execute.scala 134:44]
              io.memory_bundle.write_strobe[3] <= UInt<1>("h1") @[src/main/scala/riscv/core/threestage/Execute.scala 134:44]
              node _io_memory_bundle_write_data_T_4 = bits(io.reg2_data, 16, 0) @[src/main/scala/riscv/core/threestage/Execute.scala 136:52]
              node _io_memory_bundle_write_data_T_5 = shl(_io_memory_bundle_write_data_T_4, 16) @[src/main/scala/riscv/core/threestage/Execute.scala 139:11]
              io.memory_bundle.write_data <= _io_memory_bundle_write_data_T_5 @[src/main/scala/riscv/core/threestage/Execute.scala 136:37]
          else :
            node _T_3 = eq(funct3, UInt<2>("h2")) @[src/main/scala/riscv/core/threestage/Execute.scala 141:23]
            when _T_3 : @[src/main/scala/riscv/core/threestage/Execute.scala 141:49]
              io.memory_bundle.write_strobe[0] <= UInt<1>("h1") @[src/main/scala/riscv/core/threestage/Execute.scala 143:42]
              io.memory_bundle.write_strobe[1] <= UInt<1>("h1") @[src/main/scala/riscv/core/threestage/Execute.scala 143:42]
              io.memory_bundle.write_strobe[2] <= UInt<1>("h1") @[src/main/scala/riscv/core/threestage/Execute.scala 143:42]
              io.memory_bundle.write_strobe[3] <= UInt<1>("h1") @[src/main/scala/riscv/core/threestage/Execute.scala 143:42]
    node _io_regs_write_data_T = add(io.instruction_address, UInt<3>("h4")) @[src/main/scala/riscv/core/threestage/Execute.scala 155:72]
    node _io_regs_write_data_T_1 = tail(_io_regs_write_data_T, 1) @[src/main/scala/riscv/core/threestage/Execute.scala 155:72]
    node _io_regs_write_data_T_2 = eq(UInt<2>("h1"), io.regs_write_source_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_regs_write_data_T_3 = mux(_io_regs_write_data_T_2, mem_read_data, alu.io.result) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_regs_write_data_T_4 = eq(UInt<2>("h2"), io.regs_write_source_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_regs_write_data_T_5 = mux(_io_regs_write_data_T_4, io.csr_read_data, _io_regs_write_data_T_3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_regs_write_data_T_6 = eq(UInt<2>("h3"), io.regs_write_source_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_regs_write_data_T_7 = mux(_io_regs_write_data_T_6, _io_regs_write_data_T_1, _io_regs_write_data_T_5) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    io.regs_write_data <= _io_regs_write_data_T_7 @[src/main/scala/riscv/core/threestage/Execute.scala 149:22]
    node _instruction_jump_flag_T = eq(opcode, UInt<7>("h6f")) @[src/main/scala/riscv/core/threestage/Execute.scala 160:39]
    node _instruction_jump_flag_T_1 = eq(opcode, UInt<7>("h67")) @[src/main/scala/riscv/core/threestage/Execute.scala 161:13]
    node _instruction_jump_flag_T_2 = or(_instruction_jump_flag_T, _instruction_jump_flag_T_1) @[src/main/scala/riscv/core/threestage/Execute.scala 160:61]
    node _instruction_jump_flag_T_3 = eq(opcode, UInt<7>("h63")) @[src/main/scala/riscv/core/threestage/Execute.scala 162:13]
    node _instruction_jump_flag_T_4 = eq(io.reg1_data, io.reg2_data) @[src/main/scala/riscv/core/threestage/Execute.scala 166:49]
    node _instruction_jump_flag_T_5 = neq(io.reg1_data, io.reg2_data) @[src/main/scala/riscv/core/threestage/Execute.scala 167:49]
    node _instruction_jump_flag_T_6 = asSInt(io.reg1_data) @[src/main/scala/riscv/core/threestage/Execute.scala 168:49]
    node _instruction_jump_flag_T_7 = asSInt(io.reg2_data) @[src/main/scala/riscv/core/threestage/Execute.scala 168:71]
    node _instruction_jump_flag_T_8 = lt(_instruction_jump_flag_T_6, _instruction_jump_flag_T_7) @[src/main/scala/riscv/core/threestage/Execute.scala 168:56]
    node _instruction_jump_flag_T_9 = asSInt(io.reg1_data) @[src/main/scala/riscv/core/threestage/Execute.scala 169:49]
    node _instruction_jump_flag_T_10 = asSInt(io.reg2_data) @[src/main/scala/riscv/core/threestage/Execute.scala 169:72]
    node _instruction_jump_flag_T_11 = geq(_instruction_jump_flag_T_9, _instruction_jump_flag_T_10) @[src/main/scala/riscv/core/threestage/Execute.scala 169:56]
    node _instruction_jump_flag_T_12 = lt(io.reg1_data, io.reg2_data) @[src/main/scala/riscv/core/threestage/Execute.scala 170:56]
    node _instruction_jump_flag_T_13 = geq(io.reg1_data, io.reg2_data) @[src/main/scala/riscv/core/threestage/Execute.scala 171:56]
    node _instruction_jump_flag_T_14 = eq(UInt<1>("h0"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _instruction_jump_flag_T_15 = mux(_instruction_jump_flag_T_14, _instruction_jump_flag_T_4, UInt<1>("h0")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _instruction_jump_flag_T_16 = eq(UInt<1>("h1"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _instruction_jump_flag_T_17 = mux(_instruction_jump_flag_T_16, _instruction_jump_flag_T_5, _instruction_jump_flag_T_15) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _instruction_jump_flag_T_18 = eq(UInt<3>("h4"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _instruction_jump_flag_T_19 = mux(_instruction_jump_flag_T_18, _instruction_jump_flag_T_8, _instruction_jump_flag_T_17) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _instruction_jump_flag_T_20 = eq(UInt<3>("h5"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _instruction_jump_flag_T_21 = mux(_instruction_jump_flag_T_20, _instruction_jump_flag_T_11, _instruction_jump_flag_T_19) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _instruction_jump_flag_T_22 = eq(UInt<3>("h6"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _instruction_jump_flag_T_23 = mux(_instruction_jump_flag_T_22, _instruction_jump_flag_T_12, _instruction_jump_flag_T_21) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _instruction_jump_flag_T_24 = eq(UInt<3>("h7"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _instruction_jump_flag_T_25 = mux(_instruction_jump_flag_T_24, _instruction_jump_flag_T_13, _instruction_jump_flag_T_23) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _instruction_jump_flag_T_26 = and(_instruction_jump_flag_T_3, _instruction_jump_flag_T_25) @[src/main/scala/riscv/core/threestage/Execute.scala 162:37]
    node instruction_jump_flag = or(_instruction_jump_flag_T_2, _instruction_jump_flag_T_26) @[src/main/scala/riscv/core/threestage/Execute.scala 161:36]
    io.clint_jump_flag <= instruction_jump_flag @[src/main/scala/riscv/core/threestage/Execute.scala 174:25]
    io.clint_jump_address <= alu.io.result @[src/main/scala/riscv/core/threestage/Execute.scala 175:25]
    node _io_if_jump_flag_T = or(io.interrupt_assert_clint, instruction_jump_flag) @[src/main/scala/riscv/core/threestage/Execute.scala 176:54]
    io.if_jump_flag <= _io_if_jump_flag_T @[src/main/scala/riscv/core/threestage/Execute.scala 176:25]
    node _io_if_jump_address_T = mux(io.interrupt_assert_clint, io.interrupt_handler_address_clint, alu.io.result) @[src/main/scala/riscv/core/threestage/Execute.scala 177:31]
    io.if_jump_address <= _io_if_jump_address_T @[src/main/scala/riscv/core/threestage/Execute.scala 177:25]

  module CLINT :
    input clock : Clock
    input reset : Reset
    output io : { flip interrupt_flag : UInt<32>, flip instruction_ex : UInt<32>, flip instruction_address_if : UInt<32>, flip instruction_address_id : UInt<32>, flip jump_flag : UInt<1>, flip jump_address : UInt<32>, ex_interrupt_handler_address : UInt<32>, ex_interrupt_assert : UInt<1>, csr_bundle : { flip mstatus : UInt<32>, flip mepc : UInt<32>, flip mcause : UInt<32>, flip mtvec : UInt<32>, mstatus_write_data : UInt<32>, mepc_write_data : UInt<32>, mcause_write_data : UInt<32>, direct_write_enable : UInt<1>}} @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]

    node interrupt_enable = bits(io.csr_bundle.mstatus, 3, 3) @[src/main/scala/riscv/core/threestage/CLINT.scala 43:47]
    node _jumpping_T = or(io.jump_flag, io.ex_interrupt_assert) @[src/main/scala/riscv/core/threestage/CLINT.scala 44:47]
    reg jumpping : UInt<1>, clock with :
      reset => (UInt<1>("h0"), jumpping) @[src/main/scala/riscv/core/threestage/CLINT.scala 44:33]
    jumpping <= _jumpping_T @[src/main/scala/riscv/core/threestage/CLINT.scala 44:33]
    node _instruction_address_T = mux(jumpping, io.instruction_address_if, io.instruction_address_id) @[src/main/scala/riscv/core/threestage/CLINT.scala 48:8]
    node instruction_address = mux(io.jump_flag, io.jump_address, _instruction_address_T) @[src/main/scala/riscv/core/threestage/CLINT.scala 45:32]
    node _mstatus_disable_interrupt_T = bits(io.csr_bundle.mstatus, 31, 4) @[src/main/scala/riscv/core/threestage/CLINT.scala 50:56]
    node _mstatus_disable_interrupt_T_1 = cat(_mstatus_disable_interrupt_T, UInt<1>("h0")) @[src/main/scala/riscv/core/threestage/CLINT.scala 50:64]
    node _mstatus_disable_interrupt_T_2 = bits(io.csr_bundle.mstatus, 2, 0) @[src/main/scala/riscv/core/threestage/CLINT.scala 50:100]
    node mstatus_disable_interrupt = cat(_mstatus_disable_interrupt_T_1, _mstatus_disable_interrupt_T_2) @[src/main/scala/riscv/core/threestage/CLINT.scala 50:76]
    node _mstatus_recover_interrupt_T = bits(io.csr_bundle.mstatus, 31, 4) @[src/main/scala/riscv/core/threestage/CLINT.scala 52:26]
    node _mstatus_recover_interrupt_T_1 = bits(io.csr_bundle.mstatus, 7, 7) @[src/main/scala/riscv/core/threestage/CLINT.scala 52:58]
    node _mstatus_recover_interrupt_T_2 = cat(_mstatus_recover_interrupt_T, _mstatus_recover_interrupt_T_1) @[src/main/scala/riscv/core/threestage/CLINT.scala 52:34]
    node _mstatus_recover_interrupt_T_3 = bits(io.csr_bundle.mstatus, 2, 0) @[src/main/scala/riscv/core/threestage/CLINT.scala 52:86]
    node mstatus_recover_interrupt = cat(_mstatus_recover_interrupt_T_2, _mstatus_recover_interrupt_T_3) @[src/main/scala/riscv/core/threestage/CLINT.scala 52:62]
    node _exception_T = eq(io.instruction_ex, UInt<32>("h73")) @[src/main/scala/riscv/core/threestage/CLINT.scala 53:44]
    node _exception_T_1 = eq(io.instruction_ex, UInt<32>("h100073")) @[src/main/scala/riscv/core/threestage/CLINT.scala 53:91]
    node exception = or(_exception_T, _exception_T_1) @[src/main/scala/riscv/core/threestage/CLINT.scala 53:70]
    node _interrupt_T = neq(io.interrupt_flag, UInt<8>("h0")) @[src/main/scala/riscv/core/threestage/CLINT.scala 54:44]
    node interrupt = and(_interrupt_T, interrupt_enable) @[src/main/scala/riscv/core/threestage/CLINT.scala 54:69]
    node mret = eq(io.instruction_ex, UInt<32>("h30200073")) @[src/main/scala/riscv/core/threestage/CLINT.scala 55:44]
    node _interrupt_assert_T = or(exception, interrupt) @[src/main/scala/riscv/core/threestage/CLINT.scala 56:36]
    node interrupt_assert = or(_interrupt_assert_T, mret) @[src/main/scala/riscv/core/threestage/CLINT.scala 56:49]
    node _io_csr_bundle_mstatus_write_data_T = mux(mret, mstatus_recover_interrupt, mstatus_disable_interrupt) @[src/main/scala/riscv/core/threestage/CLINT.scala 58:42]
    io.csr_bundle.mstatus_write_data <= _io_csr_bundle_mstatus_write_data_T @[src/main/scala/riscv/core/threestage/CLINT.scala 58:36]
    io.csr_bundle.mepc_write_data <= instruction_address @[src/main/scala/riscv/core/threestage/CLINT.scala 59:36]
    node _io_csr_bundle_mcause_write_data_T = eq(UInt<32>("h73"), io.instruction_ex) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_bundle_mcause_write_data_T_1 = mux(_io_csr_bundle_mcause_write_data_T, UInt<4>("hb"), UInt<4>("ha")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_bundle_mcause_write_data_T_2 = eq(UInt<32>("h100073"), io.instruction_ex) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_bundle_mcause_write_data_T_3 = mux(_io_csr_bundle_mcause_write_data_T_2, UInt<2>("h3"), _io_csr_bundle_mcause_write_data_T_1) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_bundle_mcause_write_data_T_4 = bits(io.interrupt_flag, 0, 0) @[src/main/scala/riscv/core/threestage/CLINT.scala 70:26]
    node _io_csr_bundle_mcause_write_data_T_5 = mux(_io_csr_bundle_mcause_write_data_T_4, UInt<32>("h80000007"), UInt<32>("h8000000b")) @[src/main/scala/riscv/core/threestage/CLINT.scala 70:8]
    node _io_csr_bundle_mcause_write_data_T_6 = mux(exception, _io_csr_bundle_mcause_write_data_T_3, _io_csr_bundle_mcause_write_data_T_5) @[src/main/scala/riscv/core/threestage/CLINT.scala 60:41]
    io.csr_bundle.mcause_write_data <= _io_csr_bundle_mcause_write_data_T_6 @[src/main/scala/riscv/core/threestage/CLINT.scala 60:35]
    io.csr_bundle.direct_write_enable <= interrupt_assert @[src/main/scala/riscv/core/threestage/CLINT.scala 72:37]
    io.ex_interrupt_assert <= interrupt_assert @[src/main/scala/riscv/core/threestage/CLINT.scala 73:37]
    node _io_ex_interrupt_handler_address_T = mux(mret, io.csr_bundle.mepc, io.csr_bundle.mtvec) @[src/main/scala/riscv/core/threestage/CLINT.scala 74:43]
    io.ex_interrupt_handler_address <= _io_ex_interrupt_handler_address_T @[src/main/scala/riscv/core/threestage/CLINT.scala 74:37]

  module CSR :
    input clock : Clock
    input reset : Reset
    output io : { flip reg_read_address_id : UInt<12>, flip reg_write_enable_ex : UInt<1>, flip reg_write_address_ex : UInt<12>, flip reg_write_data_ex : UInt<32>, id_reg_read_data : UInt<32>, flip clint_access_bundle : { flip mstatus : UInt<32>, flip mepc : UInt<32>, flip mcause : UInt<32>, flip mtvec : UInt<32>, mstatus_write_data : UInt<32>, mepc_write_data : UInt<32>, mcause_write_data : UInt<32>, direct_write_enable : UInt<1>}} @[src/main/scala/riscv/core/CSR.scala 21:14]

    reg mstatus : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/CSR.scala 32:25]
    reg mie : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/CSR.scala 33:25]
    reg mtvec : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/CSR.scala 34:25]
    reg mscratch : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/CSR.scala 35:25]
    reg mepc : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/CSR.scala 36:25]
    reg mcause : UInt<32>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/CSR.scala 37:25]
    reg cycles : UInt<64>, clock with :
      reset => (reset, UInt<1>("h0")) @[src/main/scala/riscv/core/CSR.scala 38:25]
    node _T = bits(cycles, 31, 0) @[src/main/scala/riscv/core/CSR.scala 47:37]
    node _T_1 = bits(cycles, 63, 32) @[src/main/scala/riscv/core/CSR.scala 48:37]
    node _cycles_T = add(cycles, UInt<1>("h1")) @[src/main/scala/riscv/core/CSR.scala 50:20]
    node _cycles_T_1 = tail(_cycles_T, 1) @[src/main/scala/riscv/core/CSR.scala 50:20]
    cycles <= _cycles_T_1 @[src/main/scala/riscv/core/CSR.scala 50:10]
    node _io_id_reg_read_data_T = eq(UInt<12>("h300"), io.reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_1 = mux(_io_id_reg_read_data_T, mstatus, UInt<1>("h0")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_2 = eq(UInt<12>("h304"), io.reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_3 = mux(_io_id_reg_read_data_T_2, mie, _io_id_reg_read_data_T_1) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_4 = eq(UInt<12>("h305"), io.reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_5 = mux(_io_id_reg_read_data_T_4, mtvec, _io_id_reg_read_data_T_3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_6 = eq(UInt<12>("h340"), io.reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_7 = mux(_io_id_reg_read_data_T_6, mscratch, _io_id_reg_read_data_T_5) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_8 = eq(UInt<12>("h341"), io.reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_9 = mux(_io_id_reg_read_data_T_8, mepc, _io_id_reg_read_data_T_7) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_10 = eq(UInt<12>("h342"), io.reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_11 = mux(_io_id_reg_read_data_T_10, mcause, _io_id_reg_read_data_T_9) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_12 = eq(UInt<12>("hc00"), io.reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_13 = mux(_io_id_reg_read_data_T_12, _T, _io_id_reg_read_data_T_11) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_14 = eq(UInt<12>("hc80"), io.reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_15 = mux(_io_id_reg_read_data_T_14, _T_1, _io_id_reg_read_data_T_13) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    io.id_reg_read_data <= _io_id_reg_read_data_T_15 @[src/main/scala/riscv/core/CSR.scala 54:23]
    node _io_clint_access_bundle_mstatus_T = eq(io.reg_write_address_ex, UInt<12>("h300")) @[src/main/scala/riscv/core/CSR.scala 57:55]
    node _io_clint_access_bundle_mstatus_T_1 = and(io.reg_write_enable_ex, _io_clint_access_bundle_mstatus_T) @[src/main/scala/riscv/core/CSR.scala 57:28]
    node _io_clint_access_bundle_mstatus_T_2 = mux(_io_clint_access_bundle_mstatus_T_1, io.reg_write_data_ex, mstatus) @[src/main/scala/riscv/core/CSR.scala 56:40]
    io.clint_access_bundle.mstatus <= _io_clint_access_bundle_mstatus_T_2 @[src/main/scala/riscv/core/CSR.scala 56:34]
    node _io_clint_access_bundle_mtvec_T = eq(io.reg_write_address_ex, UInt<12>("h305")) @[src/main/scala/riscv/core/CSR.scala 62:55]
    node _io_clint_access_bundle_mtvec_T_1 = and(io.reg_write_enable_ex, _io_clint_access_bundle_mtvec_T) @[src/main/scala/riscv/core/CSR.scala 62:28]
    node _io_clint_access_bundle_mtvec_T_2 = mux(_io_clint_access_bundle_mtvec_T_1, io.reg_write_data_ex, mtvec) @[src/main/scala/riscv/core/CSR.scala 61:38]
    io.clint_access_bundle.mtvec <= _io_clint_access_bundle_mtvec_T_2 @[src/main/scala/riscv/core/CSR.scala 61:32]
    node _io_clint_access_bundle_mcause_T = eq(io.reg_write_address_ex, UInt<12>("h342")) @[src/main/scala/riscv/core/CSR.scala 67:55]
    node _io_clint_access_bundle_mcause_T_1 = and(io.reg_write_enable_ex, _io_clint_access_bundle_mcause_T) @[src/main/scala/riscv/core/CSR.scala 67:28]
    node _io_clint_access_bundle_mcause_T_2 = mux(_io_clint_access_bundle_mcause_T_1, io.reg_write_data_ex, mcause) @[src/main/scala/riscv/core/CSR.scala 66:39]
    io.clint_access_bundle.mcause <= _io_clint_access_bundle_mcause_T_2 @[src/main/scala/riscv/core/CSR.scala 66:33]
    node _io_clint_access_bundle_mepc_T = eq(io.reg_write_address_ex, UInt<12>("h341")) @[src/main/scala/riscv/core/CSR.scala 72:55]
    node _io_clint_access_bundle_mepc_T_1 = and(io.reg_write_enable_ex, _io_clint_access_bundle_mepc_T) @[src/main/scala/riscv/core/CSR.scala 72:28]
    node _io_clint_access_bundle_mepc_T_2 = mux(_io_clint_access_bundle_mepc_T_1, io.reg_write_data_ex, mepc) @[src/main/scala/riscv/core/CSR.scala 71:37]
    io.clint_access_bundle.mepc <= _io_clint_access_bundle_mepc_T_2 @[src/main/scala/riscv/core/CSR.scala 71:31]
    when io.clint_access_bundle.direct_write_enable : @[src/main/scala/riscv/core/CSR.scala 77:52]
      mstatus <= io.clint_access_bundle.mstatus_write_data @[src/main/scala/riscv/core/CSR.scala 78:13]
      mepc <= io.clint_access_bundle.mepc_write_data @[src/main/scala/riscv/core/CSR.scala 79:13]
      mcause <= io.clint_access_bundle.mcause_write_data @[src/main/scala/riscv/core/CSR.scala 80:13]
    else :
      when io.reg_write_enable_ex : @[src/main/scala/riscv/core/CSR.scala 81:38]
        node _T_2 = eq(io.reg_write_address_ex, UInt<12>("h300")) @[src/main/scala/riscv/core/CSR.scala 82:34]
        when _T_2 : @[src/main/scala/riscv/core/CSR.scala 82:59]
          mstatus <= io.reg_write_data_ex @[src/main/scala/riscv/core/CSR.scala 83:15]
        else :
          node _T_3 = eq(io.reg_write_address_ex, UInt<12>("h341")) @[src/main/scala/riscv/core/CSR.scala 84:40]
          when _T_3 : @[src/main/scala/riscv/core/CSR.scala 84:62]
            mepc <= io.reg_write_data_ex @[src/main/scala/riscv/core/CSR.scala 85:12]
          else :
            node _T_4 = eq(io.reg_write_address_ex, UInt<12>("h342")) @[src/main/scala/riscv/core/CSR.scala 86:40]
            when _T_4 : @[src/main/scala/riscv/core/CSR.scala 86:64]
              mcause <= io.reg_write_data_ex @[src/main/scala/riscv/core/CSR.scala 87:14]
    when io.reg_write_enable_ex : @[src/main/scala/riscv/core/CSR.scala 91:32]
      node _T_5 = eq(io.reg_write_address_ex, UInt<12>("h304")) @[src/main/scala/riscv/core/CSR.scala 92:34]
      when _T_5 : @[src/main/scala/riscv/core/CSR.scala 92:55]
        mie <= io.reg_write_data_ex @[src/main/scala/riscv/core/CSR.scala 93:11]
      else :
        node _T_6 = eq(io.reg_write_address_ex, UInt<12>("h305")) @[src/main/scala/riscv/core/CSR.scala 94:40]
        when _T_6 : @[src/main/scala/riscv/core/CSR.scala 94:63]
          mtvec <= io.reg_write_data_ex @[src/main/scala/riscv/core/CSR.scala 95:13]
        else :
          node _T_7 = eq(io.reg_write_address_ex, UInt<12>("h340")) @[src/main/scala/riscv/core/CSR.scala 96:40]
          when _T_7 : @[src/main/scala/riscv/core/CSR.scala 96:66]
            mscratch <= io.reg_write_data_ex @[src/main/scala/riscv/core/CSR.scala 97:16]


  module CPU :
    input clock : Clock
    input reset : Reset
    output io : { instruction_address : UInt<32>, flip instruction : UInt<32>, flip instruction_valid : UInt<1>, flip memory_bundle : { flip address : UInt<32>, flip write_data : UInt<32>, flip write_enable : UInt<1>, flip write_strobe : UInt<1>[4], read_data : UInt<32>}, device_select : UInt<3>, flip interrupt_flag : UInt<32>, flip debug_read_address : UInt<5>, debug_read_data : UInt<32>} @[src/main/scala/riscv/core/threestage/CPU.scala 10:14]

    inst ctrl of Control @[src/main/scala/riscv/core/threestage/CPU.scala 12:26]
    ctrl.clock <= clock
    ctrl.reset <= reset
    inst regs of RegisterFile @[src/main/scala/riscv/core/threestage/CPU.scala 13:26]
    regs.clock <= clock
    regs.reset <= reset
    inst inst_fetch of InstructionFetch @[src/main/scala/riscv/core/threestage/CPU.scala 14:26]
    inst_fetch.clock <= clock
    inst_fetch.reset <= reset
    inst if2id of IF2ID @[src/main/scala/riscv/core/threestage/CPU.scala 15:26]
    if2id.clock <= clock
    if2id.reset <= reset
    inst id of InstructionDecode @[src/main/scala/riscv/core/threestage/CPU.scala 16:26]
    id.clock <= clock
    id.reset <= reset
    inst id2ex of ID2EX @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
    id2ex.clock <= clock
    id2ex.reset <= reset
    inst ex of Execute @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
    ex.clock <= clock
    ex.reset <= reset
    inst clint of CLINT @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
    clint.clock <= clock
    clint.reset <= reset
    inst csr_regs of CSR @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
    csr_regs.clock <= clock
    csr_regs.reset <= reset
    ctrl.io.JumpFlag <= ex.io.if_jump_flag @[src/main/scala/riscv/core/threestage/CPU.scala 22:20]
    if2id.io.flush <= ctrl.io.Flush @[src/main/scala/riscv/core/threestage/CPU.scala 23:20]
    id2ex.io.flush <= ctrl.io.Flush @[src/main/scala/riscv/core/threestage/CPU.scala 24:20]
    regs.io.write_enable <= id2ex.io.output_regs_write_enable @[src/main/scala/riscv/core/threestage/CPU.scala 26:30]
    regs.io.write_address <= id2ex.io.output_regs_write_address @[src/main/scala/riscv/core/threestage/CPU.scala 27:30]
    regs.io.write_data <= ex.io.regs_write_data @[src/main/scala/riscv/core/threestage/CPU.scala 28:30]
    regs.io.read_address1 <= id.io.regs_reg1_read_address @[src/main/scala/riscv/core/threestage/CPU.scala 29:30]
    regs.io.read_address2 <= id.io.regs_reg2_read_address @[src/main/scala/riscv/core/threestage/CPU.scala 30:30]
    regs.io.debug_read_address <= io.debug_read_address @[src/main/scala/riscv/core/threestage/CPU.scala 31:30]
    io.debug_read_data <= regs.io.debug_read_data @[src/main/scala/riscv/core/threestage/CPU.scala 32:30]
    io.instruction_address <= inst_fetch.io.instruction_address @[src/main/scala/riscv/core/threestage/CPU.scala 34:35]
    inst_fetch.io.jump_flag_ex <= ex.io.if_jump_flag @[src/main/scala/riscv/core/threestage/CPU.scala 35:35]
    inst_fetch.io.jump_address_ex <= ex.io.if_jump_address @[src/main/scala/riscv/core/threestage/CPU.scala 36:35]
    inst_fetch.io.rom_instruction <= io.instruction @[src/main/scala/riscv/core/threestage/CPU.scala 37:35]
    inst_fetch.io.instruction_valid <= io.instruction_valid @[src/main/scala/riscv/core/threestage/CPU.scala 38:35]
    if2id.io.instruction <= inst_fetch.io.id_instruction @[src/main/scala/riscv/core/threestage/CPU.scala 40:32]
    if2id.io.instruction_address <= inst_fetch.io.instruction_address @[src/main/scala/riscv/core/threestage/CPU.scala 41:32]
    if2id.io.interrupt_flag <= io.interrupt_flag @[src/main/scala/riscv/core/threestage/CPU.scala 42:32]
    id.io.instruction <= if2id.io.output_instruction @[src/main/scala/riscv/core/threestage/CPU.scala 44:21]
    id2ex.io.instruction <= if2id.io.output_instruction @[src/main/scala/riscv/core/threestage/CPU.scala 46:32]
    id2ex.io.instruction_address <= if2id.io.output_instruction_address @[src/main/scala/riscv/core/threestage/CPU.scala 47:32]
    id2ex.io.reg1_data <= regs.io.read_data1 @[src/main/scala/riscv/core/threestage/CPU.scala 48:32]
    id2ex.io.reg2_data <= regs.io.read_data2 @[src/main/scala/riscv/core/threestage/CPU.scala 49:32]
    id2ex.io.regs_write_enable <= id.io.ex_reg_write_enable @[src/main/scala/riscv/core/threestage/CPU.scala 50:32]
    id2ex.io.regs_write_address <= id.io.ex_reg_write_address @[src/main/scala/riscv/core/threestage/CPU.scala 51:32]
    id2ex.io.regs_write_source <= id.io.ex_reg_write_source @[src/main/scala/riscv/core/threestage/CPU.scala 52:32]
    id2ex.io.immediate <= id.io.ex_immediate @[src/main/scala/riscv/core/threestage/CPU.scala 53:32]
    id2ex.io.aluop1_source <= id.io.ex_aluop1_source @[src/main/scala/riscv/core/threestage/CPU.scala 54:32]
    id2ex.io.aluop2_source <= id.io.ex_aluop2_source @[src/main/scala/riscv/core/threestage/CPU.scala 55:32]
    id2ex.io.csr_write_enable <= id.io.ex_csr_write_enable @[src/main/scala/riscv/core/threestage/CPU.scala 56:32]
    id2ex.io.csr_address <= id.io.ex_csr_address @[src/main/scala/riscv/core/threestage/CPU.scala 57:32]
    id2ex.io.memory_read_enable <= id.io.ex_memory_read_enable @[src/main/scala/riscv/core/threestage/CPU.scala 58:32]
    id2ex.io.memory_write_enable <= id.io.ex_memory_write_enable @[src/main/scala/riscv/core/threestage/CPU.scala 59:32]
    id2ex.io.csr_read_data <= csr_regs.io.id_reg_read_data @[src/main/scala/riscv/core/threestage/CPU.scala 60:32]
    ex.io.instruction <= id2ex.io.output_instruction @[src/main/scala/riscv/core/threestage/CPU.scala 62:41]
    ex.io.instruction_address <= id2ex.io.output_instruction_address @[src/main/scala/riscv/core/threestage/CPU.scala 63:41]
    ex.io.reg1_data <= id2ex.io.output_reg1_data @[src/main/scala/riscv/core/threestage/CPU.scala 64:41]
    ex.io.reg2_data <= id2ex.io.output_reg2_data @[src/main/scala/riscv/core/threestage/CPU.scala 65:41]
    ex.io.csr_read_data <= id2ex.io.output_csr_read_data @[src/main/scala/riscv/core/threestage/CPU.scala 66:41]
    ex.io.immediate_id <= id2ex.io.output_immediate @[src/main/scala/riscv/core/threestage/CPU.scala 67:41]
    ex.io.aluop1_source_id <= id2ex.io.output_aluop1_source @[src/main/scala/riscv/core/threestage/CPU.scala 68:41]
    ex.io.aluop2_source_id <= id2ex.io.output_aluop2_source @[src/main/scala/riscv/core/threestage/CPU.scala 69:41]
    ex.io.memory_read_enable_id <= id2ex.io.output_memory_read_enable @[src/main/scala/riscv/core/threestage/CPU.scala 70:41]
    ex.io.memory_write_enable_id <= id2ex.io.output_memory_write_enable @[src/main/scala/riscv/core/threestage/CPU.scala 71:41]
    ex.io.regs_write_source_id <= id2ex.io.output_regs_write_source @[src/main/scala/riscv/core/threestage/CPU.scala 72:41]
    ex.io.interrupt_assert_clint <= clint.io.ex_interrupt_assert @[src/main/scala/riscv/core/threestage/CPU.scala 73:41]
    ex.io.interrupt_handler_address_clint <= clint.io.ex_interrupt_handler_address @[src/main/scala/riscv/core/threestage/CPU.scala 74:41]
    node _io_device_select_T = bits(ex.io.memory_bundle.address, 31, 29) @[src/main/scala/riscv/core/threestage/CPU.scala 76:13]
    io.device_select <= _io_device_select_T @[src/main/scala/riscv/core/threestage/CPU.scala 75:20]
    ex.io.memory_bundle <= io.memory_bundle @[src/main/scala/riscv/core/threestage/CPU.scala 77:20]
    node _io_memory_bundle_address_T = bits(ex.io.memory_bundle.address, 28, 0) @[src/main/scala/riscv/core/threestage/CPU.scala 79:13]
    node _io_memory_bundle_address_T_1 = cat(UInt<3>("h0"), _io_memory_bundle_address_T) @[src/main/scala/riscv/core/threestage/CPU.scala 78:70]
    io.memory_bundle.address <= _io_memory_bundle_address_T_1 @[src/main/scala/riscv/core/threestage/CPU.scala 78:28]
    clint.io.instruction_address_if <= inst_fetch.io.instruction_address @[src/main/scala/riscv/core/threestage/CPU.scala 81:35]
    clint.io.instruction_address_id <= if2id.io.output_instruction_address @[src/main/scala/riscv/core/threestage/CPU.scala 82:35]
    clint.io.instruction_ex <= id2ex.io.output_instruction @[src/main/scala/riscv/core/threestage/CPU.scala 83:35]
    clint.io.jump_flag <= ex.io.clint_jump_flag @[src/main/scala/riscv/core/threestage/CPU.scala 84:35]
    clint.io.jump_address <= ex.io.clint_jump_address @[src/main/scala/riscv/core/threestage/CPU.scala 85:35]
    clint.io.interrupt_flag <= if2id.io.output_interrupt_flag @[src/main/scala/riscv/core/threestage/CPU.scala 86:35]
    csr_regs.io.clint_access_bundle <= clint.io.csr_bundle @[src/main/scala/riscv/core/threestage/CPU.scala 87:23]
    csr_regs.io.reg_read_address_id <= id.io.ex_csr_address @[src/main/scala/riscv/core/threestage/CPU.scala 89:36]
    csr_regs.io.reg_write_enable_ex <= id2ex.io.output_csr_write_enable @[src/main/scala/riscv/core/threestage/CPU.scala 90:36]
    csr_regs.io.reg_write_address_ex <= id2ex.io.output_csr_address @[src/main/scala/riscv/core/threestage/CPU.scala 91:36]
    csr_regs.io.reg_write_data_ex <= ex.io.csr_write_data @[src/main/scala/riscv/core/threestage/CPU.scala 92:36]

  module CPU_1 :
    input clock : Clock
    input reset : Reset
    output io : { instruction_address : UInt<32>, flip instruction : UInt<32>, flip instruction_valid : UInt<1>, flip memory_bundle : { flip address : UInt<32>, flip write_data : UInt<32>, flip write_enable : UInt<1>, flip write_strobe : UInt<1>[4], read_data : UInt<32>}, device_select : UInt<3>, flip interrupt_flag : UInt<32>, flip debug_read_address : UInt<5>, debug_read_data : UInt<32>} @[src/main/scala/riscv/core/CPU.scala 11:14]

    inst cpu of CPU @[src/main/scala/riscv/core/CPU.scala 14:23]
    cpu.clock <= clock
    cpu.reset <= reset
    io.debug_read_data <= cpu.io.debug_read_data @[src/main/scala/riscv/core/CPU.scala 15:14]
    cpu.io.debug_read_address <= io.debug_read_address @[src/main/scala/riscv/core/CPU.scala 15:14]
    cpu.io.interrupt_flag <= io.interrupt_flag @[src/main/scala/riscv/core/CPU.scala 15:14]
    io.device_select <= cpu.io.device_select @[src/main/scala/riscv/core/CPU.scala 15:14]
    cpu.io.memory_bundle <= io.memory_bundle @[src/main/scala/riscv/core/CPU.scala 15:14]
    cpu.io.instruction_valid <= io.instruction_valid @[src/main/scala/riscv/core/CPU.scala 15:14]
    cpu.io.instruction <= io.instruction @[src/main/scala/riscv/core/CPU.scala 15:14]
    io.instruction_address <= cpu.io.instruction_address @[src/main/scala/riscv/core/CPU.scala 15:14]

  module Top :
    input clock : Clock
    input reset : UInt<1>
    output io : { instruction_address : UInt<32>, flip instruction : UInt<32>, flip instruction_valid : UInt<1>, flip memory_bundle : { flip address : UInt<32>, flip write_data : UInt<32>, flip write_enable : UInt<1>, flip write_strobe : UInt<1>[4], read_data : UInt<32>}, device_select : UInt<3>, flip interrupt_flag : UInt<32>, flip debug_read_address : UInt<5>, debug_read_data : UInt<32>} @[src/main/scala/board/verilator/Top.scala 11:14]

    inst cpu of CPU_1 @[src/main/scala/board/verilator/Top.scala 13:19]
    cpu.clock <= clock
    cpu.reset <= reset
    io.device_select <= UInt<1>("h0") @[src/main/scala/board/verilator/Top.scala 15:29]
    cpu.io.debug_read_address <= io.debug_read_address @[src/main/scala/board/verilator/Top.scala 16:29]
    io.debug_read_data <= cpu.io.debug_read_data @[src/main/scala/board/verilator/Top.scala 17:29]
    cpu.io.memory_bundle <= io.memory_bundle @[src/main/scala/board/verilator/Top.scala 19:20]
    io.instruction_address <= cpu.io.instruction_address @[src/main/scala/board/verilator/Top.scala 20:26]
    cpu.io.instruction <= io.instruction @[src/main/scala/board/verilator/Top.scala 21:26]
    cpu.io.interrupt_flag <= io.interrupt_flag @[src/main/scala/board/verilator/Top.scala 23:28]
    cpu.io.instruction_valid <= io.instruction_valid @[src/main/scala/board/verilator/Top.scala 24:28]

