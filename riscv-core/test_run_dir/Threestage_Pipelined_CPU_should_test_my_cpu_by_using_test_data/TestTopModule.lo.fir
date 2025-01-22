FIRRTL version 1.2.0
circuit TestTopModule :
  module Memory :
    input clock : Clock
    input reset : UInt<1>
    input io_bundle_address : UInt<32> @[src/main/scala/peripheral/Memory.scala 42:14]
    input io_bundle_write_data : UInt<32> @[src/main/scala/peripheral/Memory.scala 42:14]
    input io_bundle_write_enable : UInt<1> @[src/main/scala/peripheral/Memory.scala 42:14]
    input io_bundle_write_strobe_0 : UInt<1> @[src/main/scala/peripheral/Memory.scala 42:14]
    input io_bundle_write_strobe_1 : UInt<1> @[src/main/scala/peripheral/Memory.scala 42:14]
    input io_bundle_write_strobe_2 : UInt<1> @[src/main/scala/peripheral/Memory.scala 42:14]
    input io_bundle_write_strobe_3 : UInt<1> @[src/main/scala/peripheral/Memory.scala 42:14]
    output io_bundle_read_data : UInt<32> @[src/main/scala/peripheral/Memory.scala 42:14]
    output io_instruction : UInt<32> @[src/main/scala/peripheral/Memory.scala 42:14]
    input io_instruction_address : UInt<32> @[src/main/scala/peripheral/Memory.scala 42:14]
    input io_debug_read_address : UInt<32> @[src/main/scala/peripheral/Memory.scala 42:14]
    output io_debug_read_data : UInt<32> @[src/main/scala/peripheral/Memory.scala 42:14]

    mem mem_0 : @[src/main/scala/peripheral/Memory.scala 52:24]
      data-type => UInt<8>
      depth => 8192
      read-latency => 1
      write-latency => 1
      reader => io_bundle_read_data_MPORT
      reader => io_debug_read_data_MPORT
      reader => io_instruction_MPORT
      writer => MPORT
      read-under-write => undefined
    mem mem_1 : @[src/main/scala/peripheral/Memory.scala 52:24]
      data-type => UInt<8>
      depth => 8192
      read-latency => 1
      write-latency => 1
      reader => io_bundle_read_data_MPORT
      reader => io_debug_read_data_MPORT
      reader => io_instruction_MPORT
      writer => MPORT
      read-under-write => undefined
    mem mem_2 : @[src/main/scala/peripheral/Memory.scala 52:24]
      data-type => UInt<8>
      depth => 8192
      read-latency => 1
      write-latency => 1
      reader => io_bundle_read_data_MPORT
      reader => io_debug_read_data_MPORT
      reader => io_instruction_MPORT
      writer => MPORT
      read-under-write => undefined
    mem mem_3 : @[src/main/scala/peripheral/Memory.scala 52:24]
      data-type => UInt<8>
      depth => 8192
      read-latency => 1
      write-latency => 1
      reader => io_bundle_read_data_MPORT
      reader => io_debug_read_data_MPORT
      reader => io_instruction_MPORT
      writer => MPORT
      read-under-write => undefined
    node _write_data_vec_0_T = bits(io_bundle_write_data, 7, 0) @[src/main/scala/peripheral/Memory.scala 56:48]
    node _write_data_vec_1_T = bits(io_bundle_write_data, 15, 8) @[src/main/scala/peripheral/Memory.scala 56:48]
    node _write_data_vec_2_T = bits(io_bundle_write_data, 23, 16) @[src/main/scala/peripheral/Memory.scala 56:48]
    node _write_data_vec_3_T = bits(io_bundle_write_data, 31, 24) @[src/main/scala/peripheral/Memory.scala 56:48]
    node _T = dshr(io_bundle_address, UInt<2>("h2")) @[src/main/scala/peripheral/Memory.scala 58:34]
    node _T_1 = bits(_T, 12, 0)
    node write_data_vec_0 = _write_data_vec_0_T @[src/main/scala/peripheral/Memory.scala 54:30 56:25]
    node _GEN_0 = validif(io_bundle_write_strobe_0, write_data_vec_0)
    node _GEN_1 = mux(io_bundle_write_strobe_0, UInt<1>("h1"), UInt<1>("h0"))
    node write_data_vec_1 = _write_data_vec_1_T @[src/main/scala/peripheral/Memory.scala 54:30 56:25]
    node _GEN_2 = validif(io_bundle_write_strobe_1, write_data_vec_1)
    node _GEN_3 = mux(io_bundle_write_strobe_1, UInt<1>("h1"), UInt<1>("h0"))
    node write_data_vec_2 = _write_data_vec_2_T @[src/main/scala/peripheral/Memory.scala 54:30 56:25]
    node _GEN_4 = validif(io_bundle_write_strobe_2, write_data_vec_2)
    node _GEN_5 = mux(io_bundle_write_strobe_2, UInt<1>("h1"), UInt<1>("h0"))
    node write_data_vec_3 = _write_data_vec_3_T @[src/main/scala/peripheral/Memory.scala 54:30 56:25]
    node _GEN_6 = validif(io_bundle_write_strobe_3, write_data_vec_3)
    node _GEN_7 = mux(io_bundle_write_strobe_3, UInt<1>("h1"), UInt<1>("h0"))
    node _GEN_8 = validif(io_bundle_write_enable, _T_1) @[src/main/scala/peripheral/Memory.scala 53:32]
    node _GEN_9 = validif(io_bundle_write_enable, clock) @[src/main/scala/peripheral/Memory.scala 53:32]
    node _GEN_10 = mux(io_bundle_write_enable, UInt<1>("h1"), UInt<1>("h0")) @[src/main/scala/peripheral/Memory.scala 52:24 53:32]
    node _GEN_11 = validif(io_bundle_write_enable, _GEN_1) @[src/main/scala/peripheral/Memory.scala 53:32]
    node _GEN_12 = validif(io_bundle_write_enable, _GEN_3) @[src/main/scala/peripheral/Memory.scala 53:32]
    node _GEN_13 = validif(io_bundle_write_enable, _GEN_5) @[src/main/scala/peripheral/Memory.scala 53:32]
    node _GEN_14 = validif(io_bundle_write_enable, _GEN_7) @[src/main/scala/peripheral/Memory.scala 53:32]
    node _GEN_15 = validif(io_bundle_write_enable, _GEN_0) @[src/main/scala/peripheral/Memory.scala 53:32]
    node _GEN_16 = validif(io_bundle_write_enable, _GEN_2) @[src/main/scala/peripheral/Memory.scala 53:32]
    node _GEN_17 = validif(io_bundle_write_enable, _GEN_4) @[src/main/scala/peripheral/Memory.scala 53:32]
    node _GEN_18 = validif(io_bundle_write_enable, _GEN_6) @[src/main/scala/peripheral/Memory.scala 53:32]
    node _io_bundle_read_data_T = dshr(io_bundle_address, UInt<2>("h2")) @[src/main/scala/peripheral/Memory.scala 60:54]
    node _GEN_19 = validif(UInt<1>("h1"), _io_bundle_read_data_T) @[src/main/scala/peripheral/Memory.scala 60:{34,34}]
    node _io_bundle_read_data_WIRE = _GEN_19 @[src/main/scala/peripheral/Memory.scala 60:34]
    node _io_bundle_read_data_T_1 = or(_io_bundle_read_data_WIRE, UInt<13>("h0")) @[src/main/scala/peripheral/Memory.scala 60:34]
    node _io_bundle_read_data_T_2 = bits(_io_bundle_read_data_T_1, 12, 0) @[src/main/scala/peripheral/Memory.scala 60:34]
    node _GEN_20 = mux(UInt<1>("h1"), UInt<1>("h1"), UInt<1>("h0")) @[src/main/scala/peripheral/Memory.scala 52:24 60:{34,34}]
    node _GEN_21 = validif(UInt<1>("h1"), _io_bundle_read_data_T_2) @[src/main/scala/peripheral/Memory.scala 60:{34,34}]
    node _GEN_22 = validif(UInt<1>("h1"), clock) @[src/main/scala/peripheral/Memory.scala 60:{34,34}]
    node io_bundle_read_data_lo = cat(mem_1.io_bundle_read_data_MPORT.data, mem_0.io_bundle_read_data_MPORT.data) @[src/main/scala/peripheral/Memory.scala 60:78]
    node io_bundle_read_data_hi = cat(mem_3.io_bundle_read_data_MPORT.data, mem_2.io_bundle_read_data_MPORT.data) @[src/main/scala/peripheral/Memory.scala 60:78]
    node _io_bundle_read_data_T_3 = cat(io_bundle_read_data_hi, io_bundle_read_data_lo) @[src/main/scala/peripheral/Memory.scala 60:78]
    node _io_debug_read_data_T = dshr(io_debug_read_address, UInt<2>("h2")) @[src/main/scala/peripheral/Memory.scala 61:58]
    node _GEN_23 = validif(UInt<1>("h1"), _io_debug_read_data_T) @[src/main/scala/peripheral/Memory.scala 61:{34,34}]
    node _io_debug_read_data_WIRE = _GEN_23 @[src/main/scala/peripheral/Memory.scala 61:34]
    node _io_debug_read_data_T_1 = or(_io_debug_read_data_WIRE, UInt<13>("h0")) @[src/main/scala/peripheral/Memory.scala 61:34]
    node _io_debug_read_data_T_2 = bits(_io_debug_read_data_T_1, 12, 0) @[src/main/scala/peripheral/Memory.scala 61:34]
    node _GEN_24 = validif(UInt<1>("h1"), _io_debug_read_data_T_2) @[src/main/scala/peripheral/Memory.scala 61:{34,34}]
    node io_debug_read_data_lo = cat(mem_1.io_debug_read_data_MPORT.data, mem_0.io_debug_read_data_MPORT.data) @[src/main/scala/peripheral/Memory.scala 61:82]
    node io_debug_read_data_hi = cat(mem_3.io_debug_read_data_MPORT.data, mem_2.io_debug_read_data_MPORT.data) @[src/main/scala/peripheral/Memory.scala 61:82]
    node _io_debug_read_data_T_3 = cat(io_debug_read_data_hi, io_debug_read_data_lo) @[src/main/scala/peripheral/Memory.scala 61:82]
    node _io_instruction_T = dshr(io_instruction_address, UInt<2>("h2")) @[src/main/scala/peripheral/Memory.scala 62:59]
    node _GEN_25 = validif(UInt<1>("h1"), _io_instruction_T) @[src/main/scala/peripheral/Memory.scala 62:{34,34}]
    node _io_instruction_WIRE = _GEN_25 @[src/main/scala/peripheral/Memory.scala 62:34]
    node _io_instruction_T_1 = or(_io_instruction_WIRE, UInt<13>("h0")) @[src/main/scala/peripheral/Memory.scala 62:34]
    node _io_instruction_T_2 = bits(_io_instruction_T_1, 12, 0) @[src/main/scala/peripheral/Memory.scala 62:34]
    node _GEN_26 = validif(UInt<1>("h1"), _io_instruction_T_2) @[src/main/scala/peripheral/Memory.scala 62:{34,34}]
    node io_instruction_lo = cat(mem_1.io_instruction_MPORT.data, mem_0.io_instruction_MPORT.data) @[src/main/scala/peripheral/Memory.scala 62:83]
    node io_instruction_hi = cat(mem_3.io_instruction_MPORT.data, mem_2.io_instruction_MPORT.data) @[src/main/scala/peripheral/Memory.scala 62:83]
    node _io_instruction_T_3 = cat(io_instruction_hi, io_instruction_lo) @[src/main/scala/peripheral/Memory.scala 62:83]
    io_bundle_read_data <= _io_bundle_read_data_T_3 @[src/main/scala/peripheral/Memory.scala 60:23]
    io_instruction <= _io_instruction_T_3 @[src/main/scala/peripheral/Memory.scala 62:23]
    io_debug_read_data <= _io_debug_read_data_T_3 @[src/main/scala/peripheral/Memory.scala 61:23]
    mem_0.io_bundle_read_data_MPORT.addr <= _GEN_21
    mem_1.io_bundle_read_data_MPORT.addr <= _GEN_21
    mem_2.io_bundle_read_data_MPORT.addr <= _GEN_21
    mem_3.io_bundle_read_data_MPORT.addr <= _GEN_21
    mem_0.io_bundle_read_data_MPORT.en <= _GEN_20
    mem_1.io_bundle_read_data_MPORT.en <= _GEN_20
    mem_2.io_bundle_read_data_MPORT.en <= _GEN_20
    mem_3.io_bundle_read_data_MPORT.en <= _GEN_20
    mem_0.io_bundle_read_data_MPORT.clk <= _GEN_22
    mem_1.io_bundle_read_data_MPORT.clk <= _GEN_22
    mem_2.io_bundle_read_data_MPORT.clk <= _GEN_22
    mem_3.io_bundle_read_data_MPORT.clk <= _GEN_22
    mem_0.io_debug_read_data_MPORT.addr <= _GEN_24
    mem_1.io_debug_read_data_MPORT.addr <= _GEN_24
    mem_2.io_debug_read_data_MPORT.addr <= _GEN_24
    mem_3.io_debug_read_data_MPORT.addr <= _GEN_24
    mem_0.io_debug_read_data_MPORT.en <= _GEN_20
    mem_1.io_debug_read_data_MPORT.en <= _GEN_20
    mem_2.io_debug_read_data_MPORT.en <= _GEN_20
    mem_3.io_debug_read_data_MPORT.en <= _GEN_20
    mem_0.io_debug_read_data_MPORT.clk <= _GEN_22
    mem_1.io_debug_read_data_MPORT.clk <= _GEN_22
    mem_2.io_debug_read_data_MPORT.clk <= _GEN_22
    mem_3.io_debug_read_data_MPORT.clk <= _GEN_22
    mem_0.io_instruction_MPORT.addr <= _GEN_26
    mem_1.io_instruction_MPORT.addr <= _GEN_26
    mem_2.io_instruction_MPORT.addr <= _GEN_26
    mem_3.io_instruction_MPORT.addr <= _GEN_26
    mem_0.io_instruction_MPORT.en <= _GEN_20
    mem_1.io_instruction_MPORT.en <= _GEN_20
    mem_2.io_instruction_MPORT.en <= _GEN_20
    mem_3.io_instruction_MPORT.en <= _GEN_20
    mem_0.io_instruction_MPORT.clk <= _GEN_22
    mem_1.io_instruction_MPORT.clk <= _GEN_22
    mem_2.io_instruction_MPORT.clk <= _GEN_22
    mem_3.io_instruction_MPORT.clk <= _GEN_22
    mem_0.MPORT.addr <= _GEN_8
    mem_1.MPORT.addr <= _GEN_8
    mem_2.MPORT.addr <= _GEN_8
    mem_3.MPORT.addr <= _GEN_8
    mem_0.MPORT.en <= _GEN_10
    mem_1.MPORT.en <= _GEN_10
    mem_2.MPORT.en <= _GEN_10
    mem_3.MPORT.en <= _GEN_10
    mem_0.MPORT.clk <= _GEN_9
    mem_1.MPORT.clk <= _GEN_9
    mem_2.MPORT.clk <= _GEN_9
    mem_3.MPORT.clk <= _GEN_9
    mem_0.MPORT.data <= _GEN_15
    mem_1.MPORT.data <= _GEN_16
    mem_2.MPORT.data <= _GEN_17
    mem_3.MPORT.data <= _GEN_18
    mem_0.MPORT.mask <= _GEN_11
    mem_1.MPORT.mask <= _GEN_12
    mem_2.MPORT.mask <= _GEN_13
    mem_3.MPORT.mask <= _GEN_14

  module InstructionROM :
    input clock : Clock
    input reset : UInt<1>
    input io_address : UInt<32> @[src/main/scala/peripheral/InstructionROM.scala 17:14]
    output io_data : UInt<32> @[src/main/scala/peripheral/InstructionROM.scala 17:14]

    mem mem : @[src/main/scala/peripheral/InstructionROM.scala 23:45]
      data-type => UInt<32>
      depth => 6971
      read-latency => 0
      write-latency => 1
      reader => io_data_MPORT
      read-under-write => undefined
    node _io_data_T = bits(io_address, 12, 0) @[src/main/scala/peripheral/InstructionROM.scala 29:22]
    io_data <= mem.io_data_MPORT.data @[src/main/scala/peripheral/InstructionROM.scala 29:11]
    mem.io_data_MPORT.addr <= _io_data_T @[src/main/scala/peripheral/InstructionROM.scala 29:22]
    mem.io_data_MPORT.en <= UInt<1>("h1") @[src/main/scala/peripheral/InstructionROM.scala 29:22]
    mem.io_data_MPORT.clk <= clock @[src/main/scala/peripheral/InstructionROM.scala 29:22]

  module ROMLoader :
    input clock : Clock
    input reset : UInt<1>
    output io_bundle_address : UInt<32> @[src/main/scala/peripheral/ROMLoader.scala 7:14]
    output io_bundle_write_data : UInt<32> @[src/main/scala/peripheral/ROMLoader.scala 7:14]
    output io_bundle_write_enable : UInt<1> @[src/main/scala/peripheral/ROMLoader.scala 7:14]
    output io_bundle_write_strobe_0 : UInt<1> @[src/main/scala/peripheral/ROMLoader.scala 7:14]
    output io_bundle_write_strobe_1 : UInt<1> @[src/main/scala/peripheral/ROMLoader.scala 7:14]
    output io_bundle_write_strobe_2 : UInt<1> @[src/main/scala/peripheral/ROMLoader.scala 7:14]
    output io_bundle_write_strobe_3 : UInt<1> @[src/main/scala/peripheral/ROMLoader.scala 7:14]
    input io_bundle_read_data : UInt<32> @[src/main/scala/peripheral/ROMLoader.scala 7:14]
    output io_rom_address : UInt<32> @[src/main/scala/peripheral/ROMLoader.scala 7:14]
    input io_rom_data : UInt<32> @[src/main/scala/peripheral/ROMLoader.scala 7:14]
    input io_load_address : UInt<32> @[src/main/scala/peripheral/ROMLoader.scala 7:14]
    output io_load_finished : UInt<1> @[src/main/scala/peripheral/ROMLoader.scala 7:14]

    reg address : UInt<32>, clock with :
      reset => (UInt<1>("h0"), address) @[src/main/scala/peripheral/ROMLoader.scala 17:24]
    reg valid : UInt<1>, clock with :
      reset => (UInt<1>("h0"), valid) @[src/main/scala/peripheral/ROMLoader.scala 18:24]
    node _T = leq(address, UInt<13>("h1b3a")) @[src/main/scala/peripheral/ROMLoader.scala 24:16]
    node _io_bundle_address_T = dshl(address, UInt<2>("h2")) @[src/main/scala/peripheral/ROMLoader.scala 27:40]
    node _io_bundle_address_T_1 = add(_io_bundle_address_T, io_load_address) @[src/main/scala/peripheral/ROMLoader.scala 27:55]
    node _io_bundle_address_T_2 = tail(_io_bundle_address_T_1, 1) @[src/main/scala/peripheral/ROMLoader.scala 27:55]
    node _address_T = add(address, UInt<1>("h1")) @[src/main/scala/peripheral/ROMLoader.scala 29:39]
    node _address_T_1 = tail(_address_T, 1) @[src/main/scala/peripheral/ROMLoader.scala 29:39]
    node _T_1 = eq(address, UInt<13>("h1b3a")) @[src/main/scala/peripheral/ROMLoader.scala 30:18]
    node _GEN_0 = mux(_T_1, UInt<1>("h1"), valid) @[src/main/scala/peripheral/ROMLoader.scala 30:40 31:13 18:24]
    node _GEN_1 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[src/main/scala/peripheral/ROMLoader.scala 23:26 24:37 25:28]
    node _GEN_2 = mux(_T, io_rom_data, UInt<1>("h0")) @[src/main/scala/peripheral/ROMLoader.scala 22:26 24:37 26:28]
    node _GEN_3 = mux(_T, _io_bundle_address_T_2, UInt<1>("h0")) @[src/main/scala/peripheral/ROMLoader.scala 21:26 24:37 27:28]
    node _WIRE_1_0 = UInt<1>("h1") @[src/main/scala/peripheral/ROMLoader.scala 28:{38,38}]
    node _WIRE__0 = UInt<1>("h0") @[src/main/scala/peripheral/ROMLoader.scala 20:{36,36}]
    node _GEN_4 = mux(_T, _WIRE_1_0, _WIRE__0) @[src/main/scala/peripheral/ROMLoader.scala 20:26 24:37 28:28]
    node _WIRE_1_1 = UInt<1>("h1") @[src/main/scala/peripheral/ROMLoader.scala 28:{38,38}]
    node _WIRE__1 = UInt<1>("h0") @[src/main/scala/peripheral/ROMLoader.scala 20:{36,36}]
    node _GEN_5 = mux(_T, _WIRE_1_1, _WIRE__1) @[src/main/scala/peripheral/ROMLoader.scala 20:26 24:37 28:28]
    node _WIRE_1_2 = UInt<1>("h1") @[src/main/scala/peripheral/ROMLoader.scala 28:{38,38}]
    node _WIRE__2 = UInt<1>("h0") @[src/main/scala/peripheral/ROMLoader.scala 20:{36,36}]
    node _GEN_6 = mux(_T, _WIRE_1_2, _WIRE__2) @[src/main/scala/peripheral/ROMLoader.scala 20:26 24:37 28:28]
    node _WIRE_1_3 = UInt<1>("h1") @[src/main/scala/peripheral/ROMLoader.scala 28:{38,38}]
    node _WIRE__3 = UInt<1>("h0") @[src/main/scala/peripheral/ROMLoader.scala 20:{36,36}]
    node _GEN_7 = mux(_T, _WIRE_1_3, _WIRE__3) @[src/main/scala/peripheral/ROMLoader.scala 20:26 24:37 28:28]
    node _GEN_8 = mux(_T, _address_T_1, address) @[src/main/scala/peripheral/ROMLoader.scala 17:24 24:37 29:28]
    node _GEN_9 = mux(_T, _GEN_0, valid) @[src/main/scala/peripheral/ROMLoader.scala 18:24 24:37]
    io_bundle_address <= bits(_GEN_3, 31, 0)
    io_bundle_write_data <= _GEN_2
    io_bundle_write_enable <= _GEN_1
    io_bundle_write_strobe_0 <= _GEN_4
    io_bundle_write_strobe_1 <= _GEN_5
    io_bundle_write_strobe_2 <= _GEN_6
    io_bundle_write_strobe_3 <= _GEN_7
    io_rom_address <= address @[src/main/scala/peripheral/ROMLoader.scala 35:20]
    io_load_finished <= valid @[src/main/scala/peripheral/ROMLoader.scala 34:20]
    address <= mux(reset, UInt<32>("h0"), _GEN_8) @[src/main/scala/peripheral/ROMLoader.scala 17:{24,24}]
    valid <= mux(reset, UInt<1>("h0"), _GEN_9) @[src/main/scala/peripheral/ROMLoader.scala 18:{24,24}]

  module Control :
    input clock : Clock
    input reset : UInt<1>
    input io_jump_flag : UInt<1> @[src/main/scala/riscv/core/fivestage_final/Control.scala 7:14]
    input io_jump_instruction_id : UInt<1> @[src/main/scala/riscv/core/fivestage_final/Control.scala 7:14]
    input io_rs1_id : UInt<5> @[src/main/scala/riscv/core/fivestage_final/Control.scala 7:14]
    input io_rs2_id : UInt<5> @[src/main/scala/riscv/core/fivestage_final/Control.scala 7:14]
    input io_memory_read_enable_ex : UInt<1> @[src/main/scala/riscv/core/fivestage_final/Control.scala 7:14]
    input io_rd_ex : UInt<5> @[src/main/scala/riscv/core/fivestage_final/Control.scala 7:14]
    input io_memory_read_enable_mem : UInt<1> @[src/main/scala/riscv/core/fivestage_final/Control.scala 7:14]
    input io_rd_mem : UInt<5> @[src/main/scala/riscv/core/fivestage_final/Control.scala 7:14]
    output io_if_flush : UInt<1> @[src/main/scala/riscv/core/fivestage_final/Control.scala 7:14]
    output io_id_flush : UInt<1> @[src/main/scala/riscv/core/fivestage_final/Control.scala 7:14]
    output io_pc_stall : UInt<1> @[src/main/scala/riscv/core/fivestage_final/Control.scala 7:14]
    output io_if_stall : UInt<1> @[src/main/scala/riscv/core/fivestage_final/Control.scala 7:14]

    node _T = or(io_jump_instruction_id, io_memory_read_enable_ex) @[src/main/scala/riscv/core/fivestage_final/Control.scala 28:30]
    node _T_1 = neq(io_rd_ex, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/Control.scala 28:71]
    node _T_2 = and(_T, _T_1) @[src/main/scala/riscv/core/fivestage_final/Control.scala 28:59]
    node _T_3 = eq(io_rd_ex, io_rs1_id) @[src/main/scala/riscv/core/fivestage_final/Control.scala 28:92]
    node _T_4 = eq(io_rd_ex, io_rs2_id) @[src/main/scala/riscv/core/fivestage_final/Control.scala 28:118]
    node _T_5 = or(_T_3, _T_4) @[src/main/scala/riscv/core/fivestage_final/Control.scala 28:106]
    node _T_6 = and(_T_2, _T_5) @[src/main/scala/riscv/core/fivestage_final/Control.scala 28:79]
    node _T_7 = and(io_jump_instruction_id, io_memory_read_enable_mem) @[src/main/scala/riscv/core/fivestage_final/Control.scala 29:31]
    node _T_8 = neq(io_rd_mem, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/Control.scala 29:73]
    node _T_9 = and(_T_7, _T_8) @[src/main/scala/riscv/core/fivestage_final/Control.scala 29:60]
    node _T_10 = eq(io_rd_mem, io_rs1_id) @[src/main/scala/riscv/core/fivestage_final/Control.scala 29:95]
    node _T_11 = eq(io_rd_mem, io_rs2_id) @[src/main/scala/riscv/core/fivestage_final/Control.scala 29:122]
    node _T_12 = or(_T_10, _T_11) @[src/main/scala/riscv/core/fivestage_final/Control.scala 29:109]
    node _T_13 = and(_T_9, _T_12) @[src/main/scala/riscv/core/fivestage_final/Control.scala 29:81]
    node _T_14 = or(_T_6, _T_13) @[src/main/scala/riscv/core/fivestage_final/Control.scala 28:134]
    node _GEN_0 = mux(io_jump_flag, UInt<1>("h1"), UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/Control.scala 23:15 34:28 35:17]
    node _GEN_1 = mux(_T_14, UInt<1>("h1"), UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/Control.scala 24:15 30:5 31:17]
    node _GEN_2 = mux(_T_14, UInt<1>("h0"), _GEN_0) @[src/main/scala/riscv/core/fivestage_final/Control.scala 23:15 30:5]
    io_if_flush <= _GEN_2
    io_id_flush <= _GEN_1
    io_pc_stall <= _GEN_1
    io_if_stall <= _GEN_1

  module RegisterFile :
    input clock : Clock
    input reset : UInt<1>
    input io_write_enable : UInt<1> @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
    input io_write_address : UInt<5> @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
    input io_write_data : UInt<32> @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
    input io_read_address1 : UInt<5> @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
    input io_read_address2 : UInt<5> @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
    output io_read_data1 : UInt<32> @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
    output io_read_data2 : UInt<32> @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
    input io_debug_read_address : UInt<5> @[src/main/scala/riscv/core/RegisterFile.scala 14:14]
    output io_debug_read_data : UInt<32> @[src/main/scala/riscv/core/RegisterFile.scala 14:14]

    reg registers_0 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_0) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_1 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_1) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_2) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_3 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_3) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_4 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_4) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_5 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_5) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_6 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_6) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_7 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_7) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_8 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_8) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_9 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_9) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_10 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_10) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_11 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_11) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_12 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_12) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_13 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_13) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_14 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_14) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_15 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_15) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_16 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_16) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_17 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_17) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_18 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_18) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_19 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_19) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_20 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_20) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_21 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_21) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_22 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_22) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_23 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_23) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_24 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_24) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_25 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_25) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_26 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_26) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_27 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_27) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_28 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_28) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_29 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_29) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_30 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_30) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    reg registers_31 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), registers_31) @[src/main/scala/riscv/core/RegisterFile.scala 27:22]
    node _T = asUInt(reset) @[src/main/scala/riscv/core/RegisterFile.scala 29:15]
    node _T_1 = eq(_T, UInt<1>("h0")) @[src/main/scala/riscv/core/RegisterFile.scala 29:8]
    node _T_2 = neq(io_write_address, UInt<1>("h0")) @[src/main/scala/riscv/core/RegisterFile.scala 30:46]
    node _T_3 = and(io_write_enable, _T_2) @[src/main/scala/riscv/core/RegisterFile.scala 30:26]
    node _registers_io_write_address = io_write_data @[src/main/scala/riscv/core/RegisterFile.scala 31:{35,35}]
    node _GEN_0 = mux(eq(UInt<1>("h0"), io_write_address), _registers_io_write_address, registers_0) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_1 = mux(eq(UInt<1>("h1"), io_write_address), _registers_io_write_address, registers_1) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_2 = mux(eq(UInt<2>("h2"), io_write_address), _registers_io_write_address, registers_2) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_3 = mux(eq(UInt<2>("h3"), io_write_address), _registers_io_write_address, registers_3) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_4 = mux(eq(UInt<3>("h4"), io_write_address), _registers_io_write_address, registers_4) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_5 = mux(eq(UInt<3>("h5"), io_write_address), _registers_io_write_address, registers_5) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_6 = mux(eq(UInt<3>("h6"), io_write_address), _registers_io_write_address, registers_6) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_7 = mux(eq(UInt<3>("h7"), io_write_address), _registers_io_write_address, registers_7) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_8 = mux(eq(UInt<4>("h8"), io_write_address), _registers_io_write_address, registers_8) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_9 = mux(eq(UInt<4>("h9"), io_write_address), _registers_io_write_address, registers_9) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_10 = mux(eq(UInt<4>("ha"), io_write_address), _registers_io_write_address, registers_10) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_11 = mux(eq(UInt<4>("hb"), io_write_address), _registers_io_write_address, registers_11) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_12 = mux(eq(UInt<4>("hc"), io_write_address), _registers_io_write_address, registers_12) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_13 = mux(eq(UInt<4>("hd"), io_write_address), _registers_io_write_address, registers_13) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_14 = mux(eq(UInt<4>("he"), io_write_address), _registers_io_write_address, registers_14) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_15 = mux(eq(UInt<4>("hf"), io_write_address), _registers_io_write_address, registers_15) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_16 = mux(eq(UInt<5>("h10"), io_write_address), _registers_io_write_address, registers_16) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_17 = mux(eq(UInt<5>("h11"), io_write_address), _registers_io_write_address, registers_17) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_18 = mux(eq(UInt<5>("h12"), io_write_address), _registers_io_write_address, registers_18) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_19 = mux(eq(UInt<5>("h13"), io_write_address), _registers_io_write_address, registers_19) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_20 = mux(eq(UInt<5>("h14"), io_write_address), _registers_io_write_address, registers_20) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_21 = mux(eq(UInt<5>("h15"), io_write_address), _registers_io_write_address, registers_21) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_22 = mux(eq(UInt<5>("h16"), io_write_address), _registers_io_write_address, registers_22) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_23 = mux(eq(UInt<5>("h17"), io_write_address), _registers_io_write_address, registers_23) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_24 = mux(eq(UInt<5>("h18"), io_write_address), _registers_io_write_address, registers_24) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_25 = mux(eq(UInt<5>("h19"), io_write_address), _registers_io_write_address, registers_25) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_26 = mux(eq(UInt<5>("h1a"), io_write_address), _registers_io_write_address, registers_26) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_27 = mux(eq(UInt<5>("h1b"), io_write_address), _registers_io_write_address, registers_27) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_28 = mux(eq(UInt<5>("h1c"), io_write_address), _registers_io_write_address, registers_28) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_29 = mux(eq(UInt<5>("h1d"), io_write_address), _registers_io_write_address, registers_29) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_30 = mux(eq(UInt<5>("h1e"), io_write_address), _registers_io_write_address, registers_30) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_31 = mux(eq(UInt<5>("h1f"), io_write_address), _registers_io_write_address, registers_31) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 31:{35,35}]
    node _GEN_32 = mux(_T_3, _GEN_0, registers_0) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_33 = mux(_T_3, _GEN_1, registers_1) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_34 = mux(_T_3, _GEN_2, registers_2) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_35 = mux(_T_3, _GEN_3, registers_3) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_36 = mux(_T_3, _GEN_4, registers_4) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_37 = mux(_T_3, _GEN_5, registers_5) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_38 = mux(_T_3, _GEN_6, registers_6) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_39 = mux(_T_3, _GEN_7, registers_7) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_40 = mux(_T_3, _GEN_8, registers_8) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_41 = mux(_T_3, _GEN_9, registers_9) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_42 = mux(_T_3, _GEN_10, registers_10) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_43 = mux(_T_3, _GEN_11, registers_11) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_44 = mux(_T_3, _GEN_12, registers_12) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_45 = mux(_T_3, _GEN_13, registers_13) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_46 = mux(_T_3, _GEN_14, registers_14) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_47 = mux(_T_3, _GEN_15, registers_15) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_48 = mux(_T_3, _GEN_16, registers_16) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_49 = mux(_T_3, _GEN_17, registers_17) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_50 = mux(_T_3, _GEN_18, registers_18) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_51 = mux(_T_3, _GEN_19, registers_19) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_52 = mux(_T_3, _GEN_20, registers_20) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_53 = mux(_T_3, _GEN_21, registers_21) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_54 = mux(_T_3, _GEN_22, registers_22) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_55 = mux(_T_3, _GEN_23, registers_23) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_56 = mux(_T_3, _GEN_24, registers_24) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_57 = mux(_T_3, _GEN_25, registers_25) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_58 = mux(_T_3, _GEN_26, registers_26) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_59 = mux(_T_3, _GEN_27, registers_27) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_60 = mux(_T_3, _GEN_28, registers_28) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_61 = mux(_T_3, _GEN_29, registers_29) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_62 = mux(_T_3, _GEN_30, registers_30) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_63 = mux(_T_3, _GEN_31, registers_31) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 30:55]
    node _GEN_64 = mux(_T_1, _GEN_32, registers_0) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_65 = mux(_T_1, _GEN_33, registers_1) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_66 = mux(_T_1, _GEN_34, registers_2) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_67 = mux(_T_1, _GEN_35, registers_3) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_68 = mux(_T_1, _GEN_36, registers_4) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_69 = mux(_T_1, _GEN_37, registers_5) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_70 = mux(_T_1, _GEN_38, registers_6) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_71 = mux(_T_1, _GEN_39, registers_7) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_72 = mux(_T_1, _GEN_40, registers_8) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_73 = mux(_T_1, _GEN_41, registers_9) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_74 = mux(_T_1, _GEN_42, registers_10) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_75 = mux(_T_1, _GEN_43, registers_11) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_76 = mux(_T_1, _GEN_44, registers_12) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_77 = mux(_T_1, _GEN_45, registers_13) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_78 = mux(_T_1, _GEN_46, registers_14) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_79 = mux(_T_1, _GEN_47, registers_15) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_80 = mux(_T_1, _GEN_48, registers_16) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_81 = mux(_T_1, _GEN_49, registers_17) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_82 = mux(_T_1, _GEN_50, registers_18) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_83 = mux(_T_1, _GEN_51, registers_19) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_84 = mux(_T_1, _GEN_52, registers_20) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_85 = mux(_T_1, _GEN_53, registers_21) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_86 = mux(_T_1, _GEN_54, registers_22) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_87 = mux(_T_1, _GEN_55, registers_23) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_88 = mux(_T_1, _GEN_56, registers_24) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_89 = mux(_T_1, _GEN_57, registers_25) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_90 = mux(_T_1, _GEN_58, registers_26) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_91 = mux(_T_1, _GEN_59, registers_27) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_92 = mux(_T_1, _GEN_60, registers_28) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_93 = mux(_T_1, _GEN_61, registers_29) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_94 = mux(_T_1, _GEN_62, registers_30) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _GEN_95 = mux(_T_1, _GEN_63, registers_31) @[src/main/scala/riscv/core/RegisterFile.scala 27:22 29:23]
    node _io_read_data1_T = eq(io_read_address1, UInt<1>("h0")) @[src/main/scala/riscv/core/RegisterFile.scala 38:25]
    node _io_read_data1_T_1 = eq(io_read_address1, io_write_address) @[src/main/scala/riscv/core/RegisterFile.scala 39:25]
    node _io_read_data1_T_2 = and(_io_read_data1_T_1, io_write_enable) @[src/main/scala/riscv/core/RegisterFile.scala 39:46]
    node _GEN_96 = validif(eq(UInt<1>("h0"), io_read_address1), registers_0) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_97 = mux(eq(UInt<1>("h1"), io_read_address1), registers_1, _GEN_96) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_98 = mux(eq(UInt<2>("h2"), io_read_address1), registers_2, _GEN_97) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_99 = mux(eq(UInt<2>("h3"), io_read_address1), registers_3, _GEN_98) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_100 = mux(eq(UInt<3>("h4"), io_read_address1), registers_4, _GEN_99) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_101 = mux(eq(UInt<3>("h5"), io_read_address1), registers_5, _GEN_100) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_102 = mux(eq(UInt<3>("h6"), io_read_address1), registers_6, _GEN_101) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_103 = mux(eq(UInt<3>("h7"), io_read_address1), registers_7, _GEN_102) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_104 = mux(eq(UInt<4>("h8"), io_read_address1), registers_8, _GEN_103) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_105 = mux(eq(UInt<4>("h9"), io_read_address1), registers_9, _GEN_104) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_106 = mux(eq(UInt<4>("ha"), io_read_address1), registers_10, _GEN_105) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_107 = mux(eq(UInt<4>("hb"), io_read_address1), registers_11, _GEN_106) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_108 = mux(eq(UInt<4>("hc"), io_read_address1), registers_12, _GEN_107) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_109 = mux(eq(UInt<4>("hd"), io_read_address1), registers_13, _GEN_108) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_110 = mux(eq(UInt<4>("he"), io_read_address1), registers_14, _GEN_109) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_111 = mux(eq(UInt<4>("hf"), io_read_address1), registers_15, _GEN_110) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_112 = mux(eq(UInt<5>("h10"), io_read_address1), registers_16, _GEN_111) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_113 = mux(eq(UInt<5>("h11"), io_read_address1), registers_17, _GEN_112) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_114 = mux(eq(UInt<5>("h12"), io_read_address1), registers_18, _GEN_113) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_115 = mux(eq(UInt<5>("h13"), io_read_address1), registers_19, _GEN_114) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_116 = mux(eq(UInt<5>("h14"), io_read_address1), registers_20, _GEN_115) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_117 = mux(eq(UInt<5>("h15"), io_read_address1), registers_21, _GEN_116) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_118 = mux(eq(UInt<5>("h16"), io_read_address1), registers_22, _GEN_117) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_119 = mux(eq(UInt<5>("h17"), io_read_address1), registers_23, _GEN_118) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_120 = mux(eq(UInt<5>("h18"), io_read_address1), registers_24, _GEN_119) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_121 = mux(eq(UInt<5>("h19"), io_read_address1), registers_25, _GEN_120) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_122 = mux(eq(UInt<5>("h1a"), io_read_address1), registers_26, _GEN_121) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_123 = mux(eq(UInt<5>("h1b"), io_read_address1), registers_27, _GEN_122) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_124 = mux(eq(UInt<5>("h1c"), io_read_address1), registers_28, _GEN_123) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_125 = mux(eq(UInt<5>("h1d"), io_read_address1), registers_29, _GEN_124) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_126 = mux(eq(UInt<5>("h1e"), io_read_address1), registers_30, _GEN_125) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_127 = mux(eq(UInt<5>("h1f"), io_read_address1), registers_31, _GEN_126) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _registers_io_read_address1 = _GEN_127 @[src/main/scala/chisel3/util/Mux.scala 141:16]
    node _io_read_data1_T_3 = mux(_io_read_data1_T_2, io_write_data, _registers_io_read_address1) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    node _io_read_data1_T_4 = mux(_io_read_data1_T, UInt<1>("h0"), _io_read_data1_T_3) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    node _io_read_data2_T = eq(io_read_address2, UInt<1>("h0")) @[src/main/scala/riscv/core/RegisterFile.scala 46:25]
    node _io_read_data2_T_1 = eq(io_read_address2, io_write_address) @[src/main/scala/riscv/core/RegisterFile.scala 47:25]
    node _io_read_data2_T_2 = and(_io_read_data2_T_1, io_write_enable) @[src/main/scala/riscv/core/RegisterFile.scala 47:46]
    node _GEN_128 = validif(eq(UInt<1>("h0"), io_read_address2), registers_0) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_129 = mux(eq(UInt<1>("h1"), io_read_address2), registers_1, _GEN_128) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_130 = mux(eq(UInt<2>("h2"), io_read_address2), registers_2, _GEN_129) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_131 = mux(eq(UInt<2>("h3"), io_read_address2), registers_3, _GEN_130) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_132 = mux(eq(UInt<3>("h4"), io_read_address2), registers_4, _GEN_131) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_133 = mux(eq(UInt<3>("h5"), io_read_address2), registers_5, _GEN_132) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_134 = mux(eq(UInt<3>("h6"), io_read_address2), registers_6, _GEN_133) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_135 = mux(eq(UInt<3>("h7"), io_read_address2), registers_7, _GEN_134) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_136 = mux(eq(UInt<4>("h8"), io_read_address2), registers_8, _GEN_135) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_137 = mux(eq(UInt<4>("h9"), io_read_address2), registers_9, _GEN_136) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_138 = mux(eq(UInt<4>("ha"), io_read_address2), registers_10, _GEN_137) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_139 = mux(eq(UInt<4>("hb"), io_read_address2), registers_11, _GEN_138) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_140 = mux(eq(UInt<4>("hc"), io_read_address2), registers_12, _GEN_139) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_141 = mux(eq(UInt<4>("hd"), io_read_address2), registers_13, _GEN_140) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_142 = mux(eq(UInt<4>("he"), io_read_address2), registers_14, _GEN_141) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_143 = mux(eq(UInt<4>("hf"), io_read_address2), registers_15, _GEN_142) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_144 = mux(eq(UInt<5>("h10"), io_read_address2), registers_16, _GEN_143) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_145 = mux(eq(UInt<5>("h11"), io_read_address2), registers_17, _GEN_144) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_146 = mux(eq(UInt<5>("h12"), io_read_address2), registers_18, _GEN_145) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_147 = mux(eq(UInt<5>("h13"), io_read_address2), registers_19, _GEN_146) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_148 = mux(eq(UInt<5>("h14"), io_read_address2), registers_20, _GEN_147) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_149 = mux(eq(UInt<5>("h15"), io_read_address2), registers_21, _GEN_148) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_150 = mux(eq(UInt<5>("h16"), io_read_address2), registers_22, _GEN_149) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_151 = mux(eq(UInt<5>("h17"), io_read_address2), registers_23, _GEN_150) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_152 = mux(eq(UInt<5>("h18"), io_read_address2), registers_24, _GEN_151) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_153 = mux(eq(UInt<5>("h19"), io_read_address2), registers_25, _GEN_152) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_154 = mux(eq(UInt<5>("h1a"), io_read_address2), registers_26, _GEN_153) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_155 = mux(eq(UInt<5>("h1b"), io_read_address2), registers_27, _GEN_154) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_156 = mux(eq(UInt<5>("h1c"), io_read_address2), registers_28, _GEN_155) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_157 = mux(eq(UInt<5>("h1d"), io_read_address2), registers_29, _GEN_156) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_158 = mux(eq(UInt<5>("h1e"), io_read_address2), registers_30, _GEN_157) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_159 = mux(eq(UInt<5>("h1f"), io_read_address2), registers_31, _GEN_158) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _registers_io_read_address2 = _GEN_159 @[src/main/scala/chisel3/util/Mux.scala 141:16]
    node _io_read_data2_T_3 = mux(_io_read_data2_T_2, io_write_data, _registers_io_read_address2) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    node _io_read_data2_T_4 = mux(_io_read_data2_T, UInt<1>("h0"), _io_read_data2_T_3) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    node _io_debug_read_data_T = eq(io_debug_read_address, UInt<1>("h0")) @[src/main/scala/riscv/core/RegisterFile.scala 54:30]
    node _io_debug_read_data_T_1 = eq(io_debug_read_address, io_write_address) @[src/main/scala/riscv/core/RegisterFile.scala 55:30]
    node _io_debug_read_data_T_2 = and(_io_debug_read_data_T_1, io_write_enable) @[src/main/scala/riscv/core/RegisterFile.scala 55:51]
    node _GEN_160 = validif(eq(UInt<1>("h0"), io_debug_read_address), registers_0) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_161 = mux(eq(UInt<1>("h1"), io_debug_read_address), registers_1, _GEN_160) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_162 = mux(eq(UInt<2>("h2"), io_debug_read_address), registers_2, _GEN_161) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_163 = mux(eq(UInt<2>("h3"), io_debug_read_address), registers_3, _GEN_162) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_164 = mux(eq(UInt<3>("h4"), io_debug_read_address), registers_4, _GEN_163) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_165 = mux(eq(UInt<3>("h5"), io_debug_read_address), registers_5, _GEN_164) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_166 = mux(eq(UInt<3>("h6"), io_debug_read_address), registers_6, _GEN_165) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_167 = mux(eq(UInt<3>("h7"), io_debug_read_address), registers_7, _GEN_166) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_168 = mux(eq(UInt<4>("h8"), io_debug_read_address), registers_8, _GEN_167) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_169 = mux(eq(UInt<4>("h9"), io_debug_read_address), registers_9, _GEN_168) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_170 = mux(eq(UInt<4>("ha"), io_debug_read_address), registers_10, _GEN_169) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_171 = mux(eq(UInt<4>("hb"), io_debug_read_address), registers_11, _GEN_170) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_172 = mux(eq(UInt<4>("hc"), io_debug_read_address), registers_12, _GEN_171) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_173 = mux(eq(UInt<4>("hd"), io_debug_read_address), registers_13, _GEN_172) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_174 = mux(eq(UInt<4>("he"), io_debug_read_address), registers_14, _GEN_173) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_175 = mux(eq(UInt<4>("hf"), io_debug_read_address), registers_15, _GEN_174) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_176 = mux(eq(UInt<5>("h10"), io_debug_read_address), registers_16, _GEN_175) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_177 = mux(eq(UInt<5>("h11"), io_debug_read_address), registers_17, _GEN_176) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_178 = mux(eq(UInt<5>("h12"), io_debug_read_address), registers_18, _GEN_177) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_179 = mux(eq(UInt<5>("h13"), io_debug_read_address), registers_19, _GEN_178) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_180 = mux(eq(UInt<5>("h14"), io_debug_read_address), registers_20, _GEN_179) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_181 = mux(eq(UInt<5>("h15"), io_debug_read_address), registers_21, _GEN_180) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_182 = mux(eq(UInt<5>("h16"), io_debug_read_address), registers_22, _GEN_181) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_183 = mux(eq(UInt<5>("h17"), io_debug_read_address), registers_23, _GEN_182) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_184 = mux(eq(UInt<5>("h18"), io_debug_read_address), registers_24, _GEN_183) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_185 = mux(eq(UInt<5>("h19"), io_debug_read_address), registers_25, _GEN_184) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_186 = mux(eq(UInt<5>("h1a"), io_debug_read_address), registers_26, _GEN_185) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_187 = mux(eq(UInt<5>("h1b"), io_debug_read_address), registers_27, _GEN_186) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_188 = mux(eq(UInt<5>("h1c"), io_debug_read_address), registers_28, _GEN_187) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_189 = mux(eq(UInt<5>("h1d"), io_debug_read_address), registers_29, _GEN_188) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_190 = mux(eq(UInt<5>("h1e"), io_debug_read_address), registers_30, _GEN_189) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _GEN_191 = mux(eq(UInt<5>("h1f"), io_debug_read_address), registers_31, _GEN_190) @[src/main/scala/chisel3/util/Mux.scala 141:{16,16}]
    node _registers_io_debug_read_address = _GEN_191 @[src/main/scala/chisel3/util/Mux.scala 141:16]
    node _io_debug_read_data_T_3 = mux(_io_debug_read_data_T_2, io_write_data, _registers_io_debug_read_address) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    node _io_debug_read_data_T_4 = mux(_io_debug_read_data_T, UInt<1>("h0"), _io_debug_read_data_T_3) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    io_read_data1 <= _io_read_data1_T_4 @[src/main/scala/riscv/core/RegisterFile.scala 35:17]
    io_read_data2 <= _io_read_data2_T_4 @[src/main/scala/riscv/core/RegisterFile.scala 43:17]
    io_debug_read_data <= _io_debug_read_data_T_4 @[src/main/scala/riscv/core/RegisterFile.scala 51:22]
    registers_0 <= _GEN_64
    registers_1 <= _GEN_65
    registers_2 <= _GEN_66
    registers_3 <= _GEN_67
    registers_4 <= _GEN_68
    registers_5 <= _GEN_69
    registers_6 <= _GEN_70
    registers_7 <= _GEN_71
    registers_8 <= _GEN_72
    registers_9 <= _GEN_73
    registers_10 <= _GEN_74
    registers_11 <= _GEN_75
    registers_12 <= _GEN_76
    registers_13 <= _GEN_77
    registers_14 <= _GEN_78
    registers_15 <= _GEN_79
    registers_16 <= _GEN_80
    registers_17 <= _GEN_81
    registers_18 <= _GEN_82
    registers_19 <= _GEN_83
    registers_20 <= _GEN_84
    registers_21 <= _GEN_85
    registers_22 <= _GEN_86
    registers_23 <= _GEN_87
    registers_24 <= _GEN_88
    registers_25 <= _GEN_89
    registers_26 <= _GEN_90
    registers_27 <= _GEN_91
    registers_28 <= _GEN_92
    registers_29 <= _GEN_93
    registers_30 <= _GEN_94
    registers_31 <= _GEN_95

  module InstructionFetch :
    input clock : Clock
    input reset : UInt<1>
    input io_stall_flag_ctrl : UInt<1> @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 12:14]
    input io_jump_flag_id : UInt<1> @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 12:14]
    input io_jump_address_id : UInt<32> @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 12:14]
    input io_rom_instruction : UInt<32> @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 12:14]
    input io_instruction_valid : UInt<1> @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 12:14]
    output io_instruction_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 12:14]
    output io_id_instruction : UInt<32> @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 12:14]

    reg pc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), pc) @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 22:19]
    node _pc_T = add(pc, UInt<3>("h4")) @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 25:8]
    node _pc_T_1 = tail(_pc_T, 1) @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 25:8]
    node _pc_T_2 = eq(io_stall_flag_ctrl, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 27:27]
    node _pc_T_3 = and(io_jump_flag_id, _pc_T_2) @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 27:24]
    node _pc_T_4 = eq(io_instruction_valid, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 28:30]
    node _pc_T_5 = or(io_stall_flag_ctrl, _pc_T_4) @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 28:27]
    node _pc_T_6 = mux(_pc_T_5, pc, _pc_T_1) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    node _pc_T_7 = mux(_pc_T_3, io_jump_address_id, _pc_T_6) @[src/main/scala/chisel3/util/Mux.scala 141:16]
    node _io_id_instruction_T = mux(io_instruction_valid, io_rom_instruction, UInt<32>("h13")) @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 33:32]
    io_instruction_address <= pc @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 32:26]
    io_id_instruction <= _io_id_instruction_T @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 33:26]
    pc <= mux(reset, UInt<32>("h1000"), _pc_T_7) @[src/main/scala/riscv/core/fivestage_final/InstructionFetch.scala 22:{19,19} 24:6]

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
    node _GEN_1 = mux(io_flush, UInt<32>("h13"), _GEN_0) @[src/main/scala/riscv/core/PipelineRegister.scala 15:18 16:11]
    io_out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
    myreg <= mux(reset, UInt<32>("h13"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 13:{22,22}]
    out <= mux(reset, UInt<32>("h13"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 14:{22,22}]

  module PipelineRegister_1 :
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
    node _GEN_1 = mux(io_flush, UInt<32>("h1000"), _GEN_0) @[src/main/scala/riscv/core/PipelineRegister.scala 15:18 16:11]
    io_out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
    myreg <= mux(reset, UInt<32>("h1000"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 13:{22,22}]
    out <= mux(reset, UInt<32>("h1000"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 14:{22,22}]

  module PipelineRegister_2 :
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
    node _GEN_1 = mux(io_flush, UInt<1>("h0"), _GEN_0) @[src/main/scala/riscv/core/PipelineRegister.scala 15:18 16:11]
    io_out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
    myreg <= mux(reset, UInt<1>("h0"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 13:{22,22}]
    out <= mux(reset, UInt<1>("h0"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 14:{22,22}]

  module IF2ID :
    input clock : Clock
    input reset : UInt<1>
    input io_stall : UInt<1> @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 8:14]
    input io_flush : UInt<1> @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 8:14]
    input io_instruction : UInt<32> @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 8:14]
    input io_instruction_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 8:14]
    input io_interrupt_flag : UInt<32> @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 8:14]
    output io_output_instruction : UInt<32> @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 8:14]
    output io_output_instruction_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 8:14]
    output io_output_interrupt_flag : UInt<32> @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 8:14]

    inst instruction of PipelineRegister @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 20:27]
    inst instruction_address of PipelineRegister_1 @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 26:35]
    inst interrupt_flag of PipelineRegister_2 @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 32:30]
    io_output_instruction <= instruction.io_out @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 24:25]
    io_output_instruction_address <= instruction_address.io_out @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 30:33]
    io_output_interrupt_flag <= interrupt_flag.io_out @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 36:28]
    instruction.clock <= clock
    instruction.reset <= reset
    instruction.io_stall <= io_stall @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 22:25]
    instruction.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 23:25]
    instruction.io_in <= io_instruction @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 21:25]
    instruction_address.clock <= clock
    instruction_address.reset <= reset
    instruction_address.io_stall <= io_stall @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 28:33]
    instruction_address.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 29:33]
    instruction_address.io_in <= io_instruction_address @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 27:33]
    interrupt_flag.clock <= clock
    interrupt_flag.reset <= reset
    interrupt_flag.io_stall <= io_stall @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 34:28]
    interrupt_flag.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 35:28]
    interrupt_flag.io_in <= io_interrupt_flag @[src/main/scala/riscv/core/fivestage_final/IF2ID.scala 33:28]

  module InstructionDecode :
    input clock : Clock
    input reset : UInt<1>
    input io_instruction : UInt<32> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    input io_instruction_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    input io_reg1_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    input io_reg2_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    input io_forward_from_mem : UInt<32> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    input io_forward_from_wb : UInt<32> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    input io_reg1_forward : UInt<2> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    input io_reg2_forward : UInt<2> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    input io_interrupt_assert : UInt<1> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    input io_interrupt_handler_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_regs_reg1_read_address : UInt<5> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_regs_reg2_read_address : UInt<5> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_ex_immediate : UInt<32> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_ex_aluop1_source : UInt<1> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_ex_aluop2_source : UInt<1> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_ex_memory_read_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_ex_memory_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_ex_reg_write_source : UInt<2> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_ex_reg_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_ex_reg_write_address : UInt<5> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_ex_csr_address : UInt<12> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_ex_csr_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_ctrl_jump_instruction : UInt<1> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_clint_jump_flag : UInt<1> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_clint_jump_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_if_jump_flag : UInt<1> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]
    output io_if_jump_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 122:14]

    node opcode = bits(io_instruction, 6, 0) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 152:30]
    node funct3 = bits(io_instruction, 14, 12) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 153:30]
    node funct7 = bits(io_instruction, 31, 25) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 154:30]
    node rd = bits(io_instruction, 11, 7) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 155:30]
    node rs1 = bits(io_instruction, 19, 15) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 156:30]
    node rs2 = bits(io_instruction, 24, 20) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 157:30]
    node _io_regs_reg1_read_address_T = eq(opcode, UInt<6>("h37")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 159:43]
    node _io_regs_reg1_read_address_T_1 = mux(_io_regs_reg1_read_address_T, UInt<5>("h0"), rs1) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 159:35]
    node _io_ex_immediate_T = bits(io_instruction, 31, 31) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 163:32]
    node _io_ex_immediate_T_1 = bits(_io_ex_immediate_T, 0, 0) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 163:13]
    node _io_ex_immediate_T_2 = mux(_io_ex_immediate_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 163:13]
    node _io_ex_immediate_T_3 = bits(io_instruction, 31, 20) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 163:53]
    node _io_ex_immediate_T_4 = cat(_io_ex_immediate_T_2, _io_ex_immediate_T_3) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 163:8]
    node _io_ex_immediate_T_5 = bits(io_instruction, 31, 31) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 165:56]
    node _io_ex_immediate_T_6 = bits(_io_ex_immediate_T_5, 0, 0) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 165:37]
    node _io_ex_immediate_T_7 = mux(_io_ex_immediate_T_6, UInt<21>("h1fffff"), UInt<21>("h0")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 165:37]
    node _io_ex_immediate_T_8 = bits(io_instruction, 30, 20) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 165:77]
    node _io_ex_immediate_T_9 = cat(_io_ex_immediate_T_7, _io_ex_immediate_T_8) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 165:32]
    node _io_ex_immediate_T_10 = bits(io_instruction, 31, 31) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 166:56]
    node _io_ex_immediate_T_11 = bits(_io_ex_immediate_T_10, 0, 0) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 166:37]
    node _io_ex_immediate_T_12 = mux(_io_ex_immediate_T_11, UInt<21>("h1fffff"), UInt<21>("h0")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 166:37]
    node _io_ex_immediate_T_13 = bits(io_instruction, 30, 20) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 166:77]
    node _io_ex_immediate_T_14 = cat(_io_ex_immediate_T_12, _io_ex_immediate_T_13) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 166:32]
    node _io_ex_immediate_T_15 = bits(io_instruction, 31, 31) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 167:56]
    node _io_ex_immediate_T_16 = bits(_io_ex_immediate_T_15, 0, 0) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 167:37]
    node _io_ex_immediate_T_17 = mux(_io_ex_immediate_T_16, UInt<21>("h1fffff"), UInt<21>("h0")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 167:37]
    node _io_ex_immediate_T_18 = bits(io_instruction, 30, 20) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 167:77]
    node _io_ex_immediate_T_19 = cat(_io_ex_immediate_T_17, _io_ex_immediate_T_18) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 167:32]
    node _io_ex_immediate_T_20 = bits(io_instruction, 31, 31) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 168:56]
    node _io_ex_immediate_T_21 = bits(_io_ex_immediate_T_20, 0, 0) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 168:37]
    node _io_ex_immediate_T_22 = mux(_io_ex_immediate_T_21, UInt<21>("h1fffff"), UInt<21>("h0")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 168:37]
    node _io_ex_immediate_T_23 = bits(io_instruction, 30, 25) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 168:77]
    node _io_ex_immediate_T_24 = bits(io_instruction, 11, 7) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 168:101]
    node io_ex_immediate_hi = cat(_io_ex_immediate_T_22, _io_ex_immediate_T_23) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 168:32]
    node _io_ex_immediate_T_25 = cat(io_ex_immediate_hi, _io_ex_immediate_T_24) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 168:32]
    node _io_ex_immediate_T_26 = bits(io_instruction, 31, 31) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 170:32]
    node _io_ex_immediate_T_27 = bits(_io_ex_immediate_T_26, 0, 0) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 170:13]
    node _io_ex_immediate_T_28 = mux(_io_ex_immediate_T_27, UInt<20>("hfffff"), UInt<20>("h0")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 170:13]
    node _io_ex_immediate_T_29 = bits(io_instruction, 7, 7) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 171:23]
    node _io_ex_immediate_T_30 = bits(io_instruction, 30, 25) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 172:23]
    node _io_ex_immediate_T_31 = bits(io_instruction, 11, 8) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 173:23]
    node io_ex_immediate_lo = cat(_io_ex_immediate_T_31, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 169:32]
    node io_ex_immediate_hi_hi = cat(_io_ex_immediate_T_28, _io_ex_immediate_T_29) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 169:32]
    node io_ex_immediate_hi_1 = cat(io_ex_immediate_hi_hi, _io_ex_immediate_T_30) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 169:32]
    node _io_ex_immediate_T_32 = cat(io_ex_immediate_hi_1, io_ex_immediate_lo) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 169:32]
    node _io_ex_immediate_T_33 = bits(io_instruction, 31, 12) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 176:47]
    node _io_ex_immediate_T_34 = cat(_io_ex_immediate_T_33, UInt<12>("h0")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 176:32]
    node _io_ex_immediate_T_35 = bits(io_instruction, 31, 12) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 177:47]
    node _io_ex_immediate_T_36 = cat(_io_ex_immediate_T_35, UInt<12>("h0")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 177:32]
    node _io_ex_immediate_T_37 = bits(io_instruction, 31, 31) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 179:32]
    node _io_ex_immediate_T_38 = bits(_io_ex_immediate_T_37, 0, 0) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 179:13]
    node _io_ex_immediate_T_39 = mux(_io_ex_immediate_T_38, UInt<12>("hfff"), UInt<12>("h0")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 179:13]
    node _io_ex_immediate_T_40 = bits(io_instruction, 19, 12) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 180:23]
    node _io_ex_immediate_T_41 = bits(io_instruction, 20, 20) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 181:23]
    node _io_ex_immediate_T_42 = bits(io_instruction, 30, 21) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 182:23]
    node io_ex_immediate_lo_1 = cat(_io_ex_immediate_T_42, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 178:30]
    node io_ex_immediate_hi_hi_1 = cat(_io_ex_immediate_T_39, _io_ex_immediate_T_40) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 178:30]
    node io_ex_immediate_hi_2 = cat(io_ex_immediate_hi_hi_1, _io_ex_immediate_T_41) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 178:30]
    node _io_ex_immediate_T_43 = cat(io_ex_immediate_hi_2, io_ex_immediate_lo_1) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 178:30]
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
    node _io_ex_aluop1_source_T = eq(opcode, UInt<5>("h17")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 188:12]
    node _io_ex_aluop1_source_T_1 = eq(opcode, UInt<7>("h63")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 188:45]
    node _io_ex_aluop1_source_T_2 = or(_io_ex_aluop1_source_T, _io_ex_aluop1_source_T_1) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 188:35]
    node _io_ex_aluop1_source_T_3 = eq(opcode, UInt<7>("h6f")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 188:78]
    node _io_ex_aluop1_source_T_4 = or(_io_ex_aluop1_source_T_2, _io_ex_aluop1_source_T_3) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 188:68]
    node _io_ex_aluop1_source_T_5 = mux(_io_ex_aluop1_source_T_4, UInt<1>("h1"), UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 187:29]
    node _io_ex_aluop2_source_T = eq(opcode, UInt<6>("h33")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 193:12]
    node _io_ex_aluop2_source_T_1 = mux(_io_ex_aluop2_source_T, UInt<1>("h0"), UInt<1>("h1")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 192:29]
    node _io_ex_memory_read_enable_T = eq(opcode, UInt<2>("h3")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 197:39]
    node _io_ex_memory_write_enable_T = eq(opcode, UInt<6>("h23")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 198:39]
    node _io_ex_reg_write_source_T = eq(UInt<2>("h3"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_reg_write_source_T_1 = mux(_io_ex_reg_write_source_T, UInt<2>("h1"), UInt<2>("h0")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_reg_write_source_T_2 = eq(UInt<7>("h73"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_reg_write_source_T_3 = mux(_io_ex_reg_write_source_T_2, UInt<2>("h2"), _io_ex_reg_write_source_T_1) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_reg_write_source_T_4 = eq(UInt<7>("h6f"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_reg_write_source_T_5 = mux(_io_ex_reg_write_source_T_4, UInt<2>("h3"), _io_ex_reg_write_source_T_3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_reg_write_source_T_6 = eq(UInt<7>("h67"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_reg_write_source_T_7 = mux(_io_ex_reg_write_source_T_6, UInt<2>("h3"), _io_ex_reg_write_source_T_5) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ex_reg_write_enable_T = eq(opcode, UInt<6>("h33")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 209:37]
    node _io_ex_reg_write_enable_T_1 = eq(opcode, UInt<5>("h13")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 209:73]
    node _io_ex_reg_write_enable_T_2 = or(_io_ex_reg_write_enable_T, _io_ex_reg_write_enable_T_1) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 209:62]
    node _io_ex_reg_write_enable_T_3 = eq(opcode, UInt<2>("h3")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 210:13]
    node _io_ex_reg_write_enable_T_4 = or(_io_ex_reg_write_enable_T_2, _io_ex_reg_write_enable_T_3) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 209:97]
    node _io_ex_reg_write_enable_T_5 = eq(opcode, UInt<5>("h17")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 210:48]
    node _io_ex_reg_write_enable_T_6 = or(_io_ex_reg_write_enable_T_4, _io_ex_reg_write_enable_T_5) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 210:37]
    node _io_ex_reg_write_enable_T_7 = eq(opcode, UInt<6>("h37")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 210:83]
    node _io_ex_reg_write_enable_T_8 = or(_io_ex_reg_write_enable_T_6, _io_ex_reg_write_enable_T_7) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 210:72]
    node _io_ex_reg_write_enable_T_9 = eq(opcode, UInt<7>("h6f")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 211:13]
    node _io_ex_reg_write_enable_T_10 = or(_io_ex_reg_write_enable_T_8, _io_ex_reg_write_enable_T_9) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 210:105]
    node _io_ex_reg_write_enable_T_11 = eq(opcode, UInt<7>("h67")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 211:46]
    node _io_ex_reg_write_enable_T_12 = or(_io_ex_reg_write_enable_T_10, _io_ex_reg_write_enable_T_11) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 211:35]
    node _io_ex_reg_write_enable_T_13 = eq(opcode, UInt<7>("h73")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 211:80]
    node _io_ex_reg_write_enable_T_14 = or(_io_ex_reg_write_enable_T_12, _io_ex_reg_write_enable_T_13) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 211:69]
    node _io_ex_reg_write_address_T = bits(io_instruction, 11, 7) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 212:44]
    node _io_ex_csr_address_T = bits(io_instruction, 31, 20) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 213:44]
    node _io_ex_csr_write_enable_T = eq(opcode, UInt<7>("h73")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 214:37]
    node _io_ex_csr_write_enable_T_1 = eq(funct3, UInt<1>("h1")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 215:12]
    node _io_ex_csr_write_enable_T_2 = eq(funct3, UInt<3>("h5")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 215:52]
    node _io_ex_csr_write_enable_T_3 = or(_io_ex_csr_write_enable_T_1, _io_ex_csr_write_enable_T_2) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 215:42]
    node _io_ex_csr_write_enable_T_4 = eq(funct3, UInt<2>("h2")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 216:14]
    node _io_ex_csr_write_enable_T_5 = or(_io_ex_csr_write_enable_T_3, _io_ex_csr_write_enable_T_4) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 215:83]
    node _io_ex_csr_write_enable_T_6 = eq(funct3, UInt<3>("h6")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 216:54]
    node _io_ex_csr_write_enable_T_7 = or(_io_ex_csr_write_enable_T_5, _io_ex_csr_write_enable_T_6) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 216:44]
    node _io_ex_csr_write_enable_T_8 = eq(funct3, UInt<2>("h3")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 217:14]
    node _io_ex_csr_write_enable_T_9 = or(_io_ex_csr_write_enable_T_7, _io_ex_csr_write_enable_T_8) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 216:85]
    node _io_ex_csr_write_enable_T_10 = eq(funct3, UInt<3>("h7")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 217:54]
    node _io_ex_csr_write_enable_T_11 = or(_io_ex_csr_write_enable_T_9, _io_ex_csr_write_enable_T_10) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 217:44]
    node _io_ex_csr_write_enable_T_12 = and(_io_ex_csr_write_enable_T, _io_ex_csr_write_enable_T_11) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 214:59]
    node _reg1_data_T = eq(UInt<2>("h0"), io_reg1_forward) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _reg1_data_T_1 = mux(_reg1_data_T, io_reg1_data, UInt<1>("h0")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _reg1_data_T_2 = eq(UInt<2>("h2"), io_reg1_forward) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _reg1_data_T_3 = mux(_reg1_data_T_2, io_forward_from_wb, _reg1_data_T_1) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _reg1_data_T_4 = eq(UInt<2>("h1"), io_reg1_forward) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node reg1_data = mux(_reg1_data_T_4, io_forward_from_mem, _reg1_data_T_3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _reg2_data_T = eq(UInt<2>("h0"), io_reg2_forward) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _reg2_data_T_1 = mux(_reg2_data_T, io_reg2_data, UInt<1>("h0")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _reg2_data_T_2 = eq(UInt<2>("h2"), io_reg2_forward) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _reg2_data_T_3 = mux(_reg2_data_T_2, io_forward_from_wb, _reg2_data_T_1) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _reg2_data_T_4 = eq(UInt<2>("h1"), io_reg2_forward) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node reg2_data = mux(_reg2_data_T_4, io_forward_from_mem, _reg2_data_T_3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_ctrl_jump_instruction_T = eq(opcode, UInt<7>("h6f")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 238:38]
    node _io_ctrl_jump_instruction_T_1 = eq(opcode, UInt<7>("h67")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 239:13]
    node _io_ctrl_jump_instruction_T_2 = or(_io_ctrl_jump_instruction_T, _io_ctrl_jump_instruction_T_1) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 238:59]
    node _io_ctrl_jump_instruction_T_3 = eq(opcode, UInt<7>("h63")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 240:13]
    node _io_ctrl_jump_instruction_T_4 = or(_io_ctrl_jump_instruction_T_2, _io_ctrl_jump_instruction_T_3) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 239:36]
    node _io_if_jump_flag_T = eq(opcode, UInt<7>("h6f")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 242:29]
    node _io_if_jump_flag_T_1 = eq(opcode, UInt<7>("h67")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 243:13]
    node _io_if_jump_flag_T_2 = or(_io_if_jump_flag_T, _io_if_jump_flag_T_1) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 242:50]
    node _io_if_jump_flag_T_3 = eq(opcode, UInt<7>("h63")) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 244:13]
    node _io_if_jump_flag_T_4 = eq(reg1_data, reg2_data) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 248:46]
    node _io_if_jump_flag_T_5 = neq(reg1_data, reg2_data) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 249:46]
    node _io_if_jump_flag_T_6 = asSInt(reg1_data) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 250:46]
    node _io_if_jump_flag_T_7 = asSInt(reg2_data) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 250:65]
    node _io_if_jump_flag_T_8 = lt(_io_if_jump_flag_T_6, _io_if_jump_flag_T_7) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 250:53]
    node _io_if_jump_flag_T_9 = asSInt(reg1_data) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 251:46]
    node _io_if_jump_flag_T_10 = asSInt(reg2_data) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 251:66]
    node _io_if_jump_flag_T_11 = geq(_io_if_jump_flag_T_9, _io_if_jump_flag_T_10) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 251:53]
    node _io_if_jump_flag_T_12 = lt(reg1_data, reg2_data) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 252:53]
    node _io_if_jump_flag_T_13 = geq(reg1_data, reg2_data) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 253:53]
    node _io_if_jump_flag_T_14 = eq(UInt<1>("h0"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_flag_T_15 = mux(_io_if_jump_flag_T_14, _io_if_jump_flag_T_4, UInt<1>("h0")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_flag_T_16 = eq(UInt<1>("h1"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_flag_T_17 = mux(_io_if_jump_flag_T_16, _io_if_jump_flag_T_5, _io_if_jump_flag_T_15) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_flag_T_18 = eq(UInt<3>("h4"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_flag_T_19 = mux(_io_if_jump_flag_T_18, _io_if_jump_flag_T_8, _io_if_jump_flag_T_17) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_flag_T_20 = eq(UInt<3>("h5"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_flag_T_21 = mux(_io_if_jump_flag_T_20, _io_if_jump_flag_T_11, _io_if_jump_flag_T_19) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_flag_T_22 = eq(UInt<3>("h6"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_flag_T_23 = mux(_io_if_jump_flag_T_22, _io_if_jump_flag_T_12, _io_if_jump_flag_T_21) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_flag_T_24 = eq(UInt<3>("h7"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_flag_T_25 = mux(_io_if_jump_flag_T_24, _io_if_jump_flag_T_13, _io_if_jump_flag_T_23) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_flag_T_26 = and(_io_if_jump_flag_T_3, _io_if_jump_flag_T_25) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 244:37]
    node _io_if_jump_flag_T_27 = or(_io_if_jump_flag_T_2, _io_if_jump_flag_T_26) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 243:36]
    node _io_if_jump_flag_T_28 = or(_io_if_jump_flag_T_27, io_interrupt_assert) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 255:7]
    node _io_if_jump_address_T = add(io_instruction_address, io_ex_immediate) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 264:55]
    node _io_if_jump_address_T_1 = tail(_io_if_jump_address_T, 1) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 264:55]
    node _io_if_jump_address_T_2 = add(io_instruction_address, io_ex_immediate) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 265:55]
    node _io_if_jump_address_T_3 = tail(_io_if_jump_address_T_2, 1) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 265:55]
    node _io_if_jump_address_T_4 = add(reg1_data, io_ex_immediate) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 266:42]
    node _io_if_jump_address_T_5 = tail(_io_if_jump_address_T_4, 1) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 266:42]
    node _io_if_jump_address_T_6 = eq(UInt<7>("h63"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_address_T_7 = mux(_io_if_jump_address_T_6, _io_if_jump_address_T_1, UInt<1>("h0")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_address_T_8 = eq(UInt<7>("h6f"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_address_T_9 = mux(_io_if_jump_address_T_8, _io_if_jump_address_T_3, _io_if_jump_address_T_7) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_address_T_10 = eq(UInt<7>("h67"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_address_T_11 = mux(_io_if_jump_address_T_10, _io_if_jump_address_T_5, _io_if_jump_address_T_9) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_if_jump_address_T_12 = mux(io_interrupt_assert, io_interrupt_handler_address, _io_if_jump_address_T_11) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 257:28]
    node _io_clint_jump_address_T = add(io_instruction_address, io_ex_immediate) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 275:53]
    node _io_clint_jump_address_T_1 = tail(_io_clint_jump_address_T, 1) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 275:53]
    node _io_clint_jump_address_T_2 = add(io_instruction_address, io_ex_immediate) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 276:53]
    node _io_clint_jump_address_T_3 = tail(_io_clint_jump_address_T_2, 1) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 276:53]
    node _io_clint_jump_address_T_4 = add(reg1_data, io_ex_immediate) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 277:40]
    node _io_clint_jump_address_T_5 = tail(_io_clint_jump_address_T_4, 1) @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 277:40]
    node _io_clint_jump_address_T_6 = eq(UInt<7>("h63"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_clint_jump_address_T_7 = mux(_io_clint_jump_address_T_6, _io_clint_jump_address_T_1, UInt<1>("h0")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_clint_jump_address_T_8 = eq(UInt<7>("h6f"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_clint_jump_address_T_9 = mux(_io_clint_jump_address_T_8, _io_clint_jump_address_T_3, _io_clint_jump_address_T_7) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_clint_jump_address_T_10 = eq(UInt<7>("h67"), opcode) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_clint_jump_address_T_11 = mux(_io_clint_jump_address_T_10, _io_clint_jump_address_T_5, _io_clint_jump_address_T_9) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    io_regs_reg1_read_address <= _io_regs_reg1_read_address_T_1 @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 159:29]
    io_regs_reg2_read_address <= rs2 @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 160:29]
    io_ex_immediate <= _io_ex_immediate_T_59 @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 161:19]
    io_ex_aluop1_source <= _io_ex_aluop1_source_T_5 @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 187:23]
    io_ex_aluop2_source <= _io_ex_aluop2_source_T_1 @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 192:23]
    io_ex_memory_read_enable <= _io_ex_memory_read_enable_T @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 197:29]
    io_ex_memory_write_enable <= _io_ex_memory_write_enable_T @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 198:29]
    io_ex_reg_write_source <= _io_ex_reg_write_source_T_7 @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 199:26]
    io_ex_reg_write_enable <= _io_ex_reg_write_enable_T_14 @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 209:26]
    io_ex_reg_write_address <= _io_ex_reg_write_address_T @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 212:27]
    io_ex_csr_address <= _io_ex_csr_address_T @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 213:27]
    io_ex_csr_write_enable <= _io_ex_csr_write_enable_T_12 @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 214:26]
    io_ctrl_jump_instruction <= _io_ctrl_jump_instruction_T_4 @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 238:28]
    io_clint_jump_flag <= io_ctrl_jump_instruction @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 270:22]
    io_clint_jump_address <= _io_clint_jump_address_T_11 @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 271:25]
    io_if_jump_flag <= _io_if_jump_flag_T_28 @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 242:19]
    io_if_jump_address <= _io_if_jump_address_T_12 @[src/main/scala/riscv/core/fivestage_final/InstructionDecode.scala 257:22]

  module PipelineRegister_5 :
    input clock : Clock
    input reset : UInt<1>
    input io_stall : UInt<1> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    input io_flush : UInt<1> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    input io_in : UInt<5> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    output io_out : UInt<5> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<5>, clock with :
      reset => (UInt<1>("h0"), myreg) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<5>, clock with :
      reset => (UInt<1>("h0"), out) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    node _GEN_0 = mux(io_stall, myreg, io_in) @[src/main/scala/riscv/core/PipelineRegister.scala 19:25 20:11 24:13]
    node _GEN_1 = mux(io_flush, UInt<1>("h0"), _GEN_0) @[src/main/scala/riscv/core/PipelineRegister.scala 15:18 16:11]
    io_out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
    myreg <= mux(reset, UInt<1>("h0"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 13:{22,22}]
    out <= mux(reset, UInt<1>("h0"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 14:{22,22}]

  module PipelineRegister_7 :
    input clock : Clock
    input reset : UInt<1>
    input io_stall : UInt<1> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    input io_flush : UInt<1> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    input io_in : UInt<1> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    output io_out : UInt<1> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<1>, clock with :
      reset => (UInt<1>("h0"), myreg) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<1>, clock with :
      reset => (UInt<1>("h0"), out) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    node _GEN_0 = mux(io_stall, myreg, io_in) @[src/main/scala/riscv/core/PipelineRegister.scala 19:25 20:11 24:13]
    node _GEN_1 = mux(io_flush, UInt<1>("h0"), _GEN_0) @[src/main/scala/riscv/core/PipelineRegister.scala 15:18 16:11]
    io_out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
    myreg <= mux(reset, UInt<1>("h0"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 13:{22,22}]
    out <= mux(reset, UInt<1>("h0"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 14:{22,22}]

  module PipelineRegister_9 :
    input clock : Clock
    input reset : UInt<1>
    input io_stall : UInt<1> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    input io_flush : UInt<1> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    input io_in : UInt<2> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    output io_out : UInt<2> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<2>, clock with :
      reset => (UInt<1>("h0"), myreg) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<2>, clock with :
      reset => (UInt<1>("h0"), out) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    node _GEN_0 = mux(io_stall, myreg, io_in) @[src/main/scala/riscv/core/PipelineRegister.scala 19:25 20:11 24:13]
    node _GEN_1 = mux(io_flush, UInt<1>("h0"), _GEN_0) @[src/main/scala/riscv/core/PipelineRegister.scala 15:18 16:11]
    io_out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
    myreg <= mux(reset, UInt<1>("h0"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 13:{22,22}]
    out <= mux(reset, UInt<1>("h0"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 14:{22,22}]

  module PipelineRegister_16 :
    input clock : Clock
    input reset : UInt<1>
    input io_stall : UInt<1> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    input io_flush : UInt<1> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    input io_in : UInt<12> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    output io_out : UInt<12> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<12>, clock with :
      reset => (UInt<1>("h0"), myreg) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<12>, clock with :
      reset => (UInt<1>("h0"), out) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    node _GEN_0 = mux(io_stall, myreg, io_in) @[src/main/scala/riscv/core/PipelineRegister.scala 19:25 20:11 24:13]
    node _GEN_1 = mux(io_flush, UInt<1>("h0"), _GEN_0) @[src/main/scala/riscv/core/PipelineRegister.scala 15:18 16:11]
    io_out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
    myreg <= mux(reset, UInt<1>("h0"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 13:{22,22}]
    out <= mux(reset, UInt<1>("h0"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 14:{22,22}]

  module ID2EX :
    input clock : Clock
    input reset : UInt<1>
    input io_flush : UInt<1> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_instruction : UInt<32> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_instruction_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_regs_reg1_read_address : UInt<5> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_regs_reg2_read_address : UInt<5> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_regs_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_regs_write_address : UInt<5> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_regs_write_source : UInt<2> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_reg1_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_reg2_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_immediate : UInt<32> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_aluop1_source : UInt<1> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_aluop2_source : UInt<1> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_csr_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_csr_address : UInt<12> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_memory_read_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_memory_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    input io_csr_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_instruction : UInt<32> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_instruction_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_regs_reg1_read_address : UInt<5> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_regs_reg2_read_address : UInt<5> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_regs_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_regs_write_address : UInt<5> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_regs_write_source : UInt<2> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_reg1_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_reg2_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_immediate : UInt<32> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_aluop1_source : UInt<1> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_aluop2_source : UInt<1> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_csr_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_csr_address : UInt<12> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_memory_read_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_memory_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]
    output io_output_csr_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 8:14]

    inst instruction of PipelineRegister @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 48:27]
    inst instruction_address of PipelineRegister_1 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 54:35]
    inst regs_reg1_read_address of PipelineRegister_5 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 60:38]
    inst regs_reg2_read_address of PipelineRegister_5 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 66:38]
    inst regs_write_enable of PipelineRegister_7 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 72:33]
    inst regs_write_address of PipelineRegister_5 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 78:34]
    inst regs_write_source of PipelineRegister_9 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 84:33]
    inst reg1_data of PipelineRegister_2 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 90:25]
    inst reg2_data of PipelineRegister_2 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 96:25]
    inst immediate of PipelineRegister_2 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 102:25]
    inst aluop1_source of PipelineRegister_7 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 108:29]
    inst aluop2_source of PipelineRegister_7 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 114:29]
    inst csr_write_enable of PipelineRegister_7 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 120:32]
    inst csr_address of PipelineRegister_16 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 126:27]
    inst memory_read_enable of PipelineRegister_7 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 132:34]
    inst memory_write_enable of PipelineRegister_7 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 138:35]
    inst csr_read_data of PipelineRegister_2 @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 144:29]
    io_output_instruction <= instruction.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 52:25]
    io_output_instruction_address <= instruction_address.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 58:33]
    io_output_regs_reg1_read_address <= regs_reg1_read_address.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 64:36]
    io_output_regs_reg2_read_address <= regs_reg2_read_address.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 70:36]
    io_output_regs_write_enable <= regs_write_enable.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 76:31]
    io_output_regs_write_address <= regs_write_address.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 82:32]
    io_output_regs_write_source <= regs_write_source.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 88:31]
    io_output_reg1_data <= reg1_data.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 94:23]
    io_output_reg2_data <= reg2_data.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 100:23]
    io_output_immediate <= immediate.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 106:23]
    io_output_aluop1_source <= aluop1_source.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 112:27]
    io_output_aluop2_source <= aluop2_source.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 118:27]
    io_output_csr_write_enable <= csr_write_enable.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 124:30]
    io_output_csr_address <= csr_address.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 130:25]
    io_output_memory_read_enable <= memory_read_enable.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 136:32]
    io_output_memory_write_enable <= memory_write_enable.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 142:33]
    io_output_csr_read_data <= csr_read_data.io_out @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 148:27]
    instruction.clock <= clock
    instruction.reset <= reset
    instruction.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 50:25]
    instruction.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 51:25]
    instruction.io_in <= io_instruction @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 49:25]
    instruction_address.clock <= clock
    instruction_address.reset <= reset
    instruction_address.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 56:33]
    instruction_address.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 57:33]
    instruction_address.io_in <= io_instruction_address @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 55:33]
    regs_reg1_read_address.clock <= clock
    regs_reg1_read_address.reset <= reset
    regs_reg1_read_address.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 62:36]
    regs_reg1_read_address.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 63:36]
    regs_reg1_read_address.io_in <= io_regs_reg1_read_address @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 61:36]
    regs_reg2_read_address.clock <= clock
    regs_reg2_read_address.reset <= reset
    regs_reg2_read_address.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 68:36]
    regs_reg2_read_address.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 69:36]
    regs_reg2_read_address.io_in <= io_regs_reg2_read_address @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 67:36]
    regs_write_enable.clock <= clock
    regs_write_enable.reset <= reset
    regs_write_enable.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 74:31]
    regs_write_enable.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 75:31]
    regs_write_enable.io_in <= io_regs_write_enable @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 73:31]
    regs_write_address.clock <= clock
    regs_write_address.reset <= reset
    regs_write_address.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 80:32]
    regs_write_address.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 81:32]
    regs_write_address.io_in <= io_regs_write_address @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 79:32]
    regs_write_source.clock <= clock
    regs_write_source.reset <= reset
    regs_write_source.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 86:31]
    regs_write_source.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 87:31]
    regs_write_source.io_in <= io_regs_write_source @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 85:31]
    reg1_data.clock <= clock
    reg1_data.reset <= reset
    reg1_data.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 92:23]
    reg1_data.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 93:23]
    reg1_data.io_in <= io_reg1_data @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 91:23]
    reg2_data.clock <= clock
    reg2_data.reset <= reset
    reg2_data.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 98:23]
    reg2_data.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 99:23]
    reg2_data.io_in <= io_reg2_data @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 97:23]
    immediate.clock <= clock
    immediate.reset <= reset
    immediate.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 104:23]
    immediate.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 105:23]
    immediate.io_in <= io_immediate @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 103:23]
    aluop1_source.clock <= clock
    aluop1_source.reset <= reset
    aluop1_source.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 110:27]
    aluop1_source.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 111:27]
    aluop1_source.io_in <= io_aluop1_source @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 109:27]
    aluop2_source.clock <= clock
    aluop2_source.reset <= reset
    aluop2_source.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 116:27]
    aluop2_source.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 117:27]
    aluop2_source.io_in <= io_aluop2_source @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 115:27]
    csr_write_enable.clock <= clock
    csr_write_enable.reset <= reset
    csr_write_enable.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 122:30]
    csr_write_enable.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 123:30]
    csr_write_enable.io_in <= io_csr_write_enable @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 121:30]
    csr_address.clock <= clock
    csr_address.reset <= reset
    csr_address.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 128:25]
    csr_address.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 129:25]
    csr_address.io_in <= io_csr_address @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 127:25]
    memory_read_enable.clock <= clock
    memory_read_enable.reset <= reset
    memory_read_enable.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 134:32]
    memory_read_enable.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 135:32]
    memory_read_enable.io_in <= io_memory_read_enable @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 133:32]
    memory_write_enable.clock <= clock
    memory_write_enable.reset <= reset
    memory_write_enable.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 140:33]
    memory_write_enable.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 141:33]
    memory_write_enable.io_in <= io_memory_write_enable @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 139:33]
    csr_read_data.clock <= clock
    csr_read_data.reset <= reset
    csr_read_data.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 146:27]
    csr_read_data.io_flush <= io_flush @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 147:27]
    csr_read_data.io_in <= io_csr_read_data @[src/main/scala/riscv/core/fivestage_final/ID2EX.scala 145:27]

  module ALU :
    input clock : Clock
    input reset : UInt<1>
    input io_func : UInt<5> @[src/main/scala/riscv/core/ALU.scala 13:14]
    input io_op1 : UInt<32> @[src/main/scala/riscv/core/ALU.scala 13:14]
    input io_op2 : UInt<32> @[src/main/scala/riscv/core/ALU.scala 13:14]
    output io_result : UInt<32> @[src/main/scala/riscv/core/ALU.scala 13:14]

    node _T = asUInt(UInt<1>("h1")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_1 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_2 = eq(_T, _T_1) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T = add(io_op1, io_op2) @[src/main/scala/riscv/core/ALU.scala 25:27]
    node _io_result_T_1 = tail(_io_result_T, 1) @[src/main/scala/riscv/core/ALU.scala 25:27]
    node _T_3 = asUInt(UInt<2>("h2")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_4 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_5 = eq(_T_3, _T_4) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_2 = sub(io_op1, io_op2) @[src/main/scala/riscv/core/ALU.scala 28:27]
    node _io_result_T_3 = tail(_io_result_T_2, 1) @[src/main/scala/riscv/core/ALU.scala 28:27]
    node _T_6 = asUInt(UInt<2>("h3")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_7 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_8 = eq(_T_6, _T_7) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_4 = bits(io_op2, 4, 0) @[src/main/scala/riscv/core/ALU.scala 31:36]
    node _io_result_T_5 = dshl(io_op1, _io_result_T_4) @[src/main/scala/riscv/core/ALU.scala 31:27]
    node _T_9 = asUInt(UInt<3>("h4")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_10 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_11 = eq(_T_9, _T_10) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_6 = asSInt(io_op1) @[src/main/scala/riscv/core/ALU.scala 34:27]
    node _io_result_T_7 = asSInt(io_op2) @[src/main/scala/riscv/core/ALU.scala 34:43]
    node _io_result_T_8 = lt(_io_result_T_6, _io_result_T_7) @[src/main/scala/riscv/core/ALU.scala 34:34]
    node _T_12 = asUInt(UInt<3>("h5")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_13 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_14 = eq(_T_12, _T_13) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_9 = xor(io_op1, io_op2) @[src/main/scala/riscv/core/ALU.scala 37:27]
    node _T_15 = asUInt(UInt<3>("h6")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_16 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_17 = eq(_T_15, _T_16) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_10 = or(io_op1, io_op2) @[src/main/scala/riscv/core/ALU.scala 40:27]
    node _T_18 = asUInt(UInt<3>("h7")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_19 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_20 = eq(_T_18, _T_19) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_11 = and(io_op1, io_op2) @[src/main/scala/riscv/core/ALU.scala 43:27]
    node _T_21 = asUInt(UInt<4>("h8")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_22 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_23 = eq(_T_21, _T_22) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_12 = bits(io_op2, 4, 0) @[src/main/scala/riscv/core/ALU.scala 46:36]
    node _io_result_T_13 = dshr(io_op1, _io_result_T_12) @[src/main/scala/riscv/core/ALU.scala 46:27]
    node _T_24 = asUInt(UInt<4>("h9")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_25 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_26 = eq(_T_24, _T_25) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_14 = asSInt(io_op1) @[src/main/scala/riscv/core/ALU.scala 49:28]
    node _io_result_T_15 = bits(io_op2, 4, 0) @[src/main/scala/riscv/core/ALU.scala 49:44]
    node _io_result_T_16 = dshr(_io_result_T_14, _io_result_T_15) @[src/main/scala/riscv/core/ALU.scala 49:35]
    node _io_result_T_17 = asUInt(_io_result_T_16) @[src/main/scala/riscv/core/ALU.scala 49:52]
    node _T_27 = asUInt(UInt<4>("ha")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_28 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_29 = eq(_T_27, _T_28) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_18 = lt(io_op1, io_op2) @[src/main/scala/riscv/core/ALU.scala 52:27]
    node _T_30 = asUInt(UInt<4>("hb")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_31 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_32 = eq(_T_30, _T_31) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_19 = mul(io_op1, io_op2) @[src/main/scala/riscv/core/ALU.scala 55:28]
    node _io_result_T_20 = bits(_io_result_T_19, 31, 0) @[src/main/scala/riscv/core/ALU.scala 55:37]
    node _T_33 = asUInt(UInt<4>("hc")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_34 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_35 = eq(_T_33, _T_34) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_21 = asSInt(io_op1) @[src/main/scala/riscv/core/ALU.scala 58:28]
    node _io_result_T_22 = asSInt(io_op2) @[src/main/scala/riscv/core/ALU.scala 58:44]
    node _io_result_T_23 = mul(_io_result_T_21, _io_result_T_22) @[src/main/scala/riscv/core/ALU.scala 58:35]
    node _io_result_T_24 = shr(_io_result_T_23, 32) @[src/main/scala/riscv/core/ALU.scala 58:51]
    node _io_result_T_25 = asUInt(_io_result_T_24) @[src/main/scala/riscv/core/ALU.scala 58:58]
    node _T_36 = asUInt(UInt<4>("hd")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_37 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_38 = eq(_T_36, _T_37) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_26 = asSInt(io_op1) @[src/main/scala/riscv/core/ALU.scala 61:29]
    node _io_result_T_27 = cvt(io_op2) @[src/main/scala/riscv/core/ALU.scala 61:36]
    node _io_result_T_28 = mul(_io_result_T_26, _io_result_T_27) @[src/main/scala/riscv/core/ALU.scala 61:36]
    node _io_result_T_29 = tail(_io_result_T_28, 1) @[src/main/scala/riscv/core/ALU.scala 61:36]
    node _io_result_T_30 = asSInt(_io_result_T_29) @[src/main/scala/riscv/core/ALU.scala 61:36]
    node _io_result_T_31 = shr(_io_result_T_30, 32) @[src/main/scala/riscv/core/ALU.scala 61:45]
    node _io_result_T_32 = asUInt(_io_result_T_31) @[src/main/scala/riscv/core/ALU.scala 61:52]
    node _T_39 = asUInt(UInt<4>("he")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_40 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_41 = eq(_T_39, _T_40) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_33 = mul(io_op1, io_op2) @[src/main/scala/riscv/core/ALU.scala 64:31]
    node _io_result_T_34 = shr(_io_result_T_33, 32) @[src/main/scala/riscv/core/ALU.scala 64:42]
    node _T_42 = asUInt(UInt<4>("hf")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_43 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_44 = eq(_T_42, _T_43) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_35 = eq(io_op2, UInt<1>("h0")) @[src/main/scala/riscv/core/ALU.scala 67:27]
    node _io_result_T_36 = asSInt(io_op1) @[src/main/scala/riscv/core/ALU.scala 67:59]
    node _io_result_T_37 = asSInt(io_op2) @[src/main/scala/riscv/core/ALU.scala 67:75]
    node _io_result_T_38 = div(_io_result_T_36, _io_result_T_37) @[src/main/scala/riscv/core/ALU.scala 67:66]
    node _io_result_T_39 = asUInt(_io_result_T_38) @[src/main/scala/riscv/core/ALU.scala 67:83]
    node _io_result_T_40 = mux(_io_result_T_35, UInt<32>("hffffffff"), _io_result_T_39) @[src/main/scala/riscv/core/ALU.scala 67:19]
    node _T_45 = asUInt(UInt<5>("h10")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_46 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_47 = eq(_T_45, _T_46) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_41 = eq(io_op2, UInt<1>("h0")) @[src/main/scala/riscv/core/ALU.scala 70:27]
    node _io_result_T_42 = div(io_op1, io_op2) @[src/main/scala/riscv/core/ALU.scala 70:58]
    node _io_result_T_43 = mux(_io_result_T_41, UInt<32>("hffffffff"), _io_result_T_42) @[src/main/scala/riscv/core/ALU.scala 70:19]
    node _T_48 = asUInt(UInt<5>("h11")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_49 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_50 = eq(_T_48, _T_49) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_44 = eq(io_op2, UInt<1>("h0")) @[src/main/scala/riscv/core/ALU.scala 73:27]
    node _io_result_T_45 = asSInt(io_op1) @[src/main/scala/riscv/core/ALU.scala 73:52]
    node _io_result_T_46 = asSInt(io_op2) @[src/main/scala/riscv/core/ALU.scala 73:68]
    node _io_result_T_47 = rem(_io_result_T_45, _io_result_T_46) @[src/main/scala/riscv/core/ALU.scala 73:59]
    node _io_result_T_48 = asUInt(_io_result_T_47) @[src/main/scala/riscv/core/ALU.scala 73:76]
    node _io_result_T_49 = mux(_io_result_T_44, io_op1, _io_result_T_48) @[src/main/scala/riscv/core/ALU.scala 73:19]
    node _T_51 = asUInt(UInt<5>("h12")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_52 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_53 = eq(_T_51, _T_52) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_50 = eq(io_op2, UInt<1>("h0")) @[src/main/scala/riscv/core/ALU.scala 76:27]
    node _io_result_T_51 = rem(io_op1, io_op2) @[src/main/scala/riscv/core/ALU.scala 76:51]
    node _io_result_T_52 = mux(_io_result_T_50, io_op1, _io_result_T_51) @[src/main/scala/riscv/core/ALU.scala 76:19]
    node _T_54 = asUInt(UInt<5>("h13")) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_55 = asUInt(io_func) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _T_56 = eq(_T_54, _T_55) @[src/main/scala/riscv/core/ALU.scala 23:19]
    node _io_result_T_53 = add(io_op1, io_op2) @[src/main/scala/riscv/core/ALU.scala 79:28]
    node _io_result_T_54 = tail(_io_result_T_53, 1) @[src/main/scala/riscv/core/ALU.scala 79:28]
    node _GEN_0 = mux(_T_56, _io_result_T_54, UInt<1>("h0")) @[src/main/scala/riscv/core/ALU.scala 22:13 23:19 79:17]
    node _GEN_1 = mux(_T_53, _io_result_T_52, _GEN_0) @[src/main/scala/riscv/core/ALU.scala 23:19 76:13]
    node _GEN_2 = mux(_T_50, _io_result_T_49, _GEN_1) @[src/main/scala/riscv/core/ALU.scala 23:19 73:13]
    node _GEN_3 = mux(_T_47, _io_result_T_43, _GEN_2) @[src/main/scala/riscv/core/ALU.scala 23:19 70:13]
    node _GEN_4 = mux(_T_44, _io_result_T_40, _GEN_3) @[src/main/scala/riscv/core/ALU.scala 23:19 67:13]
    node _GEN_5 = mux(_T_41, _io_result_T_34, _GEN_4) @[src/main/scala/riscv/core/ALU.scala 23:19 64:19]
    node _GEN_6 = mux(_T_38, _io_result_T_32, _GEN_5) @[src/main/scala/riscv/core/ALU.scala 23:19 61:17]
    node _GEN_7 = mux(_T_35, _io_result_T_25, _GEN_6) @[src/main/scala/riscv/core/ALU.scala 23:19 58:17]
    node _GEN_8 = mux(_T_32, _io_result_T_20, _GEN_7) @[src/main/scala/riscv/core/ALU.scala 23:19 55:17]
    node _GEN_9 = mux(_T_29, _io_result_T_18, _GEN_8) @[src/main/scala/riscv/core/ALU.scala 23:19 52:17]
    node _GEN_10 = mux(_T_26, _io_result_T_17, _GEN_9) @[src/main/scala/riscv/core/ALU.scala 23:19 49:17]
    node _GEN_11 = mux(_T_23, _io_result_T_13, _GEN_10) @[src/main/scala/riscv/core/ALU.scala 23:19 46:17]
    node _GEN_12 = mux(_T_20, _io_result_T_11, _GEN_11) @[src/main/scala/riscv/core/ALU.scala 23:19 43:17]
    node _GEN_13 = mux(_T_17, _io_result_T_10, _GEN_12) @[src/main/scala/riscv/core/ALU.scala 23:19 40:17]
    node _GEN_14 = mux(_T_14, _io_result_T_9, _GEN_13) @[src/main/scala/riscv/core/ALU.scala 23:19 37:17]
    node _GEN_15 = mux(_T_11, _io_result_T_8, _GEN_14) @[src/main/scala/riscv/core/ALU.scala 23:19 34:17]
    node _GEN_16 = mux(_T_8, _io_result_T_5, _GEN_15) @[src/main/scala/riscv/core/ALU.scala 23:19 31:17]
    node _GEN_17 = mux(_T_5, _io_result_T_3, _GEN_16) @[src/main/scala/riscv/core/ALU.scala 23:19 28:17]
    node _GEN_18 = mux(_T_2, _io_result_T_1, _GEN_17) @[src/main/scala/riscv/core/ALU.scala 23:19 25:17]
    io_result <= bits(_GEN_18, 31, 0)

  module ALUControl :
    input clock : Clock
    input reset : UInt<1>
    input io_opcode : UInt<7> @[src/main/scala/riscv/core/ALUControl.scala 11:14]
    input io_funct3 : UInt<3> @[src/main/scala/riscv/core/ALUControl.scala 11:14]
    input io_funct7 : UInt<7> @[src/main/scala/riscv/core/ALUControl.scala 11:14]
    output io_alu_funct : UInt<5> @[src/main/scala/riscv/core/ALUControl.scala 11:14]

    node _T = eq(UInt<5>("h13"), io_opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
    node _io_alu_funct_T = bits(io_funct7, 5, 5) @[src/main/scala/riscv/core/ALUControl.scala 34:51]
    node _io_alu_funct_T_1 = mux(_io_alu_funct_T, UInt<4>("h9"), UInt<4>("h8")) @[src/main/scala/riscv/core/ALUControl.scala 34:41]
    node _io_alu_funct_T_2 = eq(UInt<1>("h1"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_3 = mux(_io_alu_funct_T_2, UInt<2>("h3"), UInt<1>("h1")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_4 = eq(UInt<2>("h2"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_5 = mux(_io_alu_funct_T_4, UInt<3>("h4"), _io_alu_funct_T_3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_6 = eq(UInt<2>("h3"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_7 = mux(_io_alu_funct_T_6, UInt<4>("ha"), _io_alu_funct_T_5) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_8 = eq(UInt<3>("h4"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_9 = mux(_io_alu_funct_T_8, UInt<3>("h5"), _io_alu_funct_T_7) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_10 = eq(UInt<3>("h6"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_11 = mux(_io_alu_funct_T_10, UInt<3>("h6"), _io_alu_funct_T_9) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_12 = eq(UInt<3>("h7"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_13 = mux(_io_alu_funct_T_12, UInt<3>("h7"), _io_alu_funct_T_11) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_14 = eq(UInt<3>("h5"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_15 = mux(_io_alu_funct_T_14, _io_alu_funct_T_1, _io_alu_funct_T_13) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _T_1 = eq(UInt<6>("h33"), io_opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
    node _T_2 = eq(io_funct7, UInt<1>("h1")) @[src/main/scala/riscv/core/ALUControl.scala 40:24]
    node _io_alu_funct_T_16 = eq(UInt<1>("h1"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_17 = mux(_io_alu_funct_T_16, UInt<4>("hc"), UInt<4>("hb")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_18 = eq(UInt<2>("h2"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_19 = mux(_io_alu_funct_T_18, UInt<4>("hd"), _io_alu_funct_T_17) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_20 = eq(UInt<2>("h3"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_21 = mux(_io_alu_funct_T_20, UInt<4>("he"), _io_alu_funct_T_19) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_22 = eq(UInt<3>("h4"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_23 = mux(_io_alu_funct_T_22, UInt<4>("hf"), _io_alu_funct_T_21) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_24 = eq(UInt<3>("h5"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_25 = mux(_io_alu_funct_T_24, UInt<5>("h10"), _io_alu_funct_T_23) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_26 = eq(UInt<3>("h6"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_27 = mux(_io_alu_funct_T_26, UInt<5>("h11"), _io_alu_funct_T_25) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_28 = eq(UInt<3>("h7"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_29 = mux(_io_alu_funct_T_28, UInt<5>("h12"), _io_alu_funct_T_27) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_30 = bits(io_funct7, 5, 5) @[src/main/scala/riscv/core/ALUControl.scala 62:57]
    node _io_alu_funct_T_31 = mux(_io_alu_funct_T_30, UInt<2>("h2"), UInt<1>("h1")) @[src/main/scala/riscv/core/ALUControl.scala 62:47]
    node _io_alu_funct_T_32 = bits(io_funct7, 5, 5) @[src/main/scala/riscv/core/ALUControl.scala 69:57]
    node _io_alu_funct_T_33 = mux(_io_alu_funct_T_32, UInt<4>("h9"), UInt<4>("h8")) @[src/main/scala/riscv/core/ALUControl.scala 69:47]
    node _io_alu_funct_T_34 = eq(UInt<1>("h1"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_35 = mux(_io_alu_funct_T_34, UInt<2>("h3"), _io_alu_funct_T_31) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_36 = eq(UInt<2>("h2"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_37 = mux(_io_alu_funct_T_36, UInt<3>("h4"), _io_alu_funct_T_35) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_38 = eq(UInt<2>("h3"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_39 = mux(_io_alu_funct_T_38, UInt<4>("ha"), _io_alu_funct_T_37) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_40 = eq(UInt<3>("h4"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_41 = mux(_io_alu_funct_T_40, UInt<3>("h5"), _io_alu_funct_T_39) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_42 = eq(UInt<3>("h6"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_43 = mux(_io_alu_funct_T_42, UInt<3>("h6"), _io_alu_funct_T_41) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_44 = eq(UInt<3>("h7"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_45 = mux(_io_alu_funct_T_44, UInt<3>("h7"), _io_alu_funct_T_43) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_46 = eq(UInt<3>("h5"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_alu_funct_T_47 = mux(_io_alu_funct_T_46, _io_alu_funct_T_33, _io_alu_funct_T_45) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _GEN_0 = mux(_T_2, _io_alu_funct_T_29, _io_alu_funct_T_47) @[src/main/scala/riscv/core/ALUControl.scala 40:42 42:24 58:24]
    node _T_3 = eq(UInt<7>("h63"), io_opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
    node _T_4 = eq(UInt<2>("h3"), io_opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
    node _T_5 = eq(UInt<6>("h23"), io_opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
    node _T_6 = eq(UInt<7>("h6f"), io_opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
    node _T_7 = eq(UInt<7>("h67"), io_opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
    node _T_8 = eq(UInt<6>("h37"), io_opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
    node _T_9 = eq(UInt<5>("h17"), io_opcode) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
    node _GEN_1 = mux(_T_9, UInt<1>("h1"), UInt<1>("h0")) @[src/main/scala/riscv/core/ALUControl.scala 19:16 21:21 94:20]
    node _GEN_2 = mux(_T_8, UInt<1>("h1"), _GEN_1) @[src/main/scala/riscv/core/ALUControl.scala 21:21 91:20]
    node _GEN_3 = mux(_T_7, UInt<1>("h1"), _GEN_2) @[src/main/scala/riscv/core/ALUControl.scala 21:21 88:20]
    node _GEN_4 = mux(_T_6, UInt<5>("h13"), _GEN_3) @[src/main/scala/riscv/core/ALUControl.scala 21:21 85:20]
    node _GEN_5 = mux(_T_5, UInt<1>("h1"), _GEN_4) @[src/main/scala/riscv/core/ALUControl.scala 21:21 82:20]
    node _GEN_6 = mux(_T_4, UInt<1>("h1"), _GEN_5) @[src/main/scala/riscv/core/ALUControl.scala 21:21 79:20]
    node _GEN_7 = mux(_T_3, UInt<5>("h13"), _GEN_6) @[src/main/scala/riscv/core/ALUControl.scala 21:21 76:20]
    node _GEN_8 = mux(_T_1, _GEN_0, _GEN_7) @[src/main/scala/riscv/core/ALUControl.scala 21:21]
    node _GEN_9 = mux(_T, _io_alu_funct_T_15, _GEN_8) @[src/main/scala/riscv/core/ALUControl.scala 21:21 23:20]
    io_alu_funct <= _GEN_9

  module Execute :
    input clock : Clock
    input reset : UInt<1>
    input io_instruction : UInt<32> @[src/main/scala/riscv/core/fivestage_final/Execute.scala 10:14]
    input io_instruction_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/Execute.scala 10:14]
    input io_reg1_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/Execute.scala 10:14]
    input io_reg2_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/Execute.scala 10:14]
    input io_immediate : UInt<32> @[src/main/scala/riscv/core/fivestage_final/Execute.scala 10:14]
    input io_aluop1_source : UInt<1> @[src/main/scala/riscv/core/fivestage_final/Execute.scala 10:14]
    input io_aluop2_source : UInt<1> @[src/main/scala/riscv/core/fivestage_final/Execute.scala 10:14]
    input io_csr_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/Execute.scala 10:14]
    input io_forward_from_mem : UInt<32> @[src/main/scala/riscv/core/fivestage_final/Execute.scala 10:14]
    input io_forward_from_wb : UInt<32> @[src/main/scala/riscv/core/fivestage_final/Execute.scala 10:14]
    input io_reg1_forward : UInt<2> @[src/main/scala/riscv/core/fivestage_final/Execute.scala 10:14]
    input io_reg2_forward : UInt<2> @[src/main/scala/riscv/core/fivestage_final/Execute.scala 10:14]
    output io_mem_alu_result : UInt<32> @[src/main/scala/riscv/core/fivestage_final/Execute.scala 10:14]
    output io_mem_reg2_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/Execute.scala 10:14]
    output io_csr_write_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/Execute.scala 10:14]

    inst alu of ALU @[src/main/scala/riscv/core/fivestage_final/Execute.scala 34:24]
    inst alu_ctrl of ALUControl @[src/main/scala/riscv/core/fivestage_final/Execute.scala 35:24]
    node opcode = bits(io_instruction, 6, 0) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 29:30]
    node funct3 = bits(io_instruction, 14, 12) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 30:30]
    node funct7 = bits(io_instruction, 31, 25) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 31:30]
    node uimm = bits(io_instruction, 19, 15) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 32:30]
    node _reg1_data_T = eq(UInt<2>("h1"), io_reg1_forward) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _reg1_data_T_1 = mux(_reg1_data_T, io_forward_from_mem, io_reg1_data) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _reg1_data_T_2 = eq(UInt<2>("h2"), io_reg1_forward) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node reg1_data = mux(_reg1_data_T_2, io_forward_from_wb, _reg1_data_T_1) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _alu_io_op1_T = eq(io_aluop1_source, UInt<1>("h1")) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 51:22]
    node _alu_io_op1_T_1 = mux(_alu_io_op1_T, io_instruction_address, reg1_data) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 50:20]
    node _reg2_data_T = eq(UInt<2>("h1"), io_reg2_forward) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _reg2_data_T_1 = mux(_reg2_data_T, io_forward_from_mem, io_reg2_data) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _reg2_data_T_2 = eq(UInt<2>("h2"), io_reg2_forward) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node reg2_data = mux(_reg2_data_T_2, io_forward_from_wb, _reg2_data_T_1) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _alu_io_op2_T = eq(io_aluop2_source, UInt<1>("h1")) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 65:22]
    node _alu_io_op2_T_1 = mux(_alu_io_op2_T, io_immediate, reg2_data) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 64:20]
    node _io_csr_write_data_T = not(reg1_data) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 76:57]
    node _io_csr_write_data_T_1 = and(io_csr_read_data, _io_csr_write_data_T) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 76:55]
    node _io_csr_write_data_T_2 = or(io_csr_read_data, reg1_data) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 77:55]
    node _io_csr_write_data_T_3 = cat(UInt<27>("h0"), uimm) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 78:40]
    node _io_csr_write_data_T_4 = cat(UInt<27>("h0"), uimm) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 79:61]
    node _io_csr_write_data_T_5 = not(_io_csr_write_data_T_4) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 79:57]
    node _io_csr_write_data_T_6 = and(io_csr_read_data, _io_csr_write_data_T_5) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 79:55]
    node _io_csr_write_data_T_7 = cat(UInt<27>("h0"), uimm) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 80:59]
    node _io_csr_write_data_T_8 = or(io_csr_read_data, _io_csr_write_data_T_7) @[src/main/scala/riscv/core/fivestage_final/Execute.scala 80:55]
    node _io_csr_write_data_T_9 = eq(UInt<1>("h1"), funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_write_data_T_10 = mux(_io_csr_write_data_T_9, reg1_data, UInt<1>("h0")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
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
    io_mem_alu_result <= alu.io_result @[src/main/scala/riscv/core/fivestage_final/Execute.scala 69:21]
    io_mem_reg2_data <= reg2_data @[src/main/scala/riscv/core/fivestage_final/Execute.scala 70:21]
    io_csr_write_data <= _io_csr_write_data_T_20 @[src/main/scala/riscv/core/fivestage_final/Execute.scala 71:21]
    alu.clock <= clock
    alu.reset <= reset
    alu.io_func <= alu_ctrl.io_alu_funct @[src/main/scala/riscv/core/fivestage_final/Execute.scala 40:22]
    alu.io_op1 <= _alu_io_op1_T_1 @[src/main/scala/riscv/core/fivestage_final/Execute.scala 50:14]
    alu.io_op2 <= _alu_io_op2_T_1 @[src/main/scala/riscv/core/fivestage_final/Execute.scala 64:14]
    alu_ctrl.clock <= clock
    alu_ctrl.reset <= reset
    alu_ctrl.io_opcode <= opcode @[src/main/scala/riscv/core/fivestage_final/Execute.scala 37:22]
    alu_ctrl.io_funct3 <= funct3 @[src/main/scala/riscv/core/fivestage_final/Execute.scala 38:22]
    alu_ctrl.io_funct7 <= funct7 @[src/main/scala/riscv/core/fivestage_final/Execute.scala 39:22]

  module PipelineRegister_24 :
    input clock : Clock
    input reset : UInt<1>
    input io_stall : UInt<1> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    input io_flush : UInt<1> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    input io_in : UInt<3> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
    output io_out : UInt<3> @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]

    reg myreg : UInt<3>, clock with :
      reset => (UInt<1>("h0"), myreg) @[src/main/scala/riscv/core/PipelineRegister.scala 13:22]
    reg out : UInt<3>, clock with :
      reset => (UInt<1>("h0"), out) @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    node _GEN_0 = mux(io_stall, myreg, io_in) @[src/main/scala/riscv/core/PipelineRegister.scala 19:25 20:11 24:13]
    node _GEN_1 = mux(io_flush, UInt<1>("h0"), _GEN_0) @[src/main/scala/riscv/core/PipelineRegister.scala 15:18 16:11]
    io_out <= out @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
    myreg <= mux(reset, UInt<1>("h0"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 13:{22,22}]
    out <= mux(reset, UInt<1>("h0"), _GEN_1) @[src/main/scala/riscv/core/PipelineRegister.scala 14:{22,22}]

  module EX2MEM :
    input clock : Clock
    input reset : UInt<1>
    input io_regs_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    input io_regs_write_source : UInt<2> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    input io_regs_write_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    input io_instruction_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    input io_funct3 : UInt<3> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    input io_reg2_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    input io_memory_read_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    input io_memory_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    input io_alu_result : UInt<32> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    input io_csr_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    output io_output_regs_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    output io_output_regs_write_source : UInt<2> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    output io_output_regs_write_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    output io_output_instruction_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    output io_output_funct3 : UInt<32> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    output io_output_reg2_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    output io_output_memory_read_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    output io_output_memory_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    output io_output_alu_result : UInt<32> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]
    output io_output_csr_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 8:14]

    inst regs_write_enable of PipelineRegister_7 @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 35:33]
    inst regs_write_source of PipelineRegister_9 @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 41:33]
    inst regs_write_address of PipelineRegister_5 @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 47:34]
    inst instruction_address of PipelineRegister_2 @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 53:35]
    inst funct3 of PipelineRegister_24 @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 59:22]
    inst reg2_data of PipelineRegister_2 @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 65:25]
    inst alu_result of PipelineRegister_2 @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 71:26]
    inst memory_read_enable of PipelineRegister_7 @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 77:34]
    inst memory_write_enable of PipelineRegister_7 @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 83:35]
    inst csr_read_data of PipelineRegister_2 @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 89:29]
    io_output_regs_write_enable <= regs_write_enable.io_out @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 39:31]
    io_output_regs_write_source <= regs_write_source.io_out @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 45:31]
    io_output_regs_write_address <= pad(regs_write_address.io_out, 32) @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 51:32]
    io_output_instruction_address <= instruction_address.io_out @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 57:33]
    io_output_funct3 <= pad(funct3.io_out, 32) @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 63:20]
    io_output_reg2_data <= reg2_data.io_out @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 69:23]
    io_output_memory_read_enable <= memory_read_enable.io_out @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 81:32]
    io_output_memory_write_enable <= memory_write_enable.io_out @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 87:33]
    io_output_alu_result <= alu_result.io_out @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 75:24]
    io_output_csr_read_data <= csr_read_data.io_out @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 93:27]
    regs_write_enable.clock <= clock
    regs_write_enable.reset <= reset
    regs_write_enable.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 37:31]
    regs_write_enable.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 38:31]
    regs_write_enable.io_in <= io_regs_write_enable @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 36:31]
    regs_write_source.clock <= clock
    regs_write_source.reset <= reset
    regs_write_source.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 43:31]
    regs_write_source.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 44:31]
    regs_write_source.io_in <= io_regs_write_source @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 42:31]
    regs_write_address.clock <= clock
    regs_write_address.reset <= reset
    regs_write_address.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 49:32]
    regs_write_address.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 50:32]
    regs_write_address.io_in <= bits(io_regs_write_address, 4, 0) @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 48:32]
    instruction_address.clock <= clock
    instruction_address.reset <= reset
    instruction_address.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 55:33]
    instruction_address.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 56:33]
    instruction_address.io_in <= io_instruction_address @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 54:33]
    funct3.clock <= clock
    funct3.reset <= reset
    funct3.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 61:20]
    funct3.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 62:20]
    funct3.io_in <= io_funct3 @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 60:20]
    reg2_data.clock <= clock
    reg2_data.reset <= reset
    reg2_data.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 67:23]
    reg2_data.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 68:23]
    reg2_data.io_in <= io_reg2_data @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 66:23]
    alu_result.clock <= clock
    alu_result.reset <= reset
    alu_result.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 73:24]
    alu_result.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 74:24]
    alu_result.io_in <= io_alu_result @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 72:24]
    memory_read_enable.clock <= clock
    memory_read_enable.reset <= reset
    memory_read_enable.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 79:32]
    memory_read_enable.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 80:32]
    memory_read_enable.io_in <= io_memory_read_enable @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 78:32]
    memory_write_enable.clock <= clock
    memory_write_enable.reset <= reset
    memory_write_enable.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 85:33]
    memory_write_enable.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 86:33]
    memory_write_enable.io_in <= io_memory_write_enable @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 84:33]
    csr_read_data.clock <= clock
    csr_read_data.reset <= reset
    csr_read_data.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 91:27]
    csr_read_data.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 92:27]
    csr_read_data.io_in <= io_csr_read_data @[src/main/scala/riscv/core/fivestage_final/EX2MEM.scala 90:27]

  module MemoryAccess :
    input clock : Clock
    input reset : UInt<1>
    input io_alu_result : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    input io_reg2_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    input io_memory_read_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    input io_memory_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    input io_funct3 : UInt<3> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    input io_regs_write_source : UInt<2> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    input io_csr_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    output io_wb_memory_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    output io_forward_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    output io_bundle_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    output io_bundle_write_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    output io_bundle_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    output io_bundle_write_strobe_0 : UInt<1> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    output io_bundle_write_strobe_1 : UInt<1> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    output io_bundle_write_strobe_2 : UInt<1> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    output io_bundle_write_strobe_3 : UInt<1> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]
    input io_bundle_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 9:14]

    node mem_address_index = bits(io_alu_result, 1, 0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 23:40]
    node _io_wb_memory_read_data_T = bits(io_bundle_read_data, 31, 31) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 39:28]
    node _io_wb_memory_read_data_T_1 = bits(_io_wb_memory_read_data_T, 0, 0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 39:19]
    node _io_wb_memory_read_data_T_2 = mux(_io_wb_memory_read_data_T_1, UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 39:19]
    node _io_wb_memory_read_data_T_3 = bits(io_bundle_read_data, 31, 24) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 39:39]
    node _io_wb_memory_read_data_T_4 = cat(_io_wb_memory_read_data_T_2, _io_wb_memory_read_data_T_3) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 39:14]
    node _io_wb_memory_read_data_T_5 = bits(io_bundle_read_data, 7, 7) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 41:37]
    node _io_wb_memory_read_data_T_6 = bits(_io_wb_memory_read_data_T_5, 0, 0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 41:28]
    node _io_wb_memory_read_data_T_7 = mux(_io_wb_memory_read_data_T_6, UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 41:28]
    node _io_wb_memory_read_data_T_8 = bits(io_bundle_read_data, 7, 0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 41:47]
    node _io_wb_memory_read_data_T_9 = cat(_io_wb_memory_read_data_T_7, _io_wb_memory_read_data_T_8) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 41:23]
    node _io_wb_memory_read_data_T_10 = bits(io_bundle_read_data, 15, 15) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 42:37]
    node _io_wb_memory_read_data_T_11 = bits(_io_wb_memory_read_data_T_10, 0, 0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 42:28]
    node _io_wb_memory_read_data_T_12 = mux(_io_wb_memory_read_data_T_11, UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 42:28]
    node _io_wb_memory_read_data_T_13 = bits(io_bundle_read_data, 15, 8) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 42:48]
    node _io_wb_memory_read_data_T_14 = cat(_io_wb_memory_read_data_T_12, _io_wb_memory_read_data_T_13) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 42:23]
    node _io_wb_memory_read_data_T_15 = bits(io_bundle_read_data, 23, 23) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 43:37]
    node _io_wb_memory_read_data_T_16 = bits(_io_wb_memory_read_data_T_15, 0, 0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 43:28]
    node _io_wb_memory_read_data_T_17 = mux(_io_wb_memory_read_data_T_16, UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 43:28]
    node _io_wb_memory_read_data_T_18 = bits(io_bundle_read_data, 23, 16) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 43:48]
    node _io_wb_memory_read_data_T_19 = cat(_io_wb_memory_read_data_T_17, _io_wb_memory_read_data_T_18) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 43:23]
    node _io_wb_memory_read_data_T_20 = eq(UInt<1>("h0"), mem_address_index) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_21 = mux(_io_wb_memory_read_data_T_20, _io_wb_memory_read_data_T_9, _io_wb_memory_read_data_T_4) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_22 = eq(UInt<1>("h1"), mem_address_index) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_23 = mux(_io_wb_memory_read_data_T_22, _io_wb_memory_read_data_T_14, _io_wb_memory_read_data_T_21) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_24 = eq(UInt<2>("h2"), mem_address_index) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_25 = mux(_io_wb_memory_read_data_T_24, _io_wb_memory_read_data_T_19, _io_wb_memory_read_data_T_23) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_26 = mux(UInt<1>("h0"), UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 48:19]
    node _io_wb_memory_read_data_T_27 = bits(io_bundle_read_data, 31, 24) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 48:34]
    node _io_wb_memory_read_data_T_28 = cat(_io_wb_memory_read_data_T_26, _io_wb_memory_read_data_T_27) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 48:14]
    node _io_wb_memory_read_data_T_29 = mux(UInt<1>("h0"), UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 50:28]
    node _io_wb_memory_read_data_T_30 = bits(io_bundle_read_data, 7, 0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 50:43]
    node _io_wb_memory_read_data_T_31 = cat(_io_wb_memory_read_data_T_29, _io_wb_memory_read_data_T_30) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 50:23]
    node _io_wb_memory_read_data_T_32 = mux(UInt<1>("h0"), UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 51:28]
    node _io_wb_memory_read_data_T_33 = bits(io_bundle_read_data, 15, 8) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 51:43]
    node _io_wb_memory_read_data_T_34 = cat(_io_wb_memory_read_data_T_32, _io_wb_memory_read_data_T_33) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 51:23]
    node _io_wb_memory_read_data_T_35 = mux(UInt<1>("h0"), UInt<24>("hffffff"), UInt<24>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 52:28]
    node _io_wb_memory_read_data_T_36 = bits(io_bundle_read_data, 23, 16) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 52:43]
    node _io_wb_memory_read_data_T_37 = cat(_io_wb_memory_read_data_T_35, _io_wb_memory_read_data_T_36) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 52:23]
    node _io_wb_memory_read_data_T_38 = eq(UInt<1>("h0"), mem_address_index) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_39 = mux(_io_wb_memory_read_data_T_38, _io_wb_memory_read_data_T_31, _io_wb_memory_read_data_T_28) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_40 = eq(UInt<1>("h1"), mem_address_index) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_41 = mux(_io_wb_memory_read_data_T_40, _io_wb_memory_read_data_T_34, _io_wb_memory_read_data_T_39) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_42 = eq(UInt<2>("h2"), mem_address_index) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_43 = mux(_io_wb_memory_read_data_T_42, _io_wb_memory_read_data_T_37, _io_wb_memory_read_data_T_41) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_44 = eq(mem_address_index, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 56:29]
    node _io_wb_memory_read_data_T_45 = bits(io_bundle_read_data, 15, 15) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 57:28]
    node _io_wb_memory_read_data_T_46 = bits(_io_wb_memory_read_data_T_45, 0, 0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 57:19]
    node _io_wb_memory_read_data_T_47 = mux(_io_wb_memory_read_data_T_46, UInt<16>("hffff"), UInt<16>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 57:19]
    node _io_wb_memory_read_data_T_48 = bits(io_bundle_read_data, 15, 0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 57:39]
    node _io_wb_memory_read_data_T_49 = cat(_io_wb_memory_read_data_T_47, _io_wb_memory_read_data_T_48) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 57:14]
    node _io_wb_memory_read_data_T_50 = bits(io_bundle_read_data, 31, 31) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 58:28]
    node _io_wb_memory_read_data_T_51 = bits(_io_wb_memory_read_data_T_50, 0, 0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 58:19]
    node _io_wb_memory_read_data_T_52 = mux(_io_wb_memory_read_data_T_51, UInt<16>("hffff"), UInt<16>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 58:19]
    node _io_wb_memory_read_data_T_53 = bits(io_bundle_read_data, 31, 16) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 58:39]
    node _io_wb_memory_read_data_T_54 = cat(_io_wb_memory_read_data_T_52, _io_wb_memory_read_data_T_53) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 58:14]
    node _io_wb_memory_read_data_T_55 = mux(_io_wb_memory_read_data_T_44, _io_wb_memory_read_data_T_49, _io_wb_memory_read_data_T_54) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 55:36]
    node _io_wb_memory_read_data_T_56 = eq(mem_address_index, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 61:29]
    node _io_wb_memory_read_data_T_57 = mux(UInt<1>("h0"), UInt<16>("hffff"), UInt<16>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 62:19]
    node _io_wb_memory_read_data_T_58 = bits(io_bundle_read_data, 15, 0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 62:34]
    node _io_wb_memory_read_data_T_59 = cat(_io_wb_memory_read_data_T_57, _io_wb_memory_read_data_T_58) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 62:14]
    node _io_wb_memory_read_data_T_60 = mux(UInt<1>("h0"), UInt<16>("hffff"), UInt<16>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 63:19]
    node _io_wb_memory_read_data_T_61 = bits(io_bundle_read_data, 31, 16) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 63:34]
    node _io_wb_memory_read_data_T_62 = cat(_io_wb_memory_read_data_T_60, _io_wb_memory_read_data_T_61) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 63:14]
    node _io_wb_memory_read_data_T_63 = mux(_io_wb_memory_read_data_T_56, _io_wb_memory_read_data_T_59, _io_wb_memory_read_data_T_62) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 60:37]
    node _io_wb_memory_read_data_T_64 = eq(UInt<1>("h0"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_65 = mux(_io_wb_memory_read_data_T_64, _io_wb_memory_read_data_T_25, UInt<1>("h0")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_66 = eq(UInt<3>("h4"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_67 = mux(_io_wb_memory_read_data_T_66, _io_wb_memory_read_data_T_43, _io_wb_memory_read_data_T_65) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_68 = eq(UInt<1>("h1"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_69 = mux(_io_wb_memory_read_data_T_68, _io_wb_memory_read_data_T_55, _io_wb_memory_read_data_T_67) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_70 = eq(UInt<3>("h5"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_71 = mux(_io_wb_memory_read_data_T_70, _io_wb_memory_read_data_T_63, _io_wb_memory_read_data_T_69) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_72 = eq(UInt<2>("h2"), io_funct3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_wb_memory_read_data_T_73 = mux(_io_wb_memory_read_data_T_72, io_bundle_read_data, _io_wb_memory_read_data_T_71) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _T = eq(io_funct3, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 71:20]
    node _io_bundle_write_strobe_mem_address_index = UInt<1>("h1") @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 72:{49,49}]
    node _WIRE_1_0 = UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:{38,38}]
    node _GEN_0 = mux(eq(UInt<1>("h0"), mem_address_index), _io_bundle_write_strobe_mem_address_index, _WIRE_1_0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:28 72:{49,49}]
    node _WIRE_1_1 = UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:{38,38}]
    node _GEN_1 = mux(eq(UInt<1>("h1"), mem_address_index), _io_bundle_write_strobe_mem_address_index, _WIRE_1_1) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:28 72:{49,49}]
    node _WIRE_1_2 = UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:{38,38}]
    node _GEN_2 = mux(eq(UInt<2>("h2"), mem_address_index), _io_bundle_write_strobe_mem_address_index, _WIRE_1_2) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:28 72:{49,49}]
    node _WIRE_1_3 = UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:{38,38}]
    node _GEN_3 = mux(eq(UInt<2>("h3"), mem_address_index), _io_bundle_write_strobe_mem_address_index, _WIRE_1_3) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:28 72:{49,49}]
    node _io_bundle_write_data_T = bits(io_reg2_data, 8, 0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 73:43]
    node _io_bundle_write_data_T_1 = dshl(mem_address_index, UInt<2>("h3")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 73:90]
    node _io_bundle_write_data_T_2 = dshl(_io_bundle_write_data_T, _io_bundle_write_data_T_1) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 73:68]
    node _T_1 = eq(io_funct3, UInt<1>("h1")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 76:26]
    node _T_2 = eq(mem_address_index, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 77:30]
    node _io_bundle_write_data_T_3 = bits(io_reg2_data, 16, 0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 81:45]
    node _io_bundle_write_data_T_4 = bits(io_reg2_data, 16, 0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 86:45]
    node _io_bundle_write_data_T_5 = shl(_io_bundle_write_data_T_4, 16) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 89:11]
    node _GEN_4 = mux(_T_2, UInt<1>("h1"), _WIRE_1_0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:28 77:39 79:37]
    node _GEN_5 = mux(_T_2, UInt<1>("h1"), _WIRE_1_1) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:28 77:39 79:37]
    node _GEN_6 = mux(_T_2, _io_bundle_write_data_T_3, _io_bundle_write_data_T_5) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 77:39 81:30 86:30]
    node _GEN_7 = mux(_T_2, _WIRE_1_2, UInt<1>("h1")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:28 77:39 84:37]
    node _GEN_8 = mux(_T_2, _WIRE_1_3, UInt<1>("h1")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:28 77:39 84:37]
    node _T_3 = eq(io_funct3, UInt<2>("h2")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 91:26]
    node _GEN_9 = mux(_T_3, UInt<1>("h1"), _WIRE_1_0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:28 91:52 93:35]
    node _GEN_10 = mux(_T_3, UInt<1>("h1"), _WIRE_1_1) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:28 91:52 93:35]
    node _GEN_11 = mux(_T_3, UInt<1>("h1"), _WIRE_1_2) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:28 91:52 93:35]
    node _GEN_12 = mux(_T_3, UInt<1>("h1"), _WIRE_1_3) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 70:28 91:52 93:35]
    node _GEN_13 = mux(_T_1, _GEN_4, _GEN_9) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 76:52]
    node _GEN_14 = mux(_T_1, _GEN_5, _GEN_10) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 76:52]
    node _GEN_15 = mux(_T_1, _GEN_6, io_reg2_data) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 69:28 76:52]
    node _GEN_16 = mux(_T_1, _GEN_7, _GEN_11) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 76:52]
    node _GEN_17 = mux(_T_1, _GEN_8, _GEN_12) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 76:52]
    node _GEN_18 = mux(_T, _GEN_0, _GEN_13) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 71:46]
    node _GEN_19 = mux(_T, _GEN_1, _GEN_14) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 71:46]
    node _GEN_20 = mux(_T, _GEN_2, _GEN_16) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 71:46]
    node _GEN_21 = mux(_T, _GEN_3, _GEN_17) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 71:46]
    node _GEN_22 = mux(_T, _io_bundle_write_data_T_2, _GEN_15) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 71:46 73:28]
    node _GEN_23 = mux(io_memory_write_enable, _GEN_22, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 26:26 68:38]
    node _WIRE__0 = UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 28:{36,36}]
    node _GEN_24 = mux(io_memory_write_enable, _GEN_18, _WIRE__0) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 28:26 68:38]
    node _WIRE__1 = UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 28:{36,36}]
    node _GEN_25 = mux(io_memory_write_enable, _GEN_19, _WIRE__1) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 28:26 68:38]
    node _WIRE__2 = UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 28:{36,36}]
    node _GEN_26 = mux(io_memory_write_enable, _GEN_20, _WIRE__2) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 28:26 68:38]
    node _WIRE__3 = UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 28:{36,36}]
    node _GEN_27 = mux(io_memory_write_enable, _GEN_21, _WIRE__3) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 28:26 68:38]
    node _GEN_28 = mux(io_memory_read_enable, _io_wb_memory_read_data_T_73, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 29:26 31:31 33:28]
    node _GEN_29 = mux(io_memory_read_enable, UInt<1>("h0"), _GEN_23) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 26:26 31:31]
    node _GEN_30 = mux(io_memory_read_enable, _WIRE__0, _GEN_24) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 28:26 31:31]
    node _GEN_31 = mux(io_memory_read_enable, _WIRE__1, _GEN_25) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 28:26 31:31]
    node _GEN_32 = mux(io_memory_read_enable, _WIRE__2, _GEN_26) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 28:26 31:31]
    node _GEN_33 = mux(io_memory_read_enable, _WIRE__3, _GEN_27) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 28:26 31:31]
    node _io_forward_data_T = eq(io_regs_write_source, UInt<2>("h2")) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 98:47]
    node _io_forward_data_T_1 = mux(_io_forward_data_T, io_csr_read_data, io_alu_result) @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 98:25]
    io_wb_memory_read_data <= _GEN_28
    io_forward_data <= _io_forward_data_T_1 @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 98:19]
    io_bundle_address <= io_alu_result @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 27:26]
    io_bundle_write_data <= bits(_GEN_29, 31, 0)
    io_bundle_write_enable <= io_memory_write_enable @[src/main/scala/riscv/core/fivestage_final/MemoryAccess.scala 25:26]
    io_bundle_write_strobe_0 <= _GEN_30
    io_bundle_write_strobe_1 <= _GEN_31
    io_bundle_write_strobe_2 <= _GEN_32
    io_bundle_write_strobe_3 <= _GEN_33

  module MEM2WB :
    input clock : Clock
    input reset : UInt<1>
    input io_instruction_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 8:14]
    input io_alu_result : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 8:14]
    input io_regs_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 8:14]
    input io_regs_write_source : UInt<2> @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 8:14]
    input io_regs_write_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 8:14]
    input io_memory_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 8:14]
    input io_csr_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 8:14]
    output io_output_instruction_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 8:14]
    output io_output_alu_result : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 8:14]
    output io_output_regs_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 8:14]
    output io_output_regs_write_source : UInt<2> @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 8:14]
    output io_output_regs_write_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 8:14]
    output io_output_memory_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 8:14]
    output io_output_csr_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 8:14]

    inst alu_result of PipelineRegister_2 @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 28:26]
    inst memory_read_data of PipelineRegister_2 @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 34:32]
    inst regs_write_enable of PipelineRegister_7 @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 40:33]
    inst regs_write_source of PipelineRegister_9 @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 46:33]
    inst regs_write_address of PipelineRegister_5 @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 52:34]
    inst instruction_address of PipelineRegister_2 @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 58:35]
    inst csr_read_data of PipelineRegister_2 @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 64:29]
    io_output_instruction_address <= instruction_address.io_out @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 62:33]
    io_output_alu_result <= alu_result.io_out @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 32:24]
    io_output_regs_write_enable <= regs_write_enable.io_out @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 44:31]
    io_output_regs_write_source <= regs_write_source.io_out @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 50:31]
    io_output_regs_write_address <= pad(regs_write_address.io_out, 32) @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 56:32]
    io_output_memory_read_data <= memory_read_data.io_out @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 38:30]
    io_output_csr_read_data <= csr_read_data.io_out @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 68:27]
    alu_result.clock <= clock
    alu_result.reset <= reset
    alu_result.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 30:24]
    alu_result.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 31:24]
    alu_result.io_in <= io_alu_result @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 29:24]
    memory_read_data.clock <= clock
    memory_read_data.reset <= reset
    memory_read_data.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 36:30]
    memory_read_data.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 37:30]
    memory_read_data.io_in <= io_memory_read_data @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 35:30]
    regs_write_enable.clock <= clock
    regs_write_enable.reset <= reset
    regs_write_enable.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 42:31]
    regs_write_enable.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 43:31]
    regs_write_enable.io_in <= io_regs_write_enable @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 41:31]
    regs_write_source.clock <= clock
    regs_write_source.reset <= reset
    regs_write_source.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 48:31]
    regs_write_source.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 49:31]
    regs_write_source.io_in <= io_regs_write_source @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 47:31]
    regs_write_address.clock <= clock
    regs_write_address.reset <= reset
    regs_write_address.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 54:32]
    regs_write_address.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 55:32]
    regs_write_address.io_in <= bits(io_regs_write_address, 4, 0) @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 53:32]
    instruction_address.clock <= clock
    instruction_address.reset <= reset
    instruction_address.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 60:33]
    instruction_address.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 61:33]
    instruction_address.io_in <= io_instruction_address @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 59:33]
    csr_read_data.clock <= clock
    csr_read_data.reset <= reset
    csr_read_data.io_stall <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 66:27]
    csr_read_data.io_flush <= UInt<1>("h0") @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 67:27]
    csr_read_data.io_in <= io_csr_read_data @[src/main/scala/riscv/core/fivestage_final/MEM2WB.scala 65:27]

  module WriteBack :
    input clock : Clock
    input reset : UInt<1>
    input io_instruction_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/WriteBack.scala 8:14]
    input io_alu_result : UInt<32> @[src/main/scala/riscv/core/fivestage_final/WriteBack.scala 8:14]
    input io_memory_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/WriteBack.scala 8:14]
    input io_regs_write_source : UInt<2> @[src/main/scala/riscv/core/fivestage_final/WriteBack.scala 8:14]
    input io_csr_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/WriteBack.scala 8:14]
    output io_regs_write_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/WriteBack.scala 8:14]

    node _io_regs_write_data_T = add(io_instruction_address, UInt<3>("h4")) @[src/main/scala/riscv/core/fivestage_final/WriteBack.scala 23:72]
    node _io_regs_write_data_T_1 = tail(_io_regs_write_data_T, 1) @[src/main/scala/riscv/core/fivestage_final/WriteBack.scala 23:72]
    node _io_regs_write_data_T_2 = eq(UInt<2>("h1"), io_regs_write_source) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_regs_write_data_T_3 = mux(_io_regs_write_data_T_2, io_memory_read_data, io_alu_result) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_regs_write_data_T_4 = eq(UInt<2>("h2"), io_regs_write_source) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_regs_write_data_T_5 = mux(_io_regs_write_data_T_4, io_csr_read_data, _io_regs_write_data_T_3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_regs_write_data_T_6 = eq(UInt<2>("h3"), io_regs_write_source) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_regs_write_data_T_7 = mux(_io_regs_write_data_T_6, _io_regs_write_data_T_1, _io_regs_write_data_T_5) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    io_regs_write_data <= _io_regs_write_data_T_7 @[src/main/scala/riscv/core/fivestage_final/WriteBack.scala 17:22]

  module Forwarding :
    input clock : Clock
    input reset : UInt<1>
    input io_rs1_id : UInt<5> @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 13:14]
    input io_rs2_id : UInt<5> @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 13:14]
    input io_rs1_ex : UInt<5> @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 13:14]
    input io_rs2_ex : UInt<5> @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 13:14]
    input io_rd_mem : UInt<5> @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 13:14]
    input io_reg_write_enable_mem : UInt<1> @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 13:14]
    input io_rd_wb : UInt<5> @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 13:14]
    input io_reg_write_enable_wb : UInt<1> @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 13:14]
    output io_reg1_forward_id : UInt<2> @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 13:14]
    output io_reg2_forward_id : UInt<2> @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 13:14]
    output io_reg1_forward_ex : UInt<2> @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 13:14]
    output io_reg2_forward_ex : UInt<2> @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 13:14]

    node _T = eq(io_rs1_ex, io_rd_mem) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 30:45]
    node _T_1 = and(io_reg_write_enable_mem, _T) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 30:32]
    node _T_2 = neq(io_rd_mem, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 30:72]
    node _T_3 = and(_T_1, _T_2) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 30:59]
    node _T_4 = eq(io_rs1_ex, io_rd_wb) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 32:50]
    node _T_5 = and(io_reg_write_enable_wb, _T_4) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 32:37]
    node _T_6 = neq(io_rd_wb, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 32:75]
    node _T_7 = and(_T_5, _T_6) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 32:63]
    node _GEN_0 = mux(_T_7, UInt<2>("h2"), UInt<2>("h0")) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 32:84 33:24 35:24]
    node _GEN_1 = mux(_T_3, UInt<2>("h1"), _GEN_0) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 30:81 31:24]
    node _T_8 = eq(io_rs2_ex, io_rd_mem) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 38:45]
    node _T_9 = and(io_reg_write_enable_mem, _T_8) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 38:32]
    node _T_10 = neq(io_rd_mem, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 38:72]
    node _T_11 = and(_T_9, _T_10) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 38:59]
    node _T_12 = eq(io_rs2_ex, io_rd_wb) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 40:50]
    node _T_13 = and(io_reg_write_enable_wb, _T_12) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 40:37]
    node _T_14 = neq(io_rd_wb, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 40:75]
    node _T_15 = and(_T_13, _T_14) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 40:63]
    node _GEN_2 = mux(_T_15, UInt<2>("h2"), UInt<2>("h0")) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 40:84 41:24 43:24]
    node _GEN_3 = mux(_T_11, UInt<2>("h1"), _GEN_2) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 38:81 39:24]
    node _T_16 = eq(io_rs1_id, io_rd_mem) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 46:45]
    node _T_17 = and(io_reg_write_enable_mem, _T_16) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 46:32]
    node _T_18 = neq(io_rd_mem, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 46:72]
    node _T_19 = and(_T_17, _T_18) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 46:59]
    node _T_20 = eq(io_rs1_id, io_rd_wb) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 48:50]
    node _T_21 = and(io_reg_write_enable_wb, _T_20) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 48:37]
    node _T_22 = neq(io_rd_wb, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 48:75]
    node _T_23 = and(_T_21, _T_22) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 48:63]
    node _GEN_4 = mux(_T_23, UInt<2>("h2"), UInt<2>("h0")) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 48:84 49:24 51:24]
    node _GEN_5 = mux(_T_19, UInt<2>("h1"), _GEN_4) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 46:81 47:24]
    node _T_24 = eq(io_rs2_id, io_rd_mem) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 54:45]
    node _T_25 = and(io_reg_write_enable_mem, _T_24) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 54:32]
    node _T_26 = neq(io_rd_mem, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 54:72]
    node _T_27 = and(_T_25, _T_26) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 54:59]
    node _T_28 = eq(io_rs2_id, io_rd_wb) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 56:50]
    node _T_29 = and(io_reg_write_enable_wb, _T_28) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 56:37]
    node _T_30 = neq(io_rd_wb, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 56:75]
    node _T_31 = and(_T_29, _T_30) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 56:63]
    node _GEN_6 = mux(_T_31, UInt<2>("h2"), UInt<2>("h0")) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 56:84 57:24 59:24]
    node _GEN_7 = mux(_T_27, UInt<2>("h1"), _GEN_6) @[src/main/scala/riscv/core/fivestage_final/Forwarding.scala 54:81 55:24]
    io_reg1_forward_id <= _GEN_5
    io_reg2_forward_id <= _GEN_7
    io_reg1_forward_ex <= _GEN_1
    io_reg2_forward_ex <= _GEN_3

  module CLINT :
    input clock : Clock
    input reset : UInt<1>
    input io_interrupt_flag : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 28:14]
    input io_instruction_id : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 28:14]
    input io_instruction_address_if : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 28:14]
    input io_jump_flag : UInt<1> @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 28:14]
    input io_jump_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 28:14]
    output io_id_interrupt_handler_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 28:14]
    output io_id_interrupt_assert : UInt<1> @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 28:14]
    input io_csr_bundle_mstatus : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 28:14]
    input io_csr_bundle_mepc : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 28:14]
    input io_csr_bundle_mcause : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 28:14]
    input io_csr_bundle_mtvec : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 28:14]
    output io_csr_bundle_mstatus_write_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 28:14]
    output io_csr_bundle_mepc_write_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 28:14]
    output io_csr_bundle_mcause_write_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 28:14]
    output io_csr_bundle_direct_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 28:14]

    node interrupt_enable = bits(io_csr_bundle_mstatus, 3, 3) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 42:47]
    node instruction_address = mux(io_jump_flag, io_jump_address, io_instruction_address_if) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 43:32]
    node _mstatus_disable_interrupt_T = bits(io_csr_bundle_mstatus, 31, 4) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 48:56]
    node _mstatus_disable_interrupt_T_1 = cat(_mstatus_disable_interrupt_T, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 48:64]
    node _mstatus_disable_interrupt_T_2 = bits(io_csr_bundle_mstatus, 2, 0) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 48:100]
    node mstatus_disable_interrupt = cat(_mstatus_disable_interrupt_T_1, _mstatus_disable_interrupt_T_2) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 48:76]
    node _mstatus_recover_interrupt_T = bits(io_csr_bundle_mstatus, 31, 4) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 50:26]
    node _mstatus_recover_interrupt_T_1 = bits(io_csr_bundle_mstatus, 7, 7) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 50:58]
    node _mstatus_recover_interrupt_T_2 = cat(_mstatus_recover_interrupt_T, _mstatus_recover_interrupt_T_1) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 50:34]
    node _mstatus_recover_interrupt_T_3 = bits(io_csr_bundle_mstatus, 2, 0) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 50:86]
    node mstatus_recover_interrupt = cat(_mstatus_recover_interrupt_T_2, _mstatus_recover_interrupt_T_3) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 50:62]
    node _T = eq(io_instruction_id, UInt<32>("h73")) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 52:26]
    node _T_1 = eq(io_instruction_id, UInt<32>("h100073")) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 52:73]
    node _T_2 = or(_T, _T_1) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 52:52]
    node _io_csr_bundle_mcause_write_data_T = eq(UInt<32>("h73"), io_instruction_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_bundle_mcause_write_data_T_1 = mux(_io_csr_bundle_mcause_write_data_T, UInt<4>("hb"), UInt<4>("ha")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_bundle_mcause_write_data_T_2 = eq(UInt<32>("h100073"), io_instruction_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_csr_bundle_mcause_write_data_T_3 = mux(_io_csr_bundle_mcause_write_data_T_2, UInt<2>("h3"), _io_csr_bundle_mcause_write_data_T_1) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _T_3 = neq(io_interrupt_flag, UInt<8>("h0")) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 66:32]
    node _T_4 = and(_T_3, interrupt_enable) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 66:57]
    node _io_csr_bundle_mcause_write_data_T_4 = bits(io_interrupt_flag, 0, 0) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 69:63]
    node _io_csr_bundle_mcause_write_data_T_5 = mux(_io_csr_bundle_mcause_write_data_T_4, UInt<32>("h80000007"), UInt<32>("h8000000b")) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 69:45]
    node _T_5 = eq(io_instruction_id, UInt<32>("h30200073")) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 73:32]
    node _GEN_0 = mux(_T_5, mstatus_recover_interrupt, io_csr_bundle_mstatus) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 73:58 74:39 81:39]
    node _GEN_1 = mux(_T_5, io_csr_bundle_mepc, io_csr_bundle_mepc) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 73:58 75:39 82:39]
    node _GEN_2 = mux(_T_5, io_csr_bundle_mcause, io_csr_bundle_mcause) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 73:58 76:39 83:39]
    node _GEN_3 = mux(_T_5, UInt<1>("h1"), UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 73:58 77:39 84:39]
    node _GEN_4 = mux(_T_5, io_csr_bundle_mepc, UInt<1>("h0")) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 73:58 79:39 86:39]
    node _GEN_5 = mux(_T_4, mstatus_disable_interrupt, _GEN_0) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 66:78 67:39]
    node _GEN_6 = mux(_T_4, instruction_address, _GEN_1) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 66:78 68:39]
    node _GEN_7 = mux(_T_4, _io_csr_bundle_mcause_write_data_T_5, _GEN_2) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 66:78 69:39]
    node _GEN_8 = mux(_T_4, UInt<1>("h1"), _GEN_3) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 66:78 70:39]
    node _GEN_9 = mux(_T_4, io_csr_bundle_mtvec, _GEN_4) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 66:78 72:39]
    node _GEN_10 = mux(_T_2, mstatus_disable_interrupt, _GEN_5) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 52:101 53:38]
    node _GEN_11 = mux(_T_2, instruction_address, _GEN_6) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 52:101 54:38]
    node _GEN_12 = mux(_T_2, _io_csr_bundle_mcause_write_data_T_3, _GEN_7) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 52:101 55:37]
    node _GEN_13 = mux(_T_2, UInt<1>("h1"), _GEN_8) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 52:101 63:39]
    node _GEN_14 = mux(_T_2, io_csr_bundle_mtvec, _GEN_9) @[src/main/scala/riscv/core/fivestage_final/CLINT.scala 52:101 65:39]
    io_id_interrupt_handler_address <= _GEN_14
    io_id_interrupt_assert <= _GEN_13
    io_csr_bundle_mstatus_write_data <= _GEN_10
    io_csr_bundle_mepc_write_data <= _GEN_11
    io_csr_bundle_mcause_write_data <= _GEN_12
    io_csr_bundle_direct_write_enable <= _GEN_13

  module CSR :
    input clock : Clock
    input reset : UInt<1>
    input io_reg_read_address_id : UInt<12> @[src/main/scala/riscv/core/CSR.scala 21:14]
    input io_reg_write_enable_ex : UInt<1> @[src/main/scala/riscv/core/CSR.scala 21:14]
    input io_reg_write_address_ex : UInt<12> @[src/main/scala/riscv/core/CSR.scala 21:14]
    input io_reg_write_data_ex : UInt<32> @[src/main/scala/riscv/core/CSR.scala 21:14]
    output io_id_reg_read_data : UInt<32> @[src/main/scala/riscv/core/CSR.scala 21:14]
    output io_clint_access_bundle_mstatus : UInt<32> @[src/main/scala/riscv/core/CSR.scala 21:14]
    output io_clint_access_bundle_mepc : UInt<32> @[src/main/scala/riscv/core/CSR.scala 21:14]
    output io_clint_access_bundle_mcause : UInt<32> @[src/main/scala/riscv/core/CSR.scala 21:14]
    output io_clint_access_bundle_mtvec : UInt<32> @[src/main/scala/riscv/core/CSR.scala 21:14]
    input io_clint_access_bundle_mstatus_write_data : UInt<32> @[src/main/scala/riscv/core/CSR.scala 21:14]
    input io_clint_access_bundle_mepc_write_data : UInt<32> @[src/main/scala/riscv/core/CSR.scala 21:14]
    input io_clint_access_bundle_mcause_write_data : UInt<32> @[src/main/scala/riscv/core/CSR.scala 21:14]
    input io_clint_access_bundle_direct_write_enable : UInt<1> @[src/main/scala/riscv/core/CSR.scala 21:14]

    reg mstatus : UInt<32>, clock with :
      reset => (UInt<1>("h0"), mstatus) @[src/main/scala/riscv/core/CSR.scala 32:25]
    reg mie : UInt<32>, clock with :
      reset => (UInt<1>("h0"), mie) @[src/main/scala/riscv/core/CSR.scala 33:25]
    reg mtvec : UInt<32>, clock with :
      reset => (UInt<1>("h0"), mtvec) @[src/main/scala/riscv/core/CSR.scala 34:25]
    reg mscratch : UInt<32>, clock with :
      reset => (UInt<1>("h0"), mscratch) @[src/main/scala/riscv/core/CSR.scala 35:25]
    reg mepc : UInt<32>, clock with :
      reset => (UInt<1>("h0"), mepc) @[src/main/scala/riscv/core/CSR.scala 36:25]
    reg mcause : UInt<32>, clock with :
      reset => (UInt<1>("h0"), mcause) @[src/main/scala/riscv/core/CSR.scala 37:25]
    reg cycles : UInt<64>, clock with :
      reset => (UInt<1>("h0"), cycles) @[src/main/scala/riscv/core/CSR.scala 38:25]
    node _T = bits(cycles, 31, 0) @[src/main/scala/riscv/core/CSR.scala 47:37]
    node _T_1 = bits(cycles, 63, 32) @[src/main/scala/riscv/core/CSR.scala 48:37]
    node _cycles_T = add(cycles, UInt<1>("h1")) @[src/main/scala/riscv/core/CSR.scala 50:20]
    node _cycles_T_1 = tail(_cycles_T, 1) @[src/main/scala/riscv/core/CSR.scala 50:20]
    node _io_id_reg_read_data_T = eq(UInt<12>("h300"), io_reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_1 = mux(_io_id_reg_read_data_T, mstatus, UInt<1>("h0")) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_2 = eq(UInt<12>("h304"), io_reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_3 = mux(_io_id_reg_read_data_T_2, mie, _io_id_reg_read_data_T_1) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_4 = eq(UInt<12>("h305"), io_reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_5 = mux(_io_id_reg_read_data_T_4, mtvec, _io_id_reg_read_data_T_3) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_6 = eq(UInt<12>("h340"), io_reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_7 = mux(_io_id_reg_read_data_T_6, mscratch, _io_id_reg_read_data_T_5) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_8 = eq(UInt<12>("h341"), io_reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_9 = mux(_io_id_reg_read_data_T_8, mepc, _io_id_reg_read_data_T_7) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_10 = eq(UInt<12>("h342"), io_reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_11 = mux(_io_id_reg_read_data_T_10, mcause, _io_id_reg_read_data_T_9) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_12 = eq(UInt<12>("hc00"), io_reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_13 = mux(_io_id_reg_read_data_T_12, _T, _io_id_reg_read_data_T_11) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_14 = eq(UInt<12>("hc80"), io_reg_read_address_id) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_id_reg_read_data_T_15 = mux(_io_id_reg_read_data_T_14, _T_1, _io_id_reg_read_data_T_13) @[src/main/scala/chisel3/util/Mux.scala 77:13]
    node _io_clint_access_bundle_mstatus_T = eq(io_reg_write_address_ex, UInt<12>("h300")) @[src/main/scala/riscv/core/CSR.scala 57:55]
    node _io_clint_access_bundle_mstatus_T_1 = and(io_reg_write_enable_ex, _io_clint_access_bundle_mstatus_T) @[src/main/scala/riscv/core/CSR.scala 57:28]
    node _io_clint_access_bundle_mstatus_T_2 = mux(_io_clint_access_bundle_mstatus_T_1, io_reg_write_data_ex, mstatus) @[src/main/scala/riscv/core/CSR.scala 56:40]
    node _io_clint_access_bundle_mtvec_T = eq(io_reg_write_address_ex, UInt<12>("h305")) @[src/main/scala/riscv/core/CSR.scala 62:55]
    node _io_clint_access_bundle_mtvec_T_1 = and(io_reg_write_enable_ex, _io_clint_access_bundle_mtvec_T) @[src/main/scala/riscv/core/CSR.scala 62:28]
    node _io_clint_access_bundle_mtvec_T_2 = mux(_io_clint_access_bundle_mtvec_T_1, io_reg_write_data_ex, mtvec) @[src/main/scala/riscv/core/CSR.scala 61:38]
    node _io_clint_access_bundle_mcause_T = eq(io_reg_write_address_ex, UInt<12>("h342")) @[src/main/scala/riscv/core/CSR.scala 67:55]
    node _io_clint_access_bundle_mcause_T_1 = and(io_reg_write_enable_ex, _io_clint_access_bundle_mcause_T) @[src/main/scala/riscv/core/CSR.scala 67:28]
    node _io_clint_access_bundle_mcause_T_2 = mux(_io_clint_access_bundle_mcause_T_1, io_reg_write_data_ex, mcause) @[src/main/scala/riscv/core/CSR.scala 66:39]
    node _io_clint_access_bundle_mepc_T = eq(io_reg_write_address_ex, UInt<12>("h341")) @[src/main/scala/riscv/core/CSR.scala 72:55]
    node _io_clint_access_bundle_mepc_T_1 = and(io_reg_write_enable_ex, _io_clint_access_bundle_mepc_T) @[src/main/scala/riscv/core/CSR.scala 72:28]
    node _io_clint_access_bundle_mepc_T_2 = mux(_io_clint_access_bundle_mepc_T_1, io_reg_write_data_ex, mepc) @[src/main/scala/riscv/core/CSR.scala 71:37]
    node _T_2 = eq(io_reg_write_address_ex, UInt<12>("h300")) @[src/main/scala/riscv/core/CSR.scala 82:34]
    node _T_3 = eq(io_reg_write_address_ex, UInt<12>("h341")) @[src/main/scala/riscv/core/CSR.scala 84:40]
    node _T_4 = eq(io_reg_write_address_ex, UInt<12>("h342")) @[src/main/scala/riscv/core/CSR.scala 86:40]
    node _GEN_0 = mux(_T_4, io_reg_write_data_ex, mcause) @[src/main/scala/riscv/core/CSR.scala 86:64 87:14 37:25]
    node _GEN_1 = mux(_T_3, io_reg_write_data_ex, mepc) @[src/main/scala/riscv/core/CSR.scala 84:62 85:12 36:25]
    node _GEN_2 = mux(_T_3, mcause, _GEN_0) @[src/main/scala/riscv/core/CSR.scala 37:25 84:62]
    node _GEN_3 = mux(_T_2, io_reg_write_data_ex, mstatus) @[src/main/scala/riscv/core/CSR.scala 82:59 83:15 32:25]
    node _GEN_4 = mux(_T_2, mepc, _GEN_1) @[src/main/scala/riscv/core/CSR.scala 36:25 82:59]
    node _GEN_5 = mux(_T_2, mcause, _GEN_2) @[src/main/scala/riscv/core/CSR.scala 37:25 82:59]
    node _GEN_6 = mux(io_reg_write_enable_ex, _GEN_3, mstatus) @[src/main/scala/riscv/core/CSR.scala 32:25 81:38]
    node _GEN_7 = mux(io_reg_write_enable_ex, _GEN_4, mepc) @[src/main/scala/riscv/core/CSR.scala 36:25 81:38]
    node _GEN_8 = mux(io_reg_write_enable_ex, _GEN_5, mcause) @[src/main/scala/riscv/core/CSR.scala 37:25 81:38]
    node _GEN_9 = mux(io_clint_access_bundle_direct_write_enable, io_clint_access_bundle_mstatus_write_data, _GEN_6) @[src/main/scala/riscv/core/CSR.scala 77:52 78:13]
    node _GEN_10 = mux(io_clint_access_bundle_direct_write_enable, io_clint_access_bundle_mepc_write_data, _GEN_7) @[src/main/scala/riscv/core/CSR.scala 77:52 79:13]
    node _GEN_11 = mux(io_clint_access_bundle_direct_write_enable, io_clint_access_bundle_mcause_write_data, _GEN_8) @[src/main/scala/riscv/core/CSR.scala 77:52 80:13]
    node _T_5 = eq(io_reg_write_address_ex, UInt<12>("h304")) @[src/main/scala/riscv/core/CSR.scala 92:34]
    node _T_6 = eq(io_reg_write_address_ex, UInt<12>("h305")) @[src/main/scala/riscv/core/CSR.scala 94:40]
    node _T_7 = eq(io_reg_write_address_ex, UInt<12>("h340")) @[src/main/scala/riscv/core/CSR.scala 96:40]
    node _GEN_12 = mux(_T_7, io_reg_write_data_ex, mscratch) @[src/main/scala/riscv/core/CSR.scala 96:66 97:16 35:25]
    node _GEN_13 = mux(_T_6, io_reg_write_data_ex, mtvec) @[src/main/scala/riscv/core/CSR.scala 94:63 95:13 34:25]
    node _GEN_14 = mux(_T_6, mscratch, _GEN_12) @[src/main/scala/riscv/core/CSR.scala 35:25 94:63]
    node _GEN_15 = mux(_T_5, io_reg_write_data_ex, mie) @[src/main/scala/riscv/core/CSR.scala 92:55 93:11 33:25]
    node _GEN_16 = mux(_T_5, mtvec, _GEN_13) @[src/main/scala/riscv/core/CSR.scala 34:25 92:55]
    node _GEN_17 = mux(_T_5, mscratch, _GEN_14) @[src/main/scala/riscv/core/CSR.scala 35:25 92:55]
    node _GEN_18 = mux(io_reg_write_enable_ex, _GEN_15, mie) @[src/main/scala/riscv/core/CSR.scala 33:25 91:32]
    node _GEN_19 = mux(io_reg_write_enable_ex, _GEN_16, mtvec) @[src/main/scala/riscv/core/CSR.scala 34:25 91:32]
    node _GEN_20 = mux(io_reg_write_enable_ex, _GEN_17, mscratch) @[src/main/scala/riscv/core/CSR.scala 35:25 91:32]
    io_id_reg_read_data <= _io_id_reg_read_data_T_15 @[src/main/scala/riscv/core/CSR.scala 54:23]
    io_clint_access_bundle_mstatus <= _io_clint_access_bundle_mstatus_T_2 @[src/main/scala/riscv/core/CSR.scala 56:34]
    io_clint_access_bundle_mepc <= _io_clint_access_bundle_mepc_T_2 @[src/main/scala/riscv/core/CSR.scala 71:31]
    io_clint_access_bundle_mcause <= _io_clint_access_bundle_mcause_T_2 @[src/main/scala/riscv/core/CSR.scala 66:33]
    io_clint_access_bundle_mtvec <= _io_clint_access_bundle_mtvec_T_2 @[src/main/scala/riscv/core/CSR.scala 61:32]
    mstatus <= mux(reset, UInt<1>("h0"), _GEN_9) @[src/main/scala/riscv/core/CSR.scala 32:{25,25}]
    mie <= mux(reset, UInt<1>("h0"), _GEN_18) @[src/main/scala/riscv/core/CSR.scala 33:{25,25}]
    mtvec <= mux(reset, UInt<1>("h0"), _GEN_19) @[src/main/scala/riscv/core/CSR.scala 34:{25,25}]
    mscratch <= mux(reset, UInt<1>("h0"), _GEN_20) @[src/main/scala/riscv/core/CSR.scala 35:{25,25}]
    mepc <= mux(reset, UInt<1>("h0"), _GEN_10) @[src/main/scala/riscv/core/CSR.scala 36:{25,25}]
    mcause <= mux(reset, UInt<1>("h0"), _GEN_11) @[src/main/scala/riscv/core/CSR.scala 37:{25,25}]
    cycles <= mux(reset, UInt<1>("h0"), _cycles_T_1) @[src/main/scala/riscv/core/CSR.scala 38:{25,25} 50:10]

  module CPU :
    input clock : Clock
    input reset : UInt<1>
    output io_instruction_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CPU.scala 10:14]
    input io_instruction : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CPU.scala 10:14]
    input io_instruction_valid : UInt<1> @[src/main/scala/riscv/core/fivestage_final/CPU.scala 10:14]
    output io_memory_bundle_address : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CPU.scala 10:14]
    output io_memory_bundle_write_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CPU.scala 10:14]
    output io_memory_bundle_write_enable : UInt<1> @[src/main/scala/riscv/core/fivestage_final/CPU.scala 10:14]
    output io_memory_bundle_write_strobe_0 : UInt<1> @[src/main/scala/riscv/core/fivestage_final/CPU.scala 10:14]
    output io_memory_bundle_write_strobe_1 : UInt<1> @[src/main/scala/riscv/core/fivestage_final/CPU.scala 10:14]
    output io_memory_bundle_write_strobe_2 : UInt<1> @[src/main/scala/riscv/core/fivestage_final/CPU.scala 10:14]
    output io_memory_bundle_write_strobe_3 : UInt<1> @[src/main/scala/riscv/core/fivestage_final/CPU.scala 10:14]
    input io_memory_bundle_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CPU.scala 10:14]
    output io_device_select : UInt<3> @[src/main/scala/riscv/core/fivestage_final/CPU.scala 10:14]
    input io_interrupt_flag : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CPU.scala 10:14]
    input io_debug_read_address : UInt<5> @[src/main/scala/riscv/core/fivestage_final/CPU.scala 10:14]
    output io_debug_read_data : UInt<32> @[src/main/scala/riscv/core/fivestage_final/CPU.scala 10:14]

    inst ctrl of Control @[src/main/scala/riscv/core/fivestage_final/CPU.scala 12:26]
    inst regs of RegisterFile @[src/main/scala/riscv/core/fivestage_final/CPU.scala 13:26]
    inst inst_fetch of InstructionFetch @[src/main/scala/riscv/core/fivestage_final/CPU.scala 14:26]
    inst if2id of IF2ID @[src/main/scala/riscv/core/fivestage_final/CPU.scala 15:26]
    inst id of InstructionDecode @[src/main/scala/riscv/core/fivestage_final/CPU.scala 16:26]
    inst id2ex of ID2EX @[src/main/scala/riscv/core/fivestage_final/CPU.scala 17:26]
    inst ex of Execute @[src/main/scala/riscv/core/fivestage_final/CPU.scala 18:26]
    inst ex2mem of EX2MEM @[src/main/scala/riscv/core/fivestage_final/CPU.scala 19:26]
    inst mem of MemoryAccess @[src/main/scala/riscv/core/fivestage_final/CPU.scala 20:26]
    inst mem2wb of MEM2WB @[src/main/scala/riscv/core/fivestage_final/CPU.scala 21:26]
    inst wb of WriteBack @[src/main/scala/riscv/core/fivestage_final/CPU.scala 22:26]
    inst forwarding of Forwarding @[src/main/scala/riscv/core/fivestage_final/CPU.scala 23:26]
    inst clint of CLINT @[src/main/scala/riscv/core/fivestage_final/CPU.scala 24:26]
    inst csr_regs of CSR @[src/main/scala/riscv/core/fivestage_final/CPU.scala 25:26]
    node _ex2mem_io_funct3_T = bits(id2ex.io_output_instruction, 14, 12) @[src/main/scala/riscv/core/fivestage_final/CPU.scala 105:63]
    node _io_device_select_T = bits(mem.io_bundle_address, 31, 29) @[src/main/scala/riscv/core/fivestage_final/CPU.scala 120:13]
    node _io_memory_bundle_address_T = bits(mem.io_bundle_address, 28, 0) @[src/main/scala/riscv/core/fivestage_final/CPU.scala 123:13]
    node _io_memory_bundle_address_T_1 = cat(UInt<3>("h0"), _io_memory_bundle_address_T) @[src/main/scala/riscv/core/fivestage_final/CPU.scala 122:70]
    io_instruction_address <= inst_fetch.io_instruction_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 45:35]
    io_memory_bundle_address <= _io_memory_bundle_address_T_1 @[src/main/scala/riscv/core/fivestage_final/CPU.scala 122:28]
    io_memory_bundle_write_data <= mem.io_bundle_write_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 121:20]
    io_memory_bundle_write_enable <= mem.io_bundle_write_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 121:20]
    io_memory_bundle_write_strobe_0 <= mem.io_bundle_write_strobe_0 @[src/main/scala/riscv/core/fivestage_final/CPU.scala 121:20]
    io_memory_bundle_write_strobe_1 <= mem.io_bundle_write_strobe_1 @[src/main/scala/riscv/core/fivestage_final/CPU.scala 121:20]
    io_memory_bundle_write_strobe_2 <= mem.io_bundle_write_strobe_2 @[src/main/scala/riscv/core/fivestage_final/CPU.scala 121:20]
    io_memory_bundle_write_strobe_3 <= mem.io_bundle_write_strobe_3 @[src/main/scala/riscv/core/fivestage_final/CPU.scala 121:20]
    io_device_select <= _io_device_select_T @[src/main/scala/riscv/core/fivestage_final/CPU.scala 119:20]
    io_debug_read_data <= regs.io_debug_read_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 43:30]
    ctrl.clock <= clock
    ctrl.reset <= reset
    ctrl.io_jump_flag <= id.io_if_jump_flag @[src/main/scala/riscv/core/fivestage_final/CPU.scala 27:34]
    ctrl.io_jump_instruction_id <= id.io_ctrl_jump_instruction @[src/main/scala/riscv/core/fivestage_final/CPU.scala 28:34]
    ctrl.io_rs1_id <= id.io_regs_reg1_read_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 29:34]
    ctrl.io_rs2_id <= id.io_regs_reg2_read_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 30:34]
    ctrl.io_memory_read_enable_ex <= id2ex.io_output_memory_read_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 31:34]
    ctrl.io_rd_ex <= id2ex.io_output_regs_write_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 32:34]
    ctrl.io_memory_read_enable_mem <= ex2mem.io_output_memory_read_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 33:34]
    ctrl.io_rd_mem <= bits(ex2mem.io_output_regs_write_address, 4, 0) @[src/main/scala/riscv/core/fivestage_final/CPU.scala 34:34]
    regs.clock <= clock
    regs.reset <= reset
    regs.io_write_enable <= mem2wb.io_output_regs_write_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 36:25]
    regs.io_write_address <= bits(mem2wb.io_output_regs_write_address, 4, 0) @[src/main/scala/riscv/core/fivestage_final/CPU.scala 37:25]
    regs.io_write_data <= wb.io_regs_write_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 38:25]
    regs.io_read_address1 <= id.io_regs_reg1_read_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 39:25]
    regs.io_read_address2 <= id.io_regs_reg2_read_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 40:25]
    regs.io_debug_read_address <= io_debug_read_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 42:30]
    inst_fetch.clock <= clock
    inst_fetch.reset <= reset
    inst_fetch.io_stall_flag_ctrl <= ctrl.io_pc_stall @[src/main/scala/riscv/core/fivestage_final/CPU.scala 46:35]
    inst_fetch.io_jump_flag_id <= id.io_if_jump_flag @[src/main/scala/riscv/core/fivestage_final/CPU.scala 47:35]
    inst_fetch.io_jump_address_id <= id.io_if_jump_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 48:35]
    inst_fetch.io_rom_instruction <= io_instruction @[src/main/scala/riscv/core/fivestage_final/CPU.scala 49:35]
    inst_fetch.io_instruction_valid <= io_instruction_valid @[src/main/scala/riscv/core/fivestage_final/CPU.scala 50:35]
    if2id.clock <= clock
    if2id.reset <= reset
    if2id.io_stall <= ctrl.io_if_stall @[src/main/scala/riscv/core/fivestage_final/CPU.scala 52:32]
    if2id.io_flush <= ctrl.io_if_flush @[src/main/scala/riscv/core/fivestage_final/CPU.scala 53:32]
    if2id.io_instruction <= inst_fetch.io_id_instruction @[src/main/scala/riscv/core/fivestage_final/CPU.scala 54:32]
    if2id.io_instruction_address <= inst_fetch.io_instruction_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 55:32]
    if2id.io_interrupt_flag <= io_interrupt_flag @[src/main/scala/riscv/core/fivestage_final/CPU.scala 56:32]
    id.clock <= clock
    id.reset <= reset
    id.io_instruction <= if2id.io_output_instruction @[src/main/scala/riscv/core/fivestage_final/CPU.scala 58:35]
    id.io_instruction_address <= if2id.io_output_instruction_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 59:35]
    id.io_reg1_data <= regs.io_read_data1 @[src/main/scala/riscv/core/fivestage_final/CPU.scala 60:35]
    id.io_reg2_data <= regs.io_read_data2 @[src/main/scala/riscv/core/fivestage_final/CPU.scala 61:35]
    id.io_forward_from_mem <= mem.io_forward_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 62:35]
    id.io_forward_from_wb <= wb.io_regs_write_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 63:35]
    id.io_reg1_forward <= forwarding.io_reg1_forward_id @[src/main/scala/riscv/core/fivestage_final/CPU.scala 64:35]
    id.io_reg2_forward <= forwarding.io_reg2_forward_id @[src/main/scala/riscv/core/fivestage_final/CPU.scala 65:35]
    id.io_interrupt_assert <= clint.io_id_interrupt_assert @[src/main/scala/riscv/core/fivestage_final/CPU.scala 66:35]
    id.io_interrupt_handler_address <= clint.io_id_interrupt_handler_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 67:35]
    id2ex.clock <= clock
    id2ex.reset <= reset
    id2ex.io_flush <= ctrl.io_id_flush @[src/main/scala/riscv/core/fivestage_final/CPU.scala 69:35]
    id2ex.io_instruction <= if2id.io_output_instruction @[src/main/scala/riscv/core/fivestage_final/CPU.scala 70:35]
    id2ex.io_instruction_address <= if2id.io_output_instruction_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 71:35]
    id2ex.io_regs_reg1_read_address <= id.io_regs_reg1_read_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 74:35]
    id2ex.io_regs_reg2_read_address <= id.io_regs_reg2_read_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 75:35]
    id2ex.io_regs_write_enable <= id.io_ex_reg_write_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 76:35]
    id2ex.io_regs_write_address <= id.io_ex_reg_write_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 77:35]
    id2ex.io_regs_write_source <= id.io_ex_reg_write_source @[src/main/scala/riscv/core/fivestage_final/CPU.scala 78:35]
    id2ex.io_reg1_data <= regs.io_read_data1 @[src/main/scala/riscv/core/fivestage_final/CPU.scala 72:35]
    id2ex.io_reg2_data <= regs.io_read_data2 @[src/main/scala/riscv/core/fivestage_final/CPU.scala 73:35]
    id2ex.io_immediate <= id.io_ex_immediate @[src/main/scala/riscv/core/fivestage_final/CPU.scala 79:35]
    id2ex.io_aluop1_source <= id.io_ex_aluop1_source @[src/main/scala/riscv/core/fivestage_final/CPU.scala 80:35]
    id2ex.io_aluop2_source <= id.io_ex_aluop2_source @[src/main/scala/riscv/core/fivestage_final/CPU.scala 81:35]
    id2ex.io_csr_write_enable <= id.io_ex_csr_write_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 82:35]
    id2ex.io_csr_address <= id.io_ex_csr_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 83:35]
    id2ex.io_memory_read_enable <= id.io_ex_memory_read_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 84:35]
    id2ex.io_memory_write_enable <= id.io_ex_memory_write_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 85:35]
    id2ex.io_csr_read_data <= csr_regs.io_id_reg_read_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 86:35]
    ex.clock <= clock
    ex.reset <= reset
    ex.io_instruction <= id2ex.io_output_instruction @[src/main/scala/riscv/core/fivestage_final/CPU.scala 88:29]
    ex.io_instruction_address <= id2ex.io_output_instruction_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 89:29]
    ex.io_reg1_data <= id2ex.io_output_reg1_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 90:29]
    ex.io_reg2_data <= id2ex.io_output_reg2_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 91:29]
    ex.io_immediate <= id2ex.io_output_immediate @[src/main/scala/riscv/core/fivestage_final/CPU.scala 92:29]
    ex.io_aluop1_source <= id2ex.io_output_aluop1_source @[src/main/scala/riscv/core/fivestage_final/CPU.scala 93:29]
    ex.io_aluop2_source <= id2ex.io_output_aluop2_source @[src/main/scala/riscv/core/fivestage_final/CPU.scala 94:29]
    ex.io_csr_read_data <= id2ex.io_output_csr_read_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 95:29]
    ex.io_forward_from_mem <= mem.io_forward_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 96:29]
    ex.io_forward_from_wb <= wb.io_regs_write_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 97:29]
    ex.io_reg1_forward <= forwarding.io_reg1_forward_ex @[src/main/scala/riscv/core/fivestage_final/CPU.scala 98:29]
    ex.io_reg2_forward <= forwarding.io_reg2_forward_ex @[src/main/scala/riscv/core/fivestage_final/CPU.scala 99:29]
    ex2mem.clock <= clock
    ex2mem.reset <= reset
    ex2mem.io_regs_write_enable <= id2ex.io_output_regs_write_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 101:33]
    ex2mem.io_regs_write_source <= id2ex.io_output_regs_write_source @[src/main/scala/riscv/core/fivestage_final/CPU.scala 102:33]
    ex2mem.io_regs_write_address <= pad(id2ex.io_output_regs_write_address, 32) @[src/main/scala/riscv/core/fivestage_final/CPU.scala 103:33]
    ex2mem.io_instruction_address <= id2ex.io_output_instruction_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 104:33]
    ex2mem.io_funct3 <= _ex2mem_io_funct3_T @[src/main/scala/riscv/core/fivestage_final/CPU.scala 105:33]
    ex2mem.io_reg2_data <= ex.io_mem_reg2_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 106:33]
    ex2mem.io_memory_read_enable <= id2ex.io_output_memory_read_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 107:33]
    ex2mem.io_memory_write_enable <= id2ex.io_output_memory_write_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 108:33]
    ex2mem.io_alu_result <= ex.io_mem_alu_result @[src/main/scala/riscv/core/fivestage_final/CPU.scala 109:33]
    ex2mem.io_csr_read_data <= id2ex.io_output_csr_read_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 110:33]
    mem.clock <= clock
    mem.reset <= reset
    mem.io_alu_result <= ex2mem.io_output_alu_result @[src/main/scala/riscv/core/fivestage_final/CPU.scala 112:30]
    mem.io_reg2_data <= ex2mem.io_output_reg2_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 113:30]
    mem.io_memory_read_enable <= ex2mem.io_output_memory_read_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 114:30]
    mem.io_memory_write_enable <= ex2mem.io_output_memory_write_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 115:30]
    mem.io_funct3 <= bits(ex2mem.io_output_funct3, 2, 0) @[src/main/scala/riscv/core/fivestage_final/CPU.scala 116:30]
    mem.io_regs_write_source <= ex2mem.io_output_regs_write_source @[src/main/scala/riscv/core/fivestage_final/CPU.scala 117:30]
    mem.io_csr_read_data <= ex2mem.io_output_csr_read_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 118:30]
    mem.io_bundle_read_data <= io_memory_bundle_read_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 121:20]
    mem2wb.clock <= clock
    mem2wb.reset <= reset
    mem2wb.io_instruction_address <= ex2mem.io_output_instruction_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 125:33]
    mem2wb.io_alu_result <= ex2mem.io_output_alu_result @[src/main/scala/riscv/core/fivestage_final/CPU.scala 126:33]
    mem2wb.io_regs_write_enable <= ex2mem.io_output_regs_write_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 127:33]
    mem2wb.io_regs_write_source <= ex2mem.io_output_regs_write_source @[src/main/scala/riscv/core/fivestage_final/CPU.scala 128:33]
    mem2wb.io_regs_write_address <= ex2mem.io_output_regs_write_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 129:33]
    mem2wb.io_memory_read_data <= mem.io_wb_memory_read_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 130:33]
    mem2wb.io_csr_read_data <= ex2mem.io_output_csr_read_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 131:33]
    wb.clock <= clock
    wb.reset <= reset
    wb.io_instruction_address <= mem2wb.io_output_instruction_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 133:29]
    wb.io_alu_result <= mem2wb.io_output_alu_result @[src/main/scala/riscv/core/fivestage_final/CPU.scala 134:29]
    wb.io_memory_read_data <= mem2wb.io_output_memory_read_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 135:29]
    wb.io_regs_write_source <= mem2wb.io_output_regs_write_source @[src/main/scala/riscv/core/fivestage_final/CPU.scala 136:29]
    wb.io_csr_read_data <= mem2wb.io_output_csr_read_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 137:29]
    forwarding.clock <= clock
    forwarding.reset <= reset
    forwarding.io_rs1_id <= id.io_regs_reg1_read_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 139:38]
    forwarding.io_rs2_id <= id.io_regs_reg2_read_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 140:38]
    forwarding.io_rs1_ex <= id2ex.io_output_regs_reg1_read_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 141:38]
    forwarding.io_rs2_ex <= id2ex.io_output_regs_reg2_read_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 142:38]
    forwarding.io_rd_mem <= bits(ex2mem.io_output_regs_write_address, 4, 0) @[src/main/scala/riscv/core/fivestage_final/CPU.scala 143:38]
    forwarding.io_reg_write_enable_mem <= ex2mem.io_output_regs_write_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 144:38]
    forwarding.io_rd_wb <= bits(mem2wb.io_output_regs_write_address, 4, 0) @[src/main/scala/riscv/core/fivestage_final/CPU.scala 145:38]
    forwarding.io_reg_write_enable_wb <= mem2wb.io_output_regs_write_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 146:38]
    clint.clock <= clock
    clint.reset <= reset
    clint.io_interrupt_flag <= if2id.io_output_interrupt_flag @[src/main/scala/riscv/core/fivestage_final/CPU.scala 152:35]
    clint.io_instruction_id <= if2id.io_output_instruction @[src/main/scala/riscv/core/fivestage_final/CPU.scala 149:35]
    clint.io_instruction_address_if <= inst_fetch.io_instruction_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 148:35]
    clint.io_jump_flag <= id.io_clint_jump_flag @[src/main/scala/riscv/core/fivestage_final/CPU.scala 150:35]
    clint.io_jump_address <= id.io_clint_jump_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 151:35]
    clint.io_csr_bundle_mstatus <= csr_regs.io_clint_access_bundle_mstatus @[src/main/scala/riscv/core/fivestage_final/CPU.scala 153:23]
    clint.io_csr_bundle_mepc <= csr_regs.io_clint_access_bundle_mepc @[src/main/scala/riscv/core/fivestage_final/CPU.scala 153:23]
    clint.io_csr_bundle_mcause <= csr_regs.io_clint_access_bundle_mcause @[src/main/scala/riscv/core/fivestage_final/CPU.scala 153:23]
    clint.io_csr_bundle_mtvec <= csr_regs.io_clint_access_bundle_mtvec @[src/main/scala/riscv/core/fivestage_final/CPU.scala 153:23]
    csr_regs.clock <= clock
    csr_regs.reset <= reset
    csr_regs.io_reg_read_address_id <= id.io_ex_csr_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 155:36]
    csr_regs.io_reg_write_enable_ex <= id2ex.io_output_csr_write_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 156:36]
    csr_regs.io_reg_write_address_ex <= id2ex.io_output_csr_address @[src/main/scala/riscv/core/fivestage_final/CPU.scala 157:36]
    csr_regs.io_reg_write_data_ex <= ex.io_csr_write_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 158:36]
    csr_regs.io_clint_access_bundle_mstatus_write_data <= clint.io_csr_bundle_mstatus_write_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 153:23]
    csr_regs.io_clint_access_bundle_mepc_write_data <= clint.io_csr_bundle_mepc_write_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 153:23]
    csr_regs.io_clint_access_bundle_mcause_write_data <= clint.io_csr_bundle_mcause_write_data @[src/main/scala/riscv/core/fivestage_final/CPU.scala 153:23]
    csr_regs.io_clint_access_bundle_direct_write_enable <= clint.io_csr_bundle_direct_write_enable @[src/main/scala/riscv/core/fivestage_final/CPU.scala 153:23]

  module CPU_1 :
    input clock : Clock
    input reset : UInt<1>
    output io_instruction_address : UInt<32> @[src/main/scala/riscv/core/CPU.scala 11:14]
    input io_instruction : UInt<32> @[src/main/scala/riscv/core/CPU.scala 11:14]
    input io_instruction_valid : UInt<1> @[src/main/scala/riscv/core/CPU.scala 11:14]
    output io_memory_bundle_address : UInt<32> @[src/main/scala/riscv/core/CPU.scala 11:14]
    output io_memory_bundle_write_data : UInt<32> @[src/main/scala/riscv/core/CPU.scala 11:14]
    output io_memory_bundle_write_enable : UInt<1> @[src/main/scala/riscv/core/CPU.scala 11:14]
    output io_memory_bundle_write_strobe_0 : UInt<1> @[src/main/scala/riscv/core/CPU.scala 11:14]
    output io_memory_bundle_write_strobe_1 : UInt<1> @[src/main/scala/riscv/core/CPU.scala 11:14]
    output io_memory_bundle_write_strobe_2 : UInt<1> @[src/main/scala/riscv/core/CPU.scala 11:14]
    output io_memory_bundle_write_strobe_3 : UInt<1> @[src/main/scala/riscv/core/CPU.scala 11:14]
    input io_memory_bundle_read_data : UInt<32> @[src/main/scala/riscv/core/CPU.scala 11:14]
    output io_device_select : UInt<3> @[src/main/scala/riscv/core/CPU.scala 11:14]
    input io_interrupt_flag : UInt<32> @[src/main/scala/riscv/core/CPU.scala 11:14]
    input io_debug_read_address : UInt<5> @[src/main/scala/riscv/core/CPU.scala 11:14]
    output io_debug_read_data : UInt<32> @[src/main/scala/riscv/core/CPU.scala 11:14]

    inst cpu of CPU @[src/main/scala/riscv/core/CPU.scala 23:23]
    io_instruction_address <= cpu.io_instruction_address @[src/main/scala/riscv/core/CPU.scala 24:14]
    io_memory_bundle_address <= cpu.io_memory_bundle_address @[src/main/scala/riscv/core/CPU.scala 24:14]
    io_memory_bundle_write_data <= cpu.io_memory_bundle_write_data @[src/main/scala/riscv/core/CPU.scala 24:14]
    io_memory_bundle_write_enable <= cpu.io_memory_bundle_write_enable @[src/main/scala/riscv/core/CPU.scala 24:14]
    io_memory_bundle_write_strobe_0 <= cpu.io_memory_bundle_write_strobe_0 @[src/main/scala/riscv/core/CPU.scala 24:14]
    io_memory_bundle_write_strobe_1 <= cpu.io_memory_bundle_write_strobe_1 @[src/main/scala/riscv/core/CPU.scala 24:14]
    io_memory_bundle_write_strobe_2 <= cpu.io_memory_bundle_write_strobe_2 @[src/main/scala/riscv/core/CPU.scala 24:14]
    io_memory_bundle_write_strobe_3 <= cpu.io_memory_bundle_write_strobe_3 @[src/main/scala/riscv/core/CPU.scala 24:14]
    io_device_select <= cpu.io_device_select @[src/main/scala/riscv/core/CPU.scala 24:14]
    io_debug_read_data <= cpu.io_debug_read_data @[src/main/scala/riscv/core/CPU.scala 24:14]
    cpu.clock <= clock
    cpu.reset <= reset
    cpu.io_instruction <= io_instruction @[src/main/scala/riscv/core/CPU.scala 24:14]
    cpu.io_instruction_valid <= io_instruction_valid @[src/main/scala/riscv/core/CPU.scala 24:14]
    cpu.io_memory_bundle_read_data <= io_memory_bundle_read_data @[src/main/scala/riscv/core/CPU.scala 24:14]
    cpu.io_interrupt_flag <= io_interrupt_flag @[src/main/scala/riscv/core/CPU.scala 24:14]
    cpu.io_debug_read_address <= io_debug_read_address @[src/main/scala/riscv/core/CPU.scala 24:14]

  module TestTopModule :
    input clock : Clock
    input reset : UInt<1>
    input io_regs_debug_read_address : UInt<5> @[src/test/scala/riscv/TestTopModule.scala 10:14]
    input io_mem_debug_read_address : UInt<32> @[src/test/scala/riscv/TestTopModule.scala 10:14]
    output io_regs_debug_read_data : UInt<32> @[src/test/scala/riscv/TestTopModule.scala 10:14]
    output io_mem_debug_read_data : UInt<32> @[src/test/scala/riscv/TestTopModule.scala 10:14]

    inst mem of Memory @[src/test/scala/riscv/TestTopModule.scala 18:31]
    inst instruction_rom of InstructionROM @[src/test/scala/riscv/TestTopModule.scala 19:31]
    inst rom_loader of ROMLoader @[src/test/scala/riscv/TestTopModule.scala 20:31]
    inst cpu of CPU_1 @[src/test/scala/riscv/TestTopModule.scala 34:21]
    reg CPU_clkdiv : UInt<2>, clock with :
      reset => (UInt<1>("h0"), CPU_clkdiv) @[src/test/scala/riscv/TestTopModule.scala 26:27]
    node _CPU_next_T = eq(CPU_clkdiv, UInt<2>("h3")) @[src/test/scala/riscv/TestTopModule.scala 29:32]
    node _CPU_next_T_1 = add(CPU_clkdiv, UInt<1>("h1")) @[src/test/scala/riscv/TestTopModule.scala 29:57]
    node _CPU_next_T_2 = tail(_CPU_next_T_1, 1) @[src/test/scala/riscv/TestTopModule.scala 29:57]
    node _CPU_next_T_3 = mux(_CPU_next_T, UInt<1>("h0"), _CPU_next_T_2) @[src/test/scala/riscv/TestTopModule.scala 29:20]
    node _CPU_tick_T = eq(CPU_clkdiv, UInt<1>("h0")) @[src/test/scala/riscv/TestTopModule.scala 30:28]
    node CPU_tick = _CPU_tick_T @[src/test/scala/riscv/TestTopModule.scala 27:24 30:14]
    node _T = asClock(CPU_tick) @[src/test/scala/riscv/TestTopModule.scala 33:22]
    node _T_1 = eq(rom_loader.io_load_finished, UInt<1>("h0")) @[src/test/scala/riscv/TestTopModule.scala 41:10]
    node _GEN_0 = mux(_T_1, rom_loader.io_bundle_address, cpu.io_memory_bundle_address) @[src/test/scala/riscv/TestTopModule.scala 41:40 42:28 46:28]
    node _GEN_1 = mux(_T_1, rom_loader.io_bundle_write_data, cpu.io_memory_bundle_write_data) @[src/test/scala/riscv/TestTopModule.scala 41:40 42:28 46:28]
    node _GEN_2 = mux(_T_1, rom_loader.io_bundle_write_enable, cpu.io_memory_bundle_write_enable) @[src/test/scala/riscv/TestTopModule.scala 41:40 42:28 46:28]
    node _GEN_3 = mux(_T_1, rom_loader.io_bundle_write_strobe_0, cpu.io_memory_bundle_write_strobe_0) @[src/test/scala/riscv/TestTopModule.scala 41:40 42:28 46:28]
    node _GEN_4 = mux(_T_1, rom_loader.io_bundle_write_strobe_1, cpu.io_memory_bundle_write_strobe_1) @[src/test/scala/riscv/TestTopModule.scala 41:40 42:28 46:28]
    node _GEN_5 = mux(_T_1, rom_loader.io_bundle_write_strobe_2, cpu.io_memory_bundle_write_strobe_2) @[src/test/scala/riscv/TestTopModule.scala 41:40 42:28 46:28]
    node _GEN_6 = mux(_T_1, rom_loader.io_bundle_write_strobe_3, cpu.io_memory_bundle_write_strobe_3) @[src/test/scala/riscv/TestTopModule.scala 41:40 42:28 46:28]
    node _GEN_7 = mux(_T_1, mem.io_bundle_read_data, UInt<1>("h0")) @[src/test/scala/riscv/TestTopModule.scala 41:40 42:28 45:38]
    node _GEN_8 = mux(_T_1, UInt<1>("h0"), mem.io_bundle_read_data) @[src/test/scala/riscv/TestTopModule.scala 41:40 43:38 46:28]
    node CPU_next = _CPU_next_T_3 @[src/test/scala/riscv/TestTopModule.scala 28:24 29:14]
    io_regs_debug_read_data <= cpu.io_debug_read_data @[src/test/scala/riscv/TestTopModule.scala 50:31]
    io_mem_debug_read_data <= mem.io_debug_read_data @[src/test/scala/riscv/TestTopModule.scala 54:29]
    mem.clock <= clock
    mem.reset <= reset
    mem.io_bundle_address <= _GEN_0
    mem.io_bundle_write_data <= _GEN_1
    mem.io_bundle_write_enable <= _GEN_2
    mem.io_bundle_write_strobe_0 <= _GEN_3
    mem.io_bundle_write_strobe_1 <= _GEN_4
    mem.io_bundle_write_strobe_2 <= _GEN_5
    mem.io_bundle_write_strobe_3 <= _GEN_6
    mem.io_instruction_address <= cpu.io_instruction_address @[src/test/scala/riscv/TestTopModule.scala 37:32]
    mem.io_debug_read_address <= io_mem_debug_read_address @[src/test/scala/riscv/TestTopModule.scala 53:29]
    instruction_rom.clock <= clock
    instruction_rom.reset <= reset
    instruction_rom.io_address <= rom_loader.io_rom_address @[src/test/scala/riscv/TestTopModule.scala 24:30]
    rom_loader.clock <= clock
    rom_loader.reset <= reset
    rom_loader.io_bundle_read_data <= _GEN_7
    rom_loader.io_rom_data <= instruction_rom.io_data @[src/test/scala/riscv/TestTopModule.scala 22:30]
    rom_loader.io_load_address <= UInt<32>("h1000") @[src/test/scala/riscv/TestTopModule.scala 23:30]
    CPU_clkdiv <= mux(reset, UInt<1>("h0"), CPU_next) @[src/test/scala/riscv/TestTopModule.scala 26:{27,27} 31:14]
    cpu.clock <= _T
    cpu.reset <= reset
    cpu.io_instruction <= mem.io_instruction @[src/test/scala/riscv/TestTopModule.scala 38:32]
    cpu.io_instruction_valid <= rom_loader.io_load_finished @[src/test/scala/riscv/TestTopModule.scala 36:32]
    cpu.io_memory_bundle_read_data <= _GEN_8
    cpu.io_interrupt_flag <= UInt<32>("h0") @[src/test/scala/riscv/TestTopModule.scala 39:32]
    cpu.io_debug_read_address <= io_regs_debug_read_address @[src/test/scala/riscv/TestTopModule.scala 49:31]
