module Control(
  input   io_JumpFlag, // @[src/main/scala/riscv/core/threestage/Control.scala 6:14]
  output  io_Flush // @[src/main/scala/riscv/core/threestage/Control.scala 6:14]
);
  assign io_Flush = io_JumpFlag; // @[src/main/scala/riscv/core/threestage/Control.scala 10:12]
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
  input         io_jump_flag_ex, // @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 12:14]
  input  [31:0] io_jump_address_ex, // @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 12:14]
  input  [31:0] io_rom_instruction, // @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 12:14]
  input         io_instruction_valid, // @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 12:14]
  output [31:0] io_instruction_address, // @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 12:14]
  output [31:0] io_id_instruction // @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 12:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] pc; // @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 21:19]
  wire [31:0] _pc_T_1 = pc + 32'h4; // @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 27:35]
  assign io_instruction_address = pc; // @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 31:26]
  assign io_id_instruction = io_instruction_valid ? io_rom_instruction : 32'h13; // @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 32:32]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 21:19]
      pc <= 32'h1000; // @[src/main/scala/riscv/core/threestage/InstructionFetch.scala 21:19]
    end else if (io_jump_flag_ex) begin // @[src/main/scala/chisel3/util/Mux.scala 141:16]
      pc <= io_jump_address_ex;
    end else if (io_instruction_valid) begin // @[src/main/scala/chisel3/util/Mux.scala 141:16]
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
  input         io_flush, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  input  [31:0] io_in, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  output [31:0] io_out // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] out; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
  assign io_out = out; // @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
      out <= 32'h13; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    end else if (io_flush) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= 32'h13; // @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
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
  out = _RAND_0[31:0];
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
  input         io_flush, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  input  [31:0] io_in, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  output [31:0] io_out // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] out; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
  assign io_out = out; // @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
      out <= 32'h1000; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    end else if (io_flush) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= 32'h1000; // @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
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
  out = _RAND_0[31:0];
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
  input         io_flush, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  input  [31:0] io_in, // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
  output [31:0] io_out // @[src/main/scala/riscv/core/PipelineRegister.scala 7:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] out; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
  assign io_out = out; // @[src/main/scala/riscv/core/PipelineRegister.scala 26:10]
  always @(posedge clock) begin
    if (reset) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
      out <= 32'h0; // @[src/main/scala/riscv/core/PipelineRegister.scala 14:22]
    end else if (io_flush) begin // @[src/main/scala/riscv/core/PipelineRegister.scala 15:18]
      out <= 32'h0; // @[src/main/scala/riscv/core/PipelineRegister.scala 16:11]
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
  out = _RAND_0[31:0];
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
  input         io_flush, // @[src/main/scala/riscv/core/threestage/IF2ID.scala 8:14]
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/threestage/IF2ID.scala 8:14]
  input  [31:0] io_instruction_address, // @[src/main/scala/riscv/core/threestage/IF2ID.scala 8:14]
  input  [31:0] io_interrupt_flag, // @[src/main/scala/riscv/core/threestage/IF2ID.scala 8:14]
  output [31:0] io_output_instruction, // @[src/main/scala/riscv/core/threestage/IF2ID.scala 8:14]
  output [31:0] io_output_instruction_address, // @[src/main/scala/riscv/core/threestage/IF2ID.scala 8:14]
  output [31:0] io_output_interrupt_flag // @[src/main/scala/riscv/core/threestage/IF2ID.scala 8:14]
);
  wire  instruction_clock; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 21:27]
  wire  instruction_reset; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 21:27]
  wire  instruction_io_flush; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 21:27]
  wire [31:0] instruction_io_in; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 21:27]
  wire [31:0] instruction_io_out; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 21:27]
  wire  instruction_address_clock; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 27:35]
  wire  instruction_address_reset; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 27:35]
  wire  instruction_address_io_flush; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 27:35]
  wire [31:0] instruction_address_io_in; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 27:35]
  wire [31:0] instruction_address_io_out; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 27:35]
  wire  interrupt_flag_clock; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 33:30]
  wire  interrupt_flag_reset; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 33:30]
  wire  interrupt_flag_io_flush; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 33:30]
  wire [31:0] interrupt_flag_io_in; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 33:30]
  wire [31:0] interrupt_flag_io_out; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 33:30]
  PipelineRegister instruction ( // @[src/main/scala/riscv/core/threestage/IF2ID.scala 21:27]
    .clock(instruction_clock),
    .reset(instruction_reset),
    .io_flush(instruction_io_flush),
    .io_in(instruction_io_in),
    .io_out(instruction_io_out)
  );
  PipelineRegister_1 instruction_address ( // @[src/main/scala/riscv/core/threestage/IF2ID.scala 27:35]
    .clock(instruction_address_clock),
    .reset(instruction_address_reset),
    .io_flush(instruction_address_io_flush),
    .io_in(instruction_address_io_in),
    .io_out(instruction_address_io_out)
  );
  PipelineRegister_2 interrupt_flag ( // @[src/main/scala/riscv/core/threestage/IF2ID.scala 33:30]
    .clock(interrupt_flag_clock),
    .reset(interrupt_flag_reset),
    .io_flush(interrupt_flag_io_flush),
    .io_in(interrupt_flag_io_in),
    .io_out(interrupt_flag_io_out)
  );
  assign io_output_instruction = instruction_io_out; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 25:25]
  assign io_output_instruction_address = instruction_address_io_out; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 31:33]
  assign io_output_interrupt_flag = interrupt_flag_io_out; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 37:28]
  assign instruction_clock = clock;
  assign instruction_reset = reset;
  assign instruction_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 24:25]
  assign instruction_io_in = io_instruction; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 22:25]
  assign instruction_address_clock = clock;
  assign instruction_address_reset = reset;
  assign instruction_address_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 30:33]
  assign instruction_address_io_in = io_instruction_address; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 28:33]
  assign interrupt_flag_clock = clock;
  assign interrupt_flag_reset = reset;
  assign interrupt_flag_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 36:28]
  assign interrupt_flag_io_in = io_interrupt_flag; // @[src/main/scala/riscv/core/threestage/IF2ID.scala 34:28]
endmodule
module InstructionDecode(
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 122:14]
  output [4:0]  io_regs_reg1_read_address, // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 122:14]
  output [4:0]  io_regs_reg2_read_address, // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 122:14]
  output [31:0] io_ex_immediate, // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 122:14]
  output        io_ex_aluop1_source, // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 122:14]
  output        io_ex_aluop2_source, // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 122:14]
  output        io_ex_memory_read_enable, // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 122:14]
  output        io_ex_memory_write_enable, // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 122:14]
  output [1:0]  io_ex_reg_write_source, // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 122:14]
  output        io_ex_reg_write_enable, // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 122:14]
  output [4:0]  io_ex_reg_write_address, // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 122:14]
  output [11:0] io_ex_csr_address, // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 122:14]
  output        io_ex_csr_write_enable // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 122:14]
);
  wire [6:0] opcode = io_instruction[6:0]; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 138:30]
  wire [2:0] funct3 = io_instruction[14:12]; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 139:30]
  wire [4:0] rd = io_instruction[11:7]; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 141:30]
  wire [4:0] rs1 = io_instruction[19:15]; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 142:30]
  wire  _io_regs_reg1_read_address_T = opcode == 7'h37; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 145:43]
  wire [19:0] _io_ex_immediate_T_2 = io_instruction[31] ? 20'hfffff : 20'h0; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 149:13]
  wire [31:0] _io_ex_immediate_T_4 = {_io_ex_immediate_T_2,io_instruction[31:20]}; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 149:8]
  wire [20:0] _io_ex_immediate_T_7 = io_instruction[31] ? 21'h1fffff : 21'h0; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 151:37]
  wire [31:0] _io_ex_immediate_T_9 = {_io_ex_immediate_T_7,io_instruction[30:20]}; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 151:32]
  wire [31:0] _io_ex_immediate_T_25 = {_io_ex_immediate_T_7,io_instruction[30:25],rd}; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 154:32]
  wire [31:0] _io_ex_immediate_T_32 = {_io_ex_immediate_T_2,io_instruction[7],io_instruction[30:25],io_instruction[11:8]
    ,1'h0}; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 155:32]
  wire [31:0] _io_ex_immediate_T_34 = {io_instruction[31:12],12'h0}; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 162:32]
  wire [11:0] _io_ex_immediate_T_39 = io_instruction[31] ? 12'hfff : 12'h0; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 165:13]
  wire [31:0] _io_ex_immediate_T_43 = {_io_ex_immediate_T_39,io_instruction[19:12],io_instruction[20],io_instruction[30:
    21],1'h0}; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 164:30]
  wire [31:0] _io_ex_immediate_T_45 = 7'h13 == opcode ? _io_ex_immediate_T_9 : _io_ex_immediate_T_4; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_ex_immediate_T_47 = 7'h3 == opcode ? _io_ex_immediate_T_9 : _io_ex_immediate_T_45; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_ex_immediate_T_49 = 7'h67 == opcode ? _io_ex_immediate_T_9 : _io_ex_immediate_T_47; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_ex_immediate_T_51 = 7'h23 == opcode ? _io_ex_immediate_T_25 : _io_ex_immediate_T_49; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_ex_immediate_T_53 = 7'h63 == opcode ? _io_ex_immediate_T_32 : _io_ex_immediate_T_51; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_ex_immediate_T_55 = 7'h37 == opcode ? _io_ex_immediate_T_34 : _io_ex_immediate_T_53; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_ex_immediate_T_57 = 7'h17 == opcode ? _io_ex_immediate_T_34 : _io_ex_immediate_T_55; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_ex_aluop1_source_T = opcode == 7'h17; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 174:12]
  wire  _io_ex_aluop1_source_T_3 = opcode == 7'h6f; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 174:78]
  wire  _io_ex_aluop2_source_T = opcode == 7'h33; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 179:12]
  wire  _io_ex_memory_read_enable_T = opcode == 7'h3; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 183:39]
  wire [1:0] _io_ex_reg_write_source_T_1 = 7'h3 == opcode ? 2'h1 : 2'h0; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [1:0] _io_ex_reg_write_source_T_3 = 7'h73 == opcode ? 2'h2 : _io_ex_reg_write_source_T_1; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [1:0] _io_ex_reg_write_source_T_5 = 7'h6f == opcode ? 2'h3 : _io_ex_reg_write_source_T_3; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _io_ex_reg_write_enable_T_4 = _io_ex_aluop2_source_T | opcode == 7'h13 | _io_ex_memory_read_enable_T; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 195:97]
  wire  _io_ex_reg_write_enable_T_10 = _io_ex_reg_write_enable_T_4 | _io_ex_aluop1_source_T |
    _io_regs_reg1_read_address_T | _io_ex_aluop1_source_T_3; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 196:105]
  wire  _io_ex_reg_write_enable_T_13 = opcode == 7'h73; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 197:80]
  wire  _io_ex_csr_write_enable_T_4 = funct3 == 3'h2; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 202:14]
  wire  _io_ex_csr_write_enable_T_5 = funct3 == 3'h1 | funct3 == 3'h5 | _io_ex_csr_write_enable_T_4; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 201:83]
  wire  _io_ex_csr_write_enable_T_8 = funct3 == 3'h3; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 203:14]
  wire  _io_ex_csr_write_enable_T_9 = _io_ex_csr_write_enable_T_5 | funct3 == 3'h6 | _io_ex_csr_write_enable_T_8; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 202:85]
  wire  _io_ex_csr_write_enable_T_11 = _io_ex_csr_write_enable_T_9 | funct3 == 3'h7; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 203:44]
  assign io_regs_reg1_read_address = opcode == 7'h37 ? 5'h0 : rs1; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 145:35]
  assign io_regs_reg2_read_address = io_instruction[24:20]; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 143:30]
  assign io_ex_immediate = 7'h6f == opcode ? _io_ex_immediate_T_43 : _io_ex_immediate_T_57; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_ex_aluop1_source = opcode == 7'h17 | opcode == 7'h63 | opcode == 7'h6f; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 174:68]
  assign io_ex_aluop2_source = _io_ex_aluop2_source_T ? 1'h0 : 1'h1; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 178:29]
  assign io_ex_memory_read_enable = opcode == 7'h3; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 183:39]
  assign io_ex_memory_write_enable = opcode == 7'h23; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 184:39]
  assign io_ex_reg_write_source = 7'h67 == opcode ? 2'h3 : _io_ex_reg_write_source_T_5; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_ex_reg_write_enable = _io_ex_reg_write_enable_T_10 | opcode == 7'h67 | opcode == 7'h73; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 197:69]
  assign io_ex_reg_write_address = io_instruction[11:7]; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 141:30]
  assign io_ex_csr_address = io_instruction[31:20]; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 199:44]
  assign io_ex_csr_write_enable = _io_ex_reg_write_enable_T_13 & _io_ex_csr_write_enable_T_11; // @[src/main/scala/riscv/core/threestage/InstructionDecode.scala 200:59]
endmodule
module PipelineRegister_5(
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
module PipelineRegister_6(
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
module PipelineRegister_14(
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
  input         io_flush, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  input  [31:0] io_instruction_address, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  input         io_regs_write_enable, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  input  [4:0]  io_regs_write_address, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  input  [1:0]  io_regs_write_source, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  input  [31:0] io_reg1_data, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  input  [31:0] io_reg2_data, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  input  [31:0] io_immediate, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  input         io_aluop1_source, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  input         io_aluop2_source, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  input         io_csr_write_enable, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  input  [11:0] io_csr_address, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  input         io_memory_read_enable, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  input         io_memory_write_enable, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  input  [31:0] io_csr_read_data, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  output [31:0] io_output_instruction, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  output [31:0] io_output_instruction_address, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  output        io_output_regs_write_enable, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  output [4:0]  io_output_regs_write_address, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  output [1:0]  io_output_regs_write_source, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  output [31:0] io_output_reg1_data, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  output [31:0] io_output_reg2_data, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  output [31:0] io_output_immediate, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  output        io_output_aluop1_source, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  output        io_output_aluop2_source, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  output        io_output_csr_write_enable, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  output [11:0] io_output_csr_address, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  output        io_output_memory_read_enable, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  output        io_output_memory_write_enable, // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
  output [31:0] io_output_csr_read_data // @[src/main/scala/riscv/core/threestage/ID2EX.scala 8:14]
);
  wire  instruction_clock; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 45:27]
  wire  instruction_reset; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 45:27]
  wire  instruction_io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 45:27]
  wire [31:0] instruction_io_in; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 45:27]
  wire [31:0] instruction_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 45:27]
  wire  instruction_address_clock; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 51:35]
  wire  instruction_address_reset; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 51:35]
  wire  instruction_address_io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 51:35]
  wire [31:0] instruction_address_io_in; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 51:35]
  wire [31:0] instruction_address_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 51:35]
  wire  regs_write_enable_clock; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 57:33]
  wire  regs_write_enable_reset; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 57:33]
  wire  regs_write_enable_io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 57:33]
  wire  regs_write_enable_io_in; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 57:33]
  wire  regs_write_enable_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 57:33]
  wire  regs_write_address_clock; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 63:34]
  wire  regs_write_address_reset; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 63:34]
  wire  regs_write_address_io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 63:34]
  wire [4:0] regs_write_address_io_in; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 63:34]
  wire [4:0] regs_write_address_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 63:34]
  wire  regs_write_source_clock; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 69:33]
  wire  regs_write_source_reset; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 69:33]
  wire  regs_write_source_io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 69:33]
  wire [1:0] regs_write_source_io_in; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 69:33]
  wire [1:0] regs_write_source_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 69:33]
  wire  reg1_data_clock; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 75:25]
  wire  reg1_data_reset; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 75:25]
  wire  reg1_data_io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 75:25]
  wire [31:0] reg1_data_io_in; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 75:25]
  wire [31:0] reg1_data_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 75:25]
  wire  reg2_data_clock; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 81:25]
  wire  reg2_data_reset; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 81:25]
  wire  reg2_data_io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 81:25]
  wire [31:0] reg2_data_io_in; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 81:25]
  wire [31:0] reg2_data_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 81:25]
  wire  immediate_clock; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 87:25]
  wire  immediate_reset; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 87:25]
  wire  immediate_io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 87:25]
  wire [31:0] immediate_io_in; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 87:25]
  wire [31:0] immediate_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 87:25]
  wire  aluop1_source_clock; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 93:29]
  wire  aluop1_source_reset; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 93:29]
  wire  aluop1_source_io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 93:29]
  wire  aluop1_source_io_in; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 93:29]
  wire  aluop1_source_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 93:29]
  wire  aluop2_source_clock; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 99:29]
  wire  aluop2_source_reset; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 99:29]
  wire  aluop2_source_io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 99:29]
  wire  aluop2_source_io_in; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 99:29]
  wire  aluop2_source_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 99:29]
  wire  csr_write_enable_clock; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 105:32]
  wire  csr_write_enable_reset; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 105:32]
  wire  csr_write_enable_io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 105:32]
  wire  csr_write_enable_io_in; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 105:32]
  wire  csr_write_enable_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 105:32]
  wire  csr_address_clock; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 111:27]
  wire  csr_address_reset; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 111:27]
  wire  csr_address_io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 111:27]
  wire [11:0] csr_address_io_in; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 111:27]
  wire [11:0] csr_address_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 111:27]
  wire  memory_read_enable_clock; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 117:34]
  wire  memory_read_enable_reset; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 117:34]
  wire  memory_read_enable_io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 117:34]
  wire  memory_read_enable_io_in; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 117:34]
  wire  memory_read_enable_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 117:34]
  wire  memory_write_enable_clock; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 123:35]
  wire  memory_write_enable_reset; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 123:35]
  wire  memory_write_enable_io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 123:35]
  wire  memory_write_enable_io_in; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 123:35]
  wire  memory_write_enable_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 123:35]
  wire  csr_read_data_clock; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 129:29]
  wire  csr_read_data_reset; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 129:29]
  wire  csr_read_data_io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 129:29]
  wire [31:0] csr_read_data_io_in; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 129:29]
  wire [31:0] csr_read_data_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 129:29]
  PipelineRegister instruction ( // @[src/main/scala/riscv/core/threestage/ID2EX.scala 45:27]
    .clock(instruction_clock),
    .reset(instruction_reset),
    .io_flush(instruction_io_flush),
    .io_in(instruction_io_in),
    .io_out(instruction_io_out)
  );
  PipelineRegister_1 instruction_address ( // @[src/main/scala/riscv/core/threestage/ID2EX.scala 51:35]
    .clock(instruction_address_clock),
    .reset(instruction_address_reset),
    .io_flush(instruction_address_io_flush),
    .io_in(instruction_address_io_in),
    .io_out(instruction_address_io_out)
  );
  PipelineRegister_5 regs_write_enable ( // @[src/main/scala/riscv/core/threestage/ID2EX.scala 57:33]
    .clock(regs_write_enable_clock),
    .reset(regs_write_enable_reset),
    .io_flush(regs_write_enable_io_flush),
    .io_in(regs_write_enable_io_in),
    .io_out(regs_write_enable_io_out)
  );
  PipelineRegister_6 regs_write_address ( // @[src/main/scala/riscv/core/threestage/ID2EX.scala 63:34]
    .clock(regs_write_address_clock),
    .reset(regs_write_address_reset),
    .io_flush(regs_write_address_io_flush),
    .io_in(regs_write_address_io_in),
    .io_out(regs_write_address_io_out)
  );
  PipelineRegister_7 regs_write_source ( // @[src/main/scala/riscv/core/threestage/ID2EX.scala 69:33]
    .clock(regs_write_source_clock),
    .reset(regs_write_source_reset),
    .io_flush(regs_write_source_io_flush),
    .io_in(regs_write_source_io_in),
    .io_out(regs_write_source_io_out)
  );
  PipelineRegister_2 reg1_data ( // @[src/main/scala/riscv/core/threestage/ID2EX.scala 75:25]
    .clock(reg1_data_clock),
    .reset(reg1_data_reset),
    .io_flush(reg1_data_io_flush),
    .io_in(reg1_data_io_in),
    .io_out(reg1_data_io_out)
  );
  PipelineRegister_2 reg2_data ( // @[src/main/scala/riscv/core/threestage/ID2EX.scala 81:25]
    .clock(reg2_data_clock),
    .reset(reg2_data_reset),
    .io_flush(reg2_data_io_flush),
    .io_in(reg2_data_io_in),
    .io_out(reg2_data_io_out)
  );
  PipelineRegister_2 immediate ( // @[src/main/scala/riscv/core/threestage/ID2EX.scala 87:25]
    .clock(immediate_clock),
    .reset(immediate_reset),
    .io_flush(immediate_io_flush),
    .io_in(immediate_io_in),
    .io_out(immediate_io_out)
  );
  PipelineRegister_5 aluop1_source ( // @[src/main/scala/riscv/core/threestage/ID2EX.scala 93:29]
    .clock(aluop1_source_clock),
    .reset(aluop1_source_reset),
    .io_flush(aluop1_source_io_flush),
    .io_in(aluop1_source_io_in),
    .io_out(aluop1_source_io_out)
  );
  PipelineRegister_5 aluop2_source ( // @[src/main/scala/riscv/core/threestage/ID2EX.scala 99:29]
    .clock(aluop2_source_clock),
    .reset(aluop2_source_reset),
    .io_flush(aluop2_source_io_flush),
    .io_in(aluop2_source_io_in),
    .io_out(aluop2_source_io_out)
  );
  PipelineRegister_5 csr_write_enable ( // @[src/main/scala/riscv/core/threestage/ID2EX.scala 105:32]
    .clock(csr_write_enable_clock),
    .reset(csr_write_enable_reset),
    .io_flush(csr_write_enable_io_flush),
    .io_in(csr_write_enable_io_in),
    .io_out(csr_write_enable_io_out)
  );
  PipelineRegister_14 csr_address ( // @[src/main/scala/riscv/core/threestage/ID2EX.scala 111:27]
    .clock(csr_address_clock),
    .reset(csr_address_reset),
    .io_flush(csr_address_io_flush),
    .io_in(csr_address_io_in),
    .io_out(csr_address_io_out)
  );
  PipelineRegister_5 memory_read_enable ( // @[src/main/scala/riscv/core/threestage/ID2EX.scala 117:34]
    .clock(memory_read_enable_clock),
    .reset(memory_read_enable_reset),
    .io_flush(memory_read_enable_io_flush),
    .io_in(memory_read_enable_io_in),
    .io_out(memory_read_enable_io_out)
  );
  PipelineRegister_5 memory_write_enable ( // @[src/main/scala/riscv/core/threestage/ID2EX.scala 123:35]
    .clock(memory_write_enable_clock),
    .reset(memory_write_enable_reset),
    .io_flush(memory_write_enable_io_flush),
    .io_in(memory_write_enable_io_in),
    .io_out(memory_write_enable_io_out)
  );
  PipelineRegister_2 csr_read_data ( // @[src/main/scala/riscv/core/threestage/ID2EX.scala 129:29]
    .clock(csr_read_data_clock),
    .reset(csr_read_data_reset),
    .io_flush(csr_read_data_io_flush),
    .io_in(csr_read_data_io_in),
    .io_out(csr_read_data_io_out)
  );
  assign io_output_instruction = instruction_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 49:25]
  assign io_output_instruction_address = instruction_address_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 55:33]
  assign io_output_regs_write_enable = regs_write_enable_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 61:31]
  assign io_output_regs_write_address = regs_write_address_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 67:32]
  assign io_output_regs_write_source = regs_write_source_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 73:31]
  assign io_output_reg1_data = reg1_data_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 79:23]
  assign io_output_reg2_data = reg2_data_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 85:23]
  assign io_output_immediate = immediate_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 91:23]
  assign io_output_aluop1_source = aluop1_source_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 97:27]
  assign io_output_aluop2_source = aluop2_source_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 103:27]
  assign io_output_csr_write_enable = csr_write_enable_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 109:30]
  assign io_output_csr_address = csr_address_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 115:25]
  assign io_output_memory_read_enable = memory_read_enable_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 121:32]
  assign io_output_memory_write_enable = memory_write_enable_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 127:33]
  assign io_output_csr_read_data = csr_read_data_io_out; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 133:27]
  assign instruction_clock = clock;
  assign instruction_reset = reset;
  assign instruction_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 48:25]
  assign instruction_io_in = io_instruction; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 46:25]
  assign instruction_address_clock = clock;
  assign instruction_address_reset = reset;
  assign instruction_address_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 54:33]
  assign instruction_address_io_in = io_instruction_address; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 52:33]
  assign regs_write_enable_clock = clock;
  assign regs_write_enable_reset = reset;
  assign regs_write_enable_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 60:31]
  assign regs_write_enable_io_in = io_regs_write_enable; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 58:31]
  assign regs_write_address_clock = clock;
  assign regs_write_address_reset = reset;
  assign regs_write_address_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 66:32]
  assign regs_write_address_io_in = io_regs_write_address; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 64:32]
  assign regs_write_source_clock = clock;
  assign regs_write_source_reset = reset;
  assign regs_write_source_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 72:31]
  assign regs_write_source_io_in = io_regs_write_source; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 70:31]
  assign reg1_data_clock = clock;
  assign reg1_data_reset = reset;
  assign reg1_data_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 78:23]
  assign reg1_data_io_in = io_reg1_data; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 76:23]
  assign reg2_data_clock = clock;
  assign reg2_data_reset = reset;
  assign reg2_data_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 84:23]
  assign reg2_data_io_in = io_reg2_data; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 82:23]
  assign immediate_clock = clock;
  assign immediate_reset = reset;
  assign immediate_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 90:23]
  assign immediate_io_in = io_immediate; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 88:23]
  assign aluop1_source_clock = clock;
  assign aluop1_source_reset = reset;
  assign aluop1_source_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 96:27]
  assign aluop1_source_io_in = io_aluop1_source; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 94:27]
  assign aluop2_source_clock = clock;
  assign aluop2_source_reset = reset;
  assign aluop2_source_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 102:27]
  assign aluop2_source_io_in = io_aluop2_source; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 100:27]
  assign csr_write_enable_clock = clock;
  assign csr_write_enable_reset = reset;
  assign csr_write_enable_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 108:30]
  assign csr_write_enable_io_in = io_csr_write_enable; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 106:30]
  assign csr_address_clock = clock;
  assign csr_address_reset = reset;
  assign csr_address_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 114:25]
  assign csr_address_io_in = io_csr_address; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 112:25]
  assign memory_read_enable_clock = clock;
  assign memory_read_enable_reset = reset;
  assign memory_read_enable_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 120:32]
  assign memory_read_enable_io_in = io_memory_read_enable; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 118:32]
  assign memory_write_enable_clock = clock;
  assign memory_write_enable_reset = reset;
  assign memory_write_enable_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 126:33]
  assign memory_write_enable_io_in = io_memory_write_enable; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 124:33]
  assign csr_read_data_clock = clock;
  assign csr_read_data_reset = reset;
  assign csr_read_data_io_flush = io_flush; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 132:27]
  assign csr_read_data_io_in = io_csr_read_data; // @[src/main/scala/riscv/core/threestage/ID2EX.scala 130:27]
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
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  input  [31:0] io_instruction_address, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  input  [31:0] io_reg1_data, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  input  [31:0] io_reg2_data, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  input  [31:0] io_csr_read_data, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  input  [31:0] io_immediate_id, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  input         io_aluop1_source_id, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  input         io_aluop2_source_id, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  input         io_memory_read_enable_id, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  input         io_memory_write_enable_id, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  input  [1:0]  io_regs_write_source_id, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  input         io_interrupt_assert_clint, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  input  [31:0] io_interrupt_handler_address_clint, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  output [31:0] io_memory_bundle_address, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  output [31:0] io_memory_bundle_write_data, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  output        io_memory_bundle_write_enable, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  output        io_memory_bundle_write_strobe_0, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  output        io_memory_bundle_write_strobe_1, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  output        io_memory_bundle_write_strobe_2, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  output        io_memory_bundle_write_strobe_3, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  input  [31:0] io_memory_bundle_read_data, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  output [31:0] io_csr_write_data, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  output [31:0] io_regs_write_data, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  output        io_if_jump_flag, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  output [31:0] io_if_jump_address, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  output        io_clint_jump_flag, // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
  output [31:0] io_clint_jump_address // @[src/main/scala/riscv/core/threestage/Execute.scala 11:14]
);
  wire [4:0] alu_io_func; // @[src/main/scala/riscv/core/threestage/Execute.scala 42:24]
  wire [31:0] alu_io_op1; // @[src/main/scala/riscv/core/threestage/Execute.scala 42:24]
  wire [31:0] alu_io_op2; // @[src/main/scala/riscv/core/threestage/Execute.scala 42:24]
  wire [31:0] alu_io_result; // @[src/main/scala/riscv/core/threestage/Execute.scala 42:24]
  wire [6:0] alu_ctrl_io_opcode; // @[src/main/scala/riscv/core/threestage/Execute.scala 43:24]
  wire [2:0] alu_ctrl_io_funct3; // @[src/main/scala/riscv/core/threestage/Execute.scala 43:24]
  wire [6:0] alu_ctrl_io_funct7; // @[src/main/scala/riscv/core/threestage/Execute.scala 43:24]
  wire [4:0] alu_ctrl_io_alu_funct; // @[src/main/scala/riscv/core/threestage/Execute.scala 43:24]
  wire [6:0] opcode = io_instruction[6:0]; // @[src/main/scala/riscv/core/threestage/Execute.scala 36:30]
  wire [2:0] funct3 = io_instruction[14:12]; // @[src/main/scala/riscv/core/threestage/Execute.scala 37:30]
  wire [4:0] uimm = io_instruction[19:15]; // @[src/main/scala/riscv/core/threestage/Execute.scala 39:30]
  wire [31:0] _io_csr_write_data_T = ~io_reg1_data; // @[src/main/scala/riscv/core/threestage/Execute.scala 64:58]
  wire [31:0] _io_csr_write_data_T_1 = io_csr_read_data & _io_csr_write_data_T; // @[src/main/scala/riscv/core/threestage/Execute.scala 64:55]
  wire [31:0] _io_csr_write_data_T_2 = io_csr_read_data | io_reg1_data; // @[src/main/scala/riscv/core/threestage/Execute.scala 65:55]
  wire [31:0] _io_csr_write_data_T_3 = {27'h0,uimm}; // @[src/main/scala/riscv/core/threestage/Execute.scala 66:48]
  wire [31:0] _io_csr_write_data_T_5 = ~_io_csr_write_data_T_3; // @[src/main/scala/riscv/core/threestage/Execute.scala 67:58]
  wire [31:0] _io_csr_write_data_T_6 = io_csr_read_data & _io_csr_write_data_T_5; // @[src/main/scala/riscv/core/threestage/Execute.scala 67:55]
  wire [31:0] _io_csr_write_data_T_8 = io_csr_read_data | _io_csr_write_data_T_3; // @[src/main/scala/riscv/core/threestage/Execute.scala 68:55]
  wire [31:0] _io_csr_write_data_T_10 = 3'h1 == funct3 ? io_reg1_data : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_csr_write_data_T_12 = 3'h3 == funct3 ? _io_csr_write_data_T_1 : _io_csr_write_data_T_10; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_csr_write_data_T_14 = 3'h2 == funct3 ? _io_csr_write_data_T_2 : _io_csr_write_data_T_12; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_csr_write_data_T_16 = 3'h5 == funct3 ? _io_csr_write_data_T_3 : _io_csr_write_data_T_14; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_csr_write_data_T_18 = 3'h7 == funct3 ? _io_csr_write_data_T_6 : _io_csr_write_data_T_16; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [1:0] mem_address_index = alu_io_result[1:0]; // @[src/main/scala/riscv/core/threestage/Execute.scala 73:40]
  wire [23:0] _mem_read_data_T_2 = io_memory_bundle_read_data[31] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/threestage/Execute.scala 89:19]
  wire [31:0] _mem_read_data_T_4 = {_mem_read_data_T_2,io_memory_bundle_read_data[31:24]}; // @[src/main/scala/riscv/core/threestage/Execute.scala 89:14]
  wire [23:0] _mem_read_data_T_7 = io_memory_bundle_read_data[7] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/threestage/Execute.scala 91:28]
  wire [31:0] _mem_read_data_T_9 = {_mem_read_data_T_7,io_memory_bundle_read_data[7:0]}; // @[src/main/scala/riscv/core/threestage/Execute.scala 91:23]
  wire [23:0] _mem_read_data_T_12 = io_memory_bundle_read_data[15] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/threestage/Execute.scala 92:28]
  wire [31:0] _mem_read_data_T_14 = {_mem_read_data_T_12,io_memory_bundle_read_data[15:8]}; // @[src/main/scala/riscv/core/threestage/Execute.scala 92:23]
  wire [23:0] _mem_read_data_T_17 = io_memory_bundle_read_data[23] ? 24'hffffff : 24'h0; // @[src/main/scala/riscv/core/threestage/Execute.scala 93:28]
  wire [31:0] _mem_read_data_T_19 = {_mem_read_data_T_17,io_memory_bundle_read_data[23:16]}; // @[src/main/scala/riscv/core/threestage/Execute.scala 93:23]
  wire  _mem_read_data_T_20 = 2'h0 == mem_address_index; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _mem_read_data_T_21 = 2'h0 == mem_address_index ? _mem_read_data_T_9 : _mem_read_data_T_4; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _mem_read_data_T_22 = 2'h1 == mem_address_index; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _mem_read_data_T_23 = 2'h1 == mem_address_index ? _mem_read_data_T_14 : _mem_read_data_T_21; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _mem_read_data_T_24 = 2'h2 == mem_address_index; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _mem_read_data_T_25 = 2'h2 == mem_address_index ? _mem_read_data_T_19 : _mem_read_data_T_23; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _mem_read_data_T_28 = {24'h0,io_memory_bundle_read_data[31:24]}; // @[src/main/scala/riscv/core/threestage/Execute.scala 98:14]
  wire [31:0] _mem_read_data_T_31 = {24'h0,io_memory_bundle_read_data[7:0]}; // @[src/main/scala/riscv/core/threestage/Execute.scala 100:23]
  wire [31:0] _mem_read_data_T_34 = {24'h0,io_memory_bundle_read_data[15:8]}; // @[src/main/scala/riscv/core/threestage/Execute.scala 101:23]
  wire [31:0] _mem_read_data_T_37 = {24'h0,io_memory_bundle_read_data[23:16]}; // @[src/main/scala/riscv/core/threestage/Execute.scala 102:23]
  wire [31:0] _mem_read_data_T_39 = 2'h0 == mem_address_index ? _mem_read_data_T_31 : _mem_read_data_T_28; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _mem_read_data_T_41 = 2'h1 == mem_address_index ? _mem_read_data_T_34 : _mem_read_data_T_39; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _mem_read_data_T_43 = 2'h2 == mem_address_index ? _mem_read_data_T_37 : _mem_read_data_T_41; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _mem_read_data_T_44 = mem_address_index == 2'h0; // @[src/main/scala/riscv/core/threestage/Execute.scala 106:29]
  wire [15:0] _mem_read_data_T_47 = io_memory_bundle_read_data[15] ? 16'hffff : 16'h0; // @[src/main/scala/riscv/core/threestage/Execute.scala 107:19]
  wire [31:0] _mem_read_data_T_49 = {_mem_read_data_T_47,io_memory_bundle_read_data[15:0]}; // @[src/main/scala/riscv/core/threestage/Execute.scala 107:14]
  wire [15:0] _mem_read_data_T_52 = io_memory_bundle_read_data[31] ? 16'hffff : 16'h0; // @[src/main/scala/riscv/core/threestage/Execute.scala 108:19]
  wire [31:0] _mem_read_data_T_54 = {_mem_read_data_T_52,io_memory_bundle_read_data[31:16]}; // @[src/main/scala/riscv/core/threestage/Execute.scala 108:14]
  wire [31:0] _mem_read_data_T_55 = _mem_read_data_T_44 ? _mem_read_data_T_49 : _mem_read_data_T_54; // @[src/main/scala/riscv/core/threestage/Execute.scala 105:36]
  wire [31:0] _mem_read_data_T_59 = {16'h0,io_memory_bundle_read_data[15:0]}; // @[src/main/scala/riscv/core/threestage/Execute.scala 112:14]
  wire [31:0] _mem_read_data_T_62 = {16'h0,io_memory_bundle_read_data[31:16]}; // @[src/main/scala/riscv/core/threestage/Execute.scala 113:14]
  wire [31:0] _mem_read_data_T_63 = _mem_read_data_T_44 ? _mem_read_data_T_59 : _mem_read_data_T_62; // @[src/main/scala/riscv/core/threestage/Execute.scala 110:37]
  wire [31:0] _mem_read_data_T_65 = 3'h0 == funct3 ? _mem_read_data_T_25 : 32'h0; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _mem_read_data_T_67 = 3'h4 == funct3 ? _mem_read_data_T_43 : _mem_read_data_T_65; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _mem_read_data_T_69 = 3'h1 == funct3 ? _mem_read_data_T_55 : _mem_read_data_T_67; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _mem_read_data_T_71 = 3'h5 == funct3 ? _mem_read_data_T_63 : _mem_read_data_T_69; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _mem_read_data_T_73 = 3'h2 == funct3 ? io_memory_bundle_read_data : _mem_read_data_T_71; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _GEN_3 = 2'h3 == mem_address_index; // @[src/main/scala/riscv/core/threestage/Execute.scala 120:35 122:{56,56}]
  wire [4:0] _io_memory_bundle_write_data_T_1 = {mem_address_index, 3'h0}; // @[src/main/scala/riscv/core/threestage/Execute.scala 123:97]
  wire [39:0] _GEN_0 = {{31'd0}, io_reg2_data[8:0]}; // @[src/main/scala/riscv/core/threestage/Execute.scala 123:75]
  wire [39:0] _io_memory_bundle_write_data_T_2 = _GEN_0 << _io_memory_bundle_write_data_T_1; // @[src/main/scala/riscv/core/threestage/Execute.scala 123:75]
  wire [32:0] _io_memory_bundle_write_data_T_5 = {io_reg2_data[16:0], 16'h0}; // @[src/main/scala/riscv/core/threestage/Execute.scala 139:11]
  wire [32:0] _GEN_6 = _mem_read_data_T_44 ? {{16'd0}, io_reg2_data[16:0]} : _io_memory_bundle_write_data_T_5; // @[src/main/scala/riscv/core/threestage/Execute.scala 127:39 131:37 136:37]
  wire  _GEN_7 = _mem_read_data_T_44 ? 1'h0 : 1'h1; // @[src/main/scala/riscv/core/threestage/Execute.scala 120:35 127:39 134:44]
  wire  _T_3 = funct3 == 3'h2; // @[src/main/scala/riscv/core/threestage/Execute.scala 141:23]
  wire  _GEN_13 = funct3 == 3'h1 ? _mem_read_data_T_44 : _T_3; // @[src/main/scala/riscv/core/threestage/Execute.scala 126:49]
  wire [32:0] _GEN_15 = funct3 == 3'h1 ? _GEN_6 : {{1'd0}, io_reg2_data}; // @[src/main/scala/riscv/core/threestage/Execute.scala 119:35 126:49]
  wire  _GEN_16 = funct3 == 3'h1 ? _GEN_7 : _T_3; // @[src/main/scala/riscv/core/threestage/Execute.scala 126:49]
  wire  _GEN_18 = funct3 == 3'h0 ? _mem_read_data_T_20 : _GEN_13; // @[src/main/scala/riscv/core/threestage/Execute.scala 121:43]
  wire  _GEN_19 = funct3 == 3'h0 ? _mem_read_data_T_22 : _GEN_13; // @[src/main/scala/riscv/core/threestage/Execute.scala 121:43]
  wire  _GEN_20 = funct3 == 3'h0 ? _mem_read_data_T_24 : _GEN_16; // @[src/main/scala/riscv/core/threestage/Execute.scala 121:43]
  wire  _GEN_21 = funct3 == 3'h0 ? _GEN_3 : _GEN_16; // @[src/main/scala/riscv/core/threestage/Execute.scala 121:43]
  wire [39:0] _GEN_22 = funct3 == 3'h0 ? _io_memory_bundle_write_data_T_2 : {{7'd0}, _GEN_15}; // @[src/main/scala/riscv/core/threestage/Execute.scala 121:43 123:35]
  wire [39:0] _GEN_23 = io_memory_write_enable_id ? _GEN_22 : 40'h0; // @[src/main/scala/riscv/core/threestage/Execute.scala 118:41 76:33]
  wire  _GEN_24 = io_memory_write_enable_id & _GEN_18; // @[src/main/scala/riscv/core/threestage/Execute.scala 118:41 78:33]
  wire  _GEN_25 = io_memory_write_enable_id & _GEN_19; // @[src/main/scala/riscv/core/threestage/Execute.scala 118:41 78:33]
  wire  _GEN_26 = io_memory_write_enable_id & _GEN_20; // @[src/main/scala/riscv/core/threestage/Execute.scala 118:41 78:33]
  wire  _GEN_27 = io_memory_write_enable_id & _GEN_21; // @[src/main/scala/riscv/core/threestage/Execute.scala 118:41 78:33]
  wire [31:0] mem_read_data = io_memory_read_enable_id ? _mem_read_data_T_73 : 32'h0; // @[src/main/scala/riscv/core/threestage/Execute.scala 81:34 83:19 79:33]
  wire [39:0] _GEN_29 = io_memory_read_enable_id ? 40'h0 : _GEN_23; // @[src/main/scala/riscv/core/threestage/Execute.scala 76:33 81:34]
  wire [31:0] _io_regs_write_data_T_1 = io_instruction_address + 32'h4; // @[src/main/scala/riscv/core/threestage/Execute.scala 155:72]
  wire [31:0] _io_regs_write_data_T_3 = 2'h1 == io_regs_write_source_id ? mem_read_data : alu_io_result; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_regs_write_data_T_5 = 2'h2 == io_regs_write_source_id ? io_csr_read_data : _io_regs_write_data_T_3; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _instruction_jump_flag_T_1 = opcode == 7'h67; // @[src/main/scala/riscv/core/threestage/Execute.scala 161:13]
  wire  _instruction_jump_flag_T_2 = opcode == 7'h6f | _instruction_jump_flag_T_1; // @[src/main/scala/riscv/core/threestage/Execute.scala 160:61]
  wire  _instruction_jump_flag_T_4 = io_reg1_data == io_reg2_data; // @[src/main/scala/riscv/core/threestage/Execute.scala 166:49]
  wire  _instruction_jump_flag_T_5 = io_reg1_data != io_reg2_data; // @[src/main/scala/riscv/core/threestage/Execute.scala 167:49]
  wire  _instruction_jump_flag_T_8 = $signed(io_reg1_data) < $signed(io_reg2_data); // @[src/main/scala/riscv/core/threestage/Execute.scala 168:56]
  wire  _instruction_jump_flag_T_11 = $signed(io_reg1_data) >= $signed(io_reg2_data); // @[src/main/scala/riscv/core/threestage/Execute.scala 169:56]
  wire  _instruction_jump_flag_T_12 = io_reg1_data < io_reg2_data; // @[src/main/scala/riscv/core/threestage/Execute.scala 170:56]
  wire  _instruction_jump_flag_T_13 = io_reg1_data >= io_reg2_data; // @[src/main/scala/riscv/core/threestage/Execute.scala 171:56]
  wire  _instruction_jump_flag_T_17 = 3'h1 == funct3 ? _instruction_jump_flag_T_5 : 3'h0 == funct3 &
    _instruction_jump_flag_T_4; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _instruction_jump_flag_T_19 = 3'h4 == funct3 ? _instruction_jump_flag_T_8 : _instruction_jump_flag_T_17; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _instruction_jump_flag_T_21 = 3'h5 == funct3 ? _instruction_jump_flag_T_11 : _instruction_jump_flag_T_19; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _instruction_jump_flag_T_23 = 3'h6 == funct3 ? _instruction_jump_flag_T_12 : _instruction_jump_flag_T_21; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _instruction_jump_flag_T_25 = 3'h7 == funct3 ? _instruction_jump_flag_T_13 : _instruction_jump_flag_T_23; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire  _instruction_jump_flag_T_26 = opcode == 7'h63 & _instruction_jump_flag_T_25; // @[src/main/scala/riscv/core/threestage/Execute.scala 162:37]
  wire  instruction_jump_flag = _instruction_jump_flag_T_2 | _instruction_jump_flag_T_26; // @[src/main/scala/riscv/core/threestage/Execute.scala 161:36]
  ALU alu ( // @[src/main/scala/riscv/core/threestage/Execute.scala 42:24]
    .io_func(alu_io_func),
    .io_op1(alu_io_op1),
    .io_op2(alu_io_op2),
    .io_result(alu_io_result)
  );
  ALUControl alu_ctrl ( // @[src/main/scala/riscv/core/threestage/Execute.scala 43:24]
    .io_opcode(alu_ctrl_io_opcode),
    .io_funct3(alu_ctrl_io_funct3),
    .io_funct7(alu_ctrl_io_funct7),
    .io_alu_funct(alu_ctrl_io_alu_funct)
  );
  assign io_memory_bundle_address = alu_io_result; // @[src/main/scala/riscv/core/threestage/Execute.scala 77:33]
  assign io_memory_bundle_write_data = _GEN_29[31:0];
  assign io_memory_bundle_write_enable = io_memory_write_enable_id; // @[src/main/scala/riscv/core/threestage/Execute.scala 75:33]
  assign io_memory_bundle_write_strobe_0 = io_memory_read_enable_id ? 1'h0 : _GEN_24; // @[src/main/scala/riscv/core/threestage/Execute.scala 78:33 81:34]
  assign io_memory_bundle_write_strobe_1 = io_memory_read_enable_id ? 1'h0 : _GEN_25; // @[src/main/scala/riscv/core/threestage/Execute.scala 78:33 81:34]
  assign io_memory_bundle_write_strobe_2 = io_memory_read_enable_id ? 1'h0 : _GEN_26; // @[src/main/scala/riscv/core/threestage/Execute.scala 78:33 81:34]
  assign io_memory_bundle_write_strobe_3 = io_memory_read_enable_id ? 1'h0 : _GEN_27; // @[src/main/scala/riscv/core/threestage/Execute.scala 78:33 81:34]
  assign io_csr_write_data = 3'h6 == funct3 ? _io_csr_write_data_T_8 : _io_csr_write_data_T_18; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_regs_write_data = 2'h3 == io_regs_write_source_id ? _io_regs_write_data_T_1 : _io_regs_write_data_T_5; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_if_jump_flag = io_interrupt_assert_clint | instruction_jump_flag; // @[src/main/scala/riscv/core/threestage/Execute.scala 176:54]
  assign io_if_jump_address = io_interrupt_assert_clint ? io_interrupt_handler_address_clint : alu_io_result; // @[src/main/scala/riscv/core/threestage/Execute.scala 177:31]
  assign io_clint_jump_flag = _instruction_jump_flag_T_2 | _instruction_jump_flag_T_26; // @[src/main/scala/riscv/core/threestage/Execute.scala 161:36]
  assign io_clint_jump_address = alu_io_result; // @[src/main/scala/riscv/core/threestage/Execute.scala 175:25]
  assign alu_io_func = alu_ctrl_io_alu_funct; // @[src/main/scala/riscv/core/threestage/Execute.scala 48:22]
  assign alu_io_op1 = io_aluop1_source_id ? io_instruction_address : io_reg1_data; // @[src/main/scala/riscv/core/threestage/Execute.scala 49:20]
  assign alu_io_op2 = io_aluop2_source_id ? io_immediate_id : io_reg2_data; // @[src/main/scala/riscv/core/threestage/Execute.scala 54:20]
  assign alu_ctrl_io_opcode = io_instruction[6:0]; // @[src/main/scala/riscv/core/threestage/Execute.scala 36:30]
  assign alu_ctrl_io_funct3 = io_instruction[14:12]; // @[src/main/scala/riscv/core/threestage/Execute.scala 37:30]
  assign alu_ctrl_io_funct7 = io_instruction[31:25]; // @[src/main/scala/riscv/core/threestage/Execute.scala 38:30]
endmodule
module CLINT(
  input         clock,
  input  [31:0] io_interrupt_flag, // @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]
  input  [31:0] io_instruction_ex, // @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]
  input  [31:0] io_instruction_address_if, // @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]
  input  [31:0] io_instruction_address_id, // @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]
  input         io_jump_flag, // @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]
  input  [31:0] io_jump_address, // @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]
  output [31:0] io_ex_interrupt_handler_address, // @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]
  output        io_ex_interrupt_assert, // @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]
  input  [31:0] io_csr_bundle_mstatus, // @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]
  input  [31:0] io_csr_bundle_mepc, // @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]
  input  [31:0] io_csr_bundle_mtvec, // @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]
  output [31:0] io_csr_bundle_mstatus_write_data, // @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]
  output [31:0] io_csr_bundle_mepc_write_data, // @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]
  output [31:0] io_csr_bundle_mcause_write_data, // @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]
  output        io_csr_bundle_direct_write_enable // @[src/main/scala/riscv/core/threestage/CLINT.scala 28:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  interrupt_enable = io_csr_bundle_mstatus[3]; // @[src/main/scala/riscv/core/threestage/CLINT.scala 43:47]
  reg  jumpping; // @[src/main/scala/riscv/core/threestage/CLINT.scala 44:33]
  wire [31:0] _instruction_address_T = jumpping ? io_instruction_address_if : io_instruction_address_id; // @[src/main/scala/riscv/core/threestage/CLINT.scala 48:8]
  wire [31:0] mstatus_disable_interrupt = {io_csr_bundle_mstatus[31:4],1'h0,io_csr_bundle_mstatus[2:0]}; // @[src/main/scala/riscv/core/threestage/CLINT.scala 50:76]
  wire [31:0] mstatus_recover_interrupt = {io_csr_bundle_mstatus[31:4],io_csr_bundle_mstatus[7],io_csr_bundle_mstatus[2:
    0]}; // @[src/main/scala/riscv/core/threestage/CLINT.scala 52:62]
  wire  exception = io_instruction_ex == 32'h73 | io_instruction_ex == 32'h100073; // @[src/main/scala/riscv/core/threestage/CLINT.scala 53:70]
  wire  interrupt = io_interrupt_flag != 32'h0 & interrupt_enable; // @[src/main/scala/riscv/core/threestage/CLINT.scala 54:69]
  wire  mret = io_instruction_ex == 32'h30200073; // @[src/main/scala/riscv/core/threestage/CLINT.scala 55:44]
  wire [3:0] _io_csr_bundle_mcause_write_data_T_1 = 32'h73 == io_instruction_ex ? 4'hb : 4'ha; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [3:0] _io_csr_bundle_mcause_write_data_T_3 = 32'h100073 == io_instruction_ex ? 4'h3 :
    _io_csr_bundle_mcause_write_data_T_1; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  wire [31:0] _io_csr_bundle_mcause_write_data_T_5 = io_interrupt_flag[0] ? 32'h80000007 : 32'h8000000b; // @[src/main/scala/riscv/core/threestage/CLINT.scala 70:8]
  assign io_ex_interrupt_handler_address = mret ? io_csr_bundle_mepc : io_csr_bundle_mtvec; // @[src/main/scala/riscv/core/threestage/CLINT.scala 74:43]
  assign io_ex_interrupt_assert = exception | interrupt | mret; // @[src/main/scala/riscv/core/threestage/CLINT.scala 56:49]
  assign io_csr_bundle_mstatus_write_data = mret ? mstatus_recover_interrupt : mstatus_disable_interrupt; // @[src/main/scala/riscv/core/threestage/CLINT.scala 58:42]
  assign io_csr_bundle_mepc_write_data = io_jump_flag ? io_jump_address : _instruction_address_T; // @[src/main/scala/riscv/core/threestage/CLINT.scala 45:32]
  assign io_csr_bundle_mcause_write_data = exception ? {{28'd0}, _io_csr_bundle_mcause_write_data_T_3} :
    _io_csr_bundle_mcause_write_data_T_5; // @[src/main/scala/riscv/core/threestage/CLINT.scala 60:41]
  assign io_csr_bundle_direct_write_enable = exception | interrupt | mret; // @[src/main/scala/riscv/core/threestage/CLINT.scala 56:49]
  always @(posedge clock) begin
    jumpping <= io_jump_flag | io_ex_interrupt_assert; // @[src/main/scala/riscv/core/threestage/CLINT.scala 44:47]
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
  wire  _io_clint_access_bundle_mepc_T = io_reg_write_address_ex == 12'h341; // @[src/main/scala/riscv/core/CSR.scala 72:55]
  wire  _io_clint_access_bundle_mepc_T_1 = io_reg_write_enable_ex & io_reg_write_address_ex == 12'h341; // @[src/main/scala/riscv/core/CSR.scala 72:28]
  wire [31:0] _GEN_0 = _io_clint_access_bundle_mcause_T ? io_reg_write_data_ex : mcause; // @[src/main/scala/riscv/core/CSR.scala 86:64 87:14 37:25]
  wire [31:0] _GEN_1 = _io_clint_access_bundle_mepc_T ? io_reg_write_data_ex : mepc; // @[src/main/scala/riscv/core/CSR.scala 84:62 85:12 36:25]
  wire [31:0] _GEN_2 = _io_clint_access_bundle_mepc_T ? mcause : _GEN_0; // @[src/main/scala/riscv/core/CSR.scala 37:25 84:62]
  wire [31:0] _GEN_12 = io_reg_write_address_ex == 12'h340 ? io_reg_write_data_ex : mscratch; // @[src/main/scala/riscv/core/CSR.scala 96:66 97:16 35:25]
  assign io_id_reg_read_data = 12'hc80 == io_reg_read_address_id ? cycles[63:32] : _io_id_reg_read_data_T_13; // @[src/main/scala/chisel3/util/Mux.scala 77:13]
  assign io_clint_access_bundle_mstatus = _io_clint_access_bundle_mstatus_T_1 ? io_reg_write_data_ex : mstatus; // @[src/main/scala/riscv/core/CSR.scala 56:40]
  assign io_clint_access_bundle_mepc = _io_clint_access_bundle_mepc_T_1 ? io_reg_write_data_ex : mepc; // @[src/main/scala/riscv/core/CSR.scala 71:37]
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
  output [31:0] io_instruction_address, // @[src/main/scala/riscv/core/threestage/CPU.scala 10:14]
  input  [31:0] io_instruction, // @[src/main/scala/riscv/core/threestage/CPU.scala 10:14]
  input         io_instruction_valid, // @[src/main/scala/riscv/core/threestage/CPU.scala 10:14]
  output [31:0] io_memory_bundle_address, // @[src/main/scala/riscv/core/threestage/CPU.scala 10:14]
  output [31:0] io_memory_bundle_write_data, // @[src/main/scala/riscv/core/threestage/CPU.scala 10:14]
  output        io_memory_bundle_write_enable, // @[src/main/scala/riscv/core/threestage/CPU.scala 10:14]
  output        io_memory_bundle_write_strobe_0, // @[src/main/scala/riscv/core/threestage/CPU.scala 10:14]
  output        io_memory_bundle_write_strobe_1, // @[src/main/scala/riscv/core/threestage/CPU.scala 10:14]
  output        io_memory_bundle_write_strobe_2, // @[src/main/scala/riscv/core/threestage/CPU.scala 10:14]
  output        io_memory_bundle_write_strobe_3, // @[src/main/scala/riscv/core/threestage/CPU.scala 10:14]
  input  [31:0] io_memory_bundle_read_data, // @[src/main/scala/riscv/core/threestage/CPU.scala 10:14]
  input  [31:0] io_interrupt_flag, // @[src/main/scala/riscv/core/threestage/CPU.scala 10:14]
  input  [4:0]  io_debug_read_address, // @[src/main/scala/riscv/core/threestage/CPU.scala 10:14]
  output [31:0] io_debug_read_data // @[src/main/scala/riscv/core/threestage/CPU.scala 10:14]
);
  wire  ctrl_io_JumpFlag; // @[src/main/scala/riscv/core/threestage/CPU.scala 12:26]
  wire  ctrl_io_Flush; // @[src/main/scala/riscv/core/threestage/CPU.scala 12:26]
  wire  regs_clock; // @[src/main/scala/riscv/core/threestage/CPU.scala 13:26]
  wire  regs_reset; // @[src/main/scala/riscv/core/threestage/CPU.scala 13:26]
  wire  regs_io_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 13:26]
  wire [4:0] regs_io_write_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 13:26]
  wire [31:0] regs_io_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 13:26]
  wire [4:0] regs_io_read_address1; // @[src/main/scala/riscv/core/threestage/CPU.scala 13:26]
  wire [4:0] regs_io_read_address2; // @[src/main/scala/riscv/core/threestage/CPU.scala 13:26]
  wire [31:0] regs_io_read_data1; // @[src/main/scala/riscv/core/threestage/CPU.scala 13:26]
  wire [31:0] regs_io_read_data2; // @[src/main/scala/riscv/core/threestage/CPU.scala 13:26]
  wire [4:0] regs_io_debug_read_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 13:26]
  wire [31:0] regs_io_debug_read_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 13:26]
  wire  inst_fetch_clock; // @[src/main/scala/riscv/core/threestage/CPU.scala 14:26]
  wire  inst_fetch_reset; // @[src/main/scala/riscv/core/threestage/CPU.scala 14:26]
  wire  inst_fetch_io_jump_flag_ex; // @[src/main/scala/riscv/core/threestage/CPU.scala 14:26]
  wire [31:0] inst_fetch_io_jump_address_ex; // @[src/main/scala/riscv/core/threestage/CPU.scala 14:26]
  wire [31:0] inst_fetch_io_rom_instruction; // @[src/main/scala/riscv/core/threestage/CPU.scala 14:26]
  wire  inst_fetch_io_instruction_valid; // @[src/main/scala/riscv/core/threestage/CPU.scala 14:26]
  wire [31:0] inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 14:26]
  wire [31:0] inst_fetch_io_id_instruction; // @[src/main/scala/riscv/core/threestage/CPU.scala 14:26]
  wire  if2id_clock; // @[src/main/scala/riscv/core/threestage/CPU.scala 15:26]
  wire  if2id_reset; // @[src/main/scala/riscv/core/threestage/CPU.scala 15:26]
  wire  if2id_io_flush; // @[src/main/scala/riscv/core/threestage/CPU.scala 15:26]
  wire [31:0] if2id_io_instruction; // @[src/main/scala/riscv/core/threestage/CPU.scala 15:26]
  wire [31:0] if2id_io_instruction_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 15:26]
  wire [31:0] if2id_io_interrupt_flag; // @[src/main/scala/riscv/core/threestage/CPU.scala 15:26]
  wire [31:0] if2id_io_output_instruction; // @[src/main/scala/riscv/core/threestage/CPU.scala 15:26]
  wire [31:0] if2id_io_output_instruction_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 15:26]
  wire [31:0] if2id_io_output_interrupt_flag; // @[src/main/scala/riscv/core/threestage/CPU.scala 15:26]
  wire [31:0] id_io_instruction; // @[src/main/scala/riscv/core/threestage/CPU.scala 16:26]
  wire [4:0] id_io_regs_reg1_read_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 16:26]
  wire [4:0] id_io_regs_reg2_read_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 16:26]
  wire [31:0] id_io_ex_immediate; // @[src/main/scala/riscv/core/threestage/CPU.scala 16:26]
  wire  id_io_ex_aluop1_source; // @[src/main/scala/riscv/core/threestage/CPU.scala 16:26]
  wire  id_io_ex_aluop2_source; // @[src/main/scala/riscv/core/threestage/CPU.scala 16:26]
  wire  id_io_ex_memory_read_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 16:26]
  wire  id_io_ex_memory_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 16:26]
  wire [1:0] id_io_ex_reg_write_source; // @[src/main/scala/riscv/core/threestage/CPU.scala 16:26]
  wire  id_io_ex_reg_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 16:26]
  wire [4:0] id_io_ex_reg_write_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 16:26]
  wire [11:0] id_io_ex_csr_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 16:26]
  wire  id_io_ex_csr_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 16:26]
  wire  id2ex_clock; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire  id2ex_reset; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire  id2ex_io_flush; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [31:0] id2ex_io_instruction; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [31:0] id2ex_io_instruction_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire  id2ex_io_regs_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [4:0] id2ex_io_regs_write_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [1:0] id2ex_io_regs_write_source; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [31:0] id2ex_io_reg1_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [31:0] id2ex_io_reg2_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [31:0] id2ex_io_immediate; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire  id2ex_io_aluop1_source; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire  id2ex_io_aluop2_source; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire  id2ex_io_csr_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [11:0] id2ex_io_csr_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire  id2ex_io_memory_read_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire  id2ex_io_memory_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [31:0] id2ex_io_csr_read_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [31:0] id2ex_io_output_instruction; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [31:0] id2ex_io_output_instruction_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire  id2ex_io_output_regs_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [4:0] id2ex_io_output_regs_write_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [1:0] id2ex_io_output_regs_write_source; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [31:0] id2ex_io_output_reg1_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [31:0] id2ex_io_output_reg2_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [31:0] id2ex_io_output_immediate; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire  id2ex_io_output_aluop1_source; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire  id2ex_io_output_aluop2_source; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire  id2ex_io_output_csr_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [11:0] id2ex_io_output_csr_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire  id2ex_io_output_memory_read_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire  id2ex_io_output_memory_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [31:0] id2ex_io_output_csr_read_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
  wire [31:0] ex_io_instruction; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire [31:0] ex_io_instruction_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire [31:0] ex_io_reg1_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire [31:0] ex_io_reg2_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire [31:0] ex_io_csr_read_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire [31:0] ex_io_immediate_id; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire  ex_io_aluop1_source_id; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire  ex_io_aluop2_source_id; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire  ex_io_memory_read_enable_id; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire  ex_io_memory_write_enable_id; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire [1:0] ex_io_regs_write_source_id; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire  ex_io_interrupt_assert_clint; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire [31:0] ex_io_interrupt_handler_address_clint; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire [31:0] ex_io_memory_bundle_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire [31:0] ex_io_memory_bundle_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire  ex_io_memory_bundle_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire  ex_io_memory_bundle_write_strobe_0; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire  ex_io_memory_bundle_write_strobe_1; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire  ex_io_memory_bundle_write_strobe_2; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire  ex_io_memory_bundle_write_strobe_3; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire [31:0] ex_io_memory_bundle_read_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire [31:0] ex_io_csr_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire [31:0] ex_io_regs_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire  ex_io_if_jump_flag; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire [31:0] ex_io_if_jump_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire  ex_io_clint_jump_flag; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire [31:0] ex_io_clint_jump_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
  wire  clint_clock; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire [31:0] clint_io_interrupt_flag; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire [31:0] clint_io_instruction_ex; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire [31:0] clint_io_instruction_address_if; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire [31:0] clint_io_instruction_address_id; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire  clint_io_jump_flag; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire [31:0] clint_io_jump_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire [31:0] clint_io_ex_interrupt_handler_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire  clint_io_ex_interrupt_assert; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire [31:0] clint_io_csr_bundle_mstatus; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire [31:0] clint_io_csr_bundle_mepc; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire [31:0] clint_io_csr_bundle_mtvec; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire [31:0] clint_io_csr_bundle_mstatus_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire [31:0] clint_io_csr_bundle_mepc_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire [31:0] clint_io_csr_bundle_mcause_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire  clint_io_csr_bundle_direct_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
  wire  csr_regs_clock; // @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
  wire  csr_regs_reset; // @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
  wire [11:0] csr_regs_io_reg_read_address_id; // @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
  wire  csr_regs_io_reg_write_enable_ex; // @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
  wire [11:0] csr_regs_io_reg_write_address_ex; // @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
  wire [31:0] csr_regs_io_reg_write_data_ex; // @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
  wire [31:0] csr_regs_io_id_reg_read_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
  wire [31:0] csr_regs_io_clint_access_bundle_mstatus; // @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
  wire [31:0] csr_regs_io_clint_access_bundle_mepc; // @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
  wire [31:0] csr_regs_io_clint_access_bundle_mtvec; // @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
  wire [31:0] csr_regs_io_clint_access_bundle_mstatus_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
  wire [31:0] csr_regs_io_clint_access_bundle_mepc_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
  wire [31:0] csr_regs_io_clint_access_bundle_mcause_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
  wire  csr_regs_io_clint_access_bundle_direct_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
  Control ctrl ( // @[src/main/scala/riscv/core/threestage/CPU.scala 12:26]
    .io_JumpFlag(ctrl_io_JumpFlag),
    .io_Flush(ctrl_io_Flush)
  );
  RegisterFile regs ( // @[src/main/scala/riscv/core/threestage/CPU.scala 13:26]
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
  InstructionFetch inst_fetch ( // @[src/main/scala/riscv/core/threestage/CPU.scala 14:26]
    .clock(inst_fetch_clock),
    .reset(inst_fetch_reset),
    .io_jump_flag_ex(inst_fetch_io_jump_flag_ex),
    .io_jump_address_ex(inst_fetch_io_jump_address_ex),
    .io_rom_instruction(inst_fetch_io_rom_instruction),
    .io_instruction_valid(inst_fetch_io_instruction_valid),
    .io_instruction_address(inst_fetch_io_instruction_address),
    .io_id_instruction(inst_fetch_io_id_instruction)
  );
  IF2ID if2id ( // @[src/main/scala/riscv/core/threestage/CPU.scala 15:26]
    .clock(if2id_clock),
    .reset(if2id_reset),
    .io_flush(if2id_io_flush),
    .io_instruction(if2id_io_instruction),
    .io_instruction_address(if2id_io_instruction_address),
    .io_interrupt_flag(if2id_io_interrupt_flag),
    .io_output_instruction(if2id_io_output_instruction),
    .io_output_instruction_address(if2id_io_output_instruction_address),
    .io_output_interrupt_flag(if2id_io_output_interrupt_flag)
  );
  InstructionDecode id ( // @[src/main/scala/riscv/core/threestage/CPU.scala 16:26]
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
  ID2EX id2ex ( // @[src/main/scala/riscv/core/threestage/CPU.scala 17:26]
    .clock(id2ex_clock),
    .reset(id2ex_reset),
    .io_flush(id2ex_io_flush),
    .io_instruction(id2ex_io_instruction),
    .io_instruction_address(id2ex_io_instruction_address),
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
  Execute ex ( // @[src/main/scala/riscv/core/threestage/CPU.scala 18:26]
    .io_instruction(ex_io_instruction),
    .io_instruction_address(ex_io_instruction_address),
    .io_reg1_data(ex_io_reg1_data),
    .io_reg2_data(ex_io_reg2_data),
    .io_csr_read_data(ex_io_csr_read_data),
    .io_immediate_id(ex_io_immediate_id),
    .io_aluop1_source_id(ex_io_aluop1_source_id),
    .io_aluop2_source_id(ex_io_aluop2_source_id),
    .io_memory_read_enable_id(ex_io_memory_read_enable_id),
    .io_memory_write_enable_id(ex_io_memory_write_enable_id),
    .io_regs_write_source_id(ex_io_regs_write_source_id),
    .io_interrupt_assert_clint(ex_io_interrupt_assert_clint),
    .io_interrupt_handler_address_clint(ex_io_interrupt_handler_address_clint),
    .io_memory_bundle_address(ex_io_memory_bundle_address),
    .io_memory_bundle_write_data(ex_io_memory_bundle_write_data),
    .io_memory_bundle_write_enable(ex_io_memory_bundle_write_enable),
    .io_memory_bundle_write_strobe_0(ex_io_memory_bundle_write_strobe_0),
    .io_memory_bundle_write_strobe_1(ex_io_memory_bundle_write_strobe_1),
    .io_memory_bundle_write_strobe_2(ex_io_memory_bundle_write_strobe_2),
    .io_memory_bundle_write_strobe_3(ex_io_memory_bundle_write_strobe_3),
    .io_memory_bundle_read_data(ex_io_memory_bundle_read_data),
    .io_csr_write_data(ex_io_csr_write_data),
    .io_regs_write_data(ex_io_regs_write_data),
    .io_if_jump_flag(ex_io_if_jump_flag),
    .io_if_jump_address(ex_io_if_jump_address),
    .io_clint_jump_flag(ex_io_clint_jump_flag),
    .io_clint_jump_address(ex_io_clint_jump_address)
  );
  CLINT clint ( // @[src/main/scala/riscv/core/threestage/CPU.scala 19:26]
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
    .io_csr_bundle_mtvec(clint_io_csr_bundle_mtvec),
    .io_csr_bundle_mstatus_write_data(clint_io_csr_bundle_mstatus_write_data),
    .io_csr_bundle_mepc_write_data(clint_io_csr_bundle_mepc_write_data),
    .io_csr_bundle_mcause_write_data(clint_io_csr_bundle_mcause_write_data),
    .io_csr_bundle_direct_write_enable(clint_io_csr_bundle_direct_write_enable)
  );
  CSR csr_regs ( // @[src/main/scala/riscv/core/threestage/CPU.scala 20:26]
    .clock(csr_regs_clock),
    .reset(csr_regs_reset),
    .io_reg_read_address_id(csr_regs_io_reg_read_address_id),
    .io_reg_write_enable_ex(csr_regs_io_reg_write_enable_ex),
    .io_reg_write_address_ex(csr_regs_io_reg_write_address_ex),
    .io_reg_write_data_ex(csr_regs_io_reg_write_data_ex),
    .io_id_reg_read_data(csr_regs_io_id_reg_read_data),
    .io_clint_access_bundle_mstatus(csr_regs_io_clint_access_bundle_mstatus),
    .io_clint_access_bundle_mepc(csr_regs_io_clint_access_bundle_mepc),
    .io_clint_access_bundle_mtvec(csr_regs_io_clint_access_bundle_mtvec),
    .io_clint_access_bundle_mstatus_write_data(csr_regs_io_clint_access_bundle_mstatus_write_data),
    .io_clint_access_bundle_mepc_write_data(csr_regs_io_clint_access_bundle_mepc_write_data),
    .io_clint_access_bundle_mcause_write_data(csr_regs_io_clint_access_bundle_mcause_write_data),
    .io_clint_access_bundle_direct_write_enable(csr_regs_io_clint_access_bundle_direct_write_enable)
  );
  assign io_instruction_address = inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 34:35]
  assign io_memory_bundle_address = {3'h0,ex_io_memory_bundle_address[28:0]}; // @[src/main/scala/riscv/core/threestage/CPU.scala 78:70]
  assign io_memory_bundle_write_data = ex_io_memory_bundle_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 77:20]
  assign io_memory_bundle_write_enable = ex_io_memory_bundle_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 77:20]
  assign io_memory_bundle_write_strobe_0 = ex_io_memory_bundle_write_strobe_0; // @[src/main/scala/riscv/core/threestage/CPU.scala 77:20]
  assign io_memory_bundle_write_strobe_1 = ex_io_memory_bundle_write_strobe_1; // @[src/main/scala/riscv/core/threestage/CPU.scala 77:20]
  assign io_memory_bundle_write_strobe_2 = ex_io_memory_bundle_write_strobe_2; // @[src/main/scala/riscv/core/threestage/CPU.scala 77:20]
  assign io_memory_bundle_write_strobe_3 = ex_io_memory_bundle_write_strobe_3; // @[src/main/scala/riscv/core/threestage/CPU.scala 77:20]
  assign io_debug_read_data = regs_io_debug_read_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 32:30]
  assign ctrl_io_JumpFlag = ex_io_if_jump_flag; // @[src/main/scala/riscv/core/threestage/CPU.scala 22:20]
  assign regs_clock = clock;
  assign regs_reset = reset;
  assign regs_io_write_enable = id2ex_io_output_regs_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 26:30]
  assign regs_io_write_address = id2ex_io_output_regs_write_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 27:30]
  assign regs_io_write_data = ex_io_regs_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 28:30]
  assign regs_io_read_address1 = id_io_regs_reg1_read_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 29:30]
  assign regs_io_read_address2 = id_io_regs_reg2_read_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 30:30]
  assign regs_io_debug_read_address = io_debug_read_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 31:30]
  assign inst_fetch_clock = clock;
  assign inst_fetch_reset = reset;
  assign inst_fetch_io_jump_flag_ex = ex_io_if_jump_flag; // @[src/main/scala/riscv/core/threestage/CPU.scala 35:35]
  assign inst_fetch_io_jump_address_ex = ex_io_if_jump_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 36:35]
  assign inst_fetch_io_rom_instruction = io_instruction; // @[src/main/scala/riscv/core/threestage/CPU.scala 37:35]
  assign inst_fetch_io_instruction_valid = io_instruction_valid; // @[src/main/scala/riscv/core/threestage/CPU.scala 38:35]
  assign if2id_clock = clock;
  assign if2id_reset = reset;
  assign if2id_io_flush = ctrl_io_Flush; // @[src/main/scala/riscv/core/threestage/CPU.scala 23:20]
  assign if2id_io_instruction = inst_fetch_io_id_instruction; // @[src/main/scala/riscv/core/threestage/CPU.scala 40:32]
  assign if2id_io_instruction_address = inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 41:32]
  assign if2id_io_interrupt_flag = io_interrupt_flag; // @[src/main/scala/riscv/core/threestage/CPU.scala 42:32]
  assign id_io_instruction = if2id_io_output_instruction; // @[src/main/scala/riscv/core/threestage/CPU.scala 44:21]
  assign id2ex_clock = clock;
  assign id2ex_reset = reset;
  assign id2ex_io_flush = ctrl_io_Flush; // @[src/main/scala/riscv/core/threestage/CPU.scala 24:20]
  assign id2ex_io_instruction = if2id_io_output_instruction; // @[src/main/scala/riscv/core/threestage/CPU.scala 46:32]
  assign id2ex_io_instruction_address = if2id_io_output_instruction_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 47:32]
  assign id2ex_io_regs_write_enable = id_io_ex_reg_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 50:32]
  assign id2ex_io_regs_write_address = id_io_ex_reg_write_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 51:32]
  assign id2ex_io_regs_write_source = id_io_ex_reg_write_source; // @[src/main/scala/riscv/core/threestage/CPU.scala 52:32]
  assign id2ex_io_reg1_data = regs_io_read_data1; // @[src/main/scala/riscv/core/threestage/CPU.scala 48:32]
  assign id2ex_io_reg2_data = regs_io_read_data2; // @[src/main/scala/riscv/core/threestage/CPU.scala 49:32]
  assign id2ex_io_immediate = id_io_ex_immediate; // @[src/main/scala/riscv/core/threestage/CPU.scala 53:32]
  assign id2ex_io_aluop1_source = id_io_ex_aluop1_source; // @[src/main/scala/riscv/core/threestage/CPU.scala 54:32]
  assign id2ex_io_aluop2_source = id_io_ex_aluop2_source; // @[src/main/scala/riscv/core/threestage/CPU.scala 55:32]
  assign id2ex_io_csr_write_enable = id_io_ex_csr_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 56:32]
  assign id2ex_io_csr_address = id_io_ex_csr_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 57:32]
  assign id2ex_io_memory_read_enable = id_io_ex_memory_read_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 58:32]
  assign id2ex_io_memory_write_enable = id_io_ex_memory_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 59:32]
  assign id2ex_io_csr_read_data = csr_regs_io_id_reg_read_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 60:32]
  assign ex_io_instruction = id2ex_io_output_instruction; // @[src/main/scala/riscv/core/threestage/CPU.scala 62:41]
  assign ex_io_instruction_address = id2ex_io_output_instruction_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 63:41]
  assign ex_io_reg1_data = id2ex_io_output_reg1_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 64:41]
  assign ex_io_reg2_data = id2ex_io_output_reg2_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 65:41]
  assign ex_io_csr_read_data = id2ex_io_output_csr_read_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 66:41]
  assign ex_io_immediate_id = id2ex_io_output_immediate; // @[src/main/scala/riscv/core/threestage/CPU.scala 67:41]
  assign ex_io_aluop1_source_id = id2ex_io_output_aluop1_source; // @[src/main/scala/riscv/core/threestage/CPU.scala 68:41]
  assign ex_io_aluop2_source_id = id2ex_io_output_aluop2_source; // @[src/main/scala/riscv/core/threestage/CPU.scala 69:41]
  assign ex_io_memory_read_enable_id = id2ex_io_output_memory_read_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 70:41]
  assign ex_io_memory_write_enable_id = id2ex_io_output_memory_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 71:41]
  assign ex_io_regs_write_source_id = id2ex_io_output_regs_write_source; // @[src/main/scala/riscv/core/threestage/CPU.scala 72:41]
  assign ex_io_interrupt_assert_clint = clint_io_ex_interrupt_assert; // @[src/main/scala/riscv/core/threestage/CPU.scala 73:41]
  assign ex_io_interrupt_handler_address_clint = clint_io_ex_interrupt_handler_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 74:41]
  assign ex_io_memory_bundle_read_data = io_memory_bundle_read_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 77:20]
  assign clint_clock = clock;
  assign clint_io_interrupt_flag = if2id_io_output_interrupt_flag; // @[src/main/scala/riscv/core/threestage/CPU.scala 86:35]
  assign clint_io_instruction_ex = id2ex_io_output_instruction; // @[src/main/scala/riscv/core/threestage/CPU.scala 83:35]
  assign clint_io_instruction_address_if = inst_fetch_io_instruction_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 81:35]
  assign clint_io_instruction_address_id = if2id_io_output_instruction_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 82:35]
  assign clint_io_jump_flag = ex_io_clint_jump_flag; // @[src/main/scala/riscv/core/threestage/CPU.scala 84:35]
  assign clint_io_jump_address = ex_io_clint_jump_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 85:35]
  assign clint_io_csr_bundle_mstatus = csr_regs_io_clint_access_bundle_mstatus; // @[src/main/scala/riscv/core/threestage/CPU.scala 87:23]
  assign clint_io_csr_bundle_mepc = csr_regs_io_clint_access_bundle_mepc; // @[src/main/scala/riscv/core/threestage/CPU.scala 87:23]
  assign clint_io_csr_bundle_mtvec = csr_regs_io_clint_access_bundle_mtvec; // @[src/main/scala/riscv/core/threestage/CPU.scala 87:23]
  assign csr_regs_clock = clock;
  assign csr_regs_reset = reset;
  assign csr_regs_io_reg_read_address_id = id_io_ex_csr_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 89:36]
  assign csr_regs_io_reg_write_enable_ex = id2ex_io_output_csr_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 90:36]
  assign csr_regs_io_reg_write_address_ex = id2ex_io_output_csr_address; // @[src/main/scala/riscv/core/threestage/CPU.scala 91:36]
  assign csr_regs_io_reg_write_data_ex = ex_io_csr_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 92:36]
  assign csr_regs_io_clint_access_bundle_mstatus_write_data = clint_io_csr_bundle_mstatus_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 87:23]
  assign csr_regs_io_clint_access_bundle_mepc_write_data = clint_io_csr_bundle_mepc_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 87:23]
  assign csr_regs_io_clint_access_bundle_mcause_write_data = clint_io_csr_bundle_mcause_write_data; // @[src/main/scala/riscv/core/threestage/CPU.scala 87:23]
  assign csr_regs_io_clint_access_bundle_direct_write_enable = clint_io_csr_bundle_direct_write_enable; // @[src/main/scala/riscv/core/threestage/CPU.scala 87:23]
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
  input  [31:0] io_interrupt_flag, // @[src/main/scala/riscv/core/CPU.scala 11:14]
  input  [4:0]  io_debug_read_address, // @[src/main/scala/riscv/core/CPU.scala 11:14]
  output [31:0] io_debug_read_data // @[src/main/scala/riscv/core/CPU.scala 11:14]
);
  wire  cpu_clock; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  wire  cpu_reset; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  wire [31:0] cpu_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  wire [31:0] cpu_io_instruction; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  wire  cpu_io_instruction_valid; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  wire [31:0] cpu_io_memory_bundle_address; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  wire [31:0] cpu_io_memory_bundle_write_data; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  wire  cpu_io_memory_bundle_write_enable; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  wire  cpu_io_memory_bundle_write_strobe_0; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  wire  cpu_io_memory_bundle_write_strobe_1; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  wire  cpu_io_memory_bundle_write_strobe_2; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  wire  cpu_io_memory_bundle_write_strobe_3; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  wire [31:0] cpu_io_memory_bundle_read_data; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  wire [31:0] cpu_io_interrupt_flag; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  wire [4:0] cpu_io_debug_read_address; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  wire [31:0] cpu_io_debug_read_data; // @[src/main/scala/riscv/core/CPU.scala 14:23]
  CPU cpu ( // @[src/main/scala/riscv/core/CPU.scala 14:23]
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
    .io_interrupt_flag(cpu_io_interrupt_flag),
    .io_debug_read_address(cpu_io_debug_read_address),
    .io_debug_read_data(cpu_io_debug_read_data)
  );
  assign io_instruction_address = cpu_io_instruction_address; // @[src/main/scala/riscv/core/CPU.scala 15:14]
  assign io_memory_bundle_address = cpu_io_memory_bundle_address; // @[src/main/scala/riscv/core/CPU.scala 15:14]
  assign io_memory_bundle_write_data = cpu_io_memory_bundle_write_data; // @[src/main/scala/riscv/core/CPU.scala 15:14]
  assign io_memory_bundle_write_enable = cpu_io_memory_bundle_write_enable; // @[src/main/scala/riscv/core/CPU.scala 15:14]
  assign io_memory_bundle_write_strobe_0 = cpu_io_memory_bundle_write_strobe_0; // @[src/main/scala/riscv/core/CPU.scala 15:14]
  assign io_memory_bundle_write_strobe_1 = cpu_io_memory_bundle_write_strobe_1; // @[src/main/scala/riscv/core/CPU.scala 15:14]
  assign io_memory_bundle_write_strobe_2 = cpu_io_memory_bundle_write_strobe_2; // @[src/main/scala/riscv/core/CPU.scala 15:14]
  assign io_memory_bundle_write_strobe_3 = cpu_io_memory_bundle_write_strobe_3; // @[src/main/scala/riscv/core/CPU.scala 15:14]
  assign io_debug_read_data = cpu_io_debug_read_data; // @[src/main/scala/riscv/core/CPU.scala 15:14]
  assign cpu_clock = clock;
  assign cpu_reset = reset;
  assign cpu_io_instruction = io_instruction; // @[src/main/scala/riscv/core/CPU.scala 15:14]
  assign cpu_io_instruction_valid = io_instruction_valid; // @[src/main/scala/riscv/core/CPU.scala 15:14]
  assign cpu_io_memory_bundle_read_data = io_memory_bundle_read_data; // @[src/main/scala/riscv/core/CPU.scala 15:14]
  assign cpu_io_interrupt_flag = io_interrupt_flag; // @[src/main/scala/riscv/core/CPU.scala 15:14]
  assign cpu_io_debug_read_address = io_debug_read_address; // @[src/main/scala/riscv/core/CPU.scala 15:14]
endmodule
module Top(
  input         clock,
  input         reset,
  output [31:0] io_instruction_address, // @[src/main/scala/board/verilator/Top.scala 11:14]
  input  [31:0] io_instruction, // @[src/main/scala/board/verilator/Top.scala 11:14]
  input         io_instruction_valid, // @[src/main/scala/board/verilator/Top.scala 11:14]
  output [31:0] io_memory_bundle_address, // @[src/main/scala/board/verilator/Top.scala 11:14]
  output [31:0] io_memory_bundle_write_data, // @[src/main/scala/board/verilator/Top.scala 11:14]
  output        io_memory_bundle_write_enable, // @[src/main/scala/board/verilator/Top.scala 11:14]
  output        io_memory_bundle_write_strobe_0, // @[src/main/scala/board/verilator/Top.scala 11:14]
  output        io_memory_bundle_write_strobe_1, // @[src/main/scala/board/verilator/Top.scala 11:14]
  output        io_memory_bundle_write_strobe_2, // @[src/main/scala/board/verilator/Top.scala 11:14]
  output        io_memory_bundle_write_strobe_3, // @[src/main/scala/board/verilator/Top.scala 11:14]
  input  [31:0] io_memory_bundle_read_data, // @[src/main/scala/board/verilator/Top.scala 11:14]
  output [2:0]  io_device_select, // @[src/main/scala/board/verilator/Top.scala 11:14]
  input  [31:0] io_interrupt_flag, // @[src/main/scala/board/verilator/Top.scala 11:14]
  input  [4:0]  io_debug_read_address, // @[src/main/scala/board/verilator/Top.scala 11:14]
  output [31:0] io_debug_read_data // @[src/main/scala/board/verilator/Top.scala 11:14]
);
  wire  cpu_clock; // @[src/main/scala/board/verilator/Top.scala 13:19]
  wire  cpu_reset; // @[src/main/scala/board/verilator/Top.scala 13:19]
  wire [31:0] cpu_io_instruction_address; // @[src/main/scala/board/verilator/Top.scala 13:19]
  wire [31:0] cpu_io_instruction; // @[src/main/scala/board/verilator/Top.scala 13:19]
  wire  cpu_io_instruction_valid; // @[src/main/scala/board/verilator/Top.scala 13:19]
  wire [31:0] cpu_io_memory_bundle_address; // @[src/main/scala/board/verilator/Top.scala 13:19]
  wire [31:0] cpu_io_memory_bundle_write_data; // @[src/main/scala/board/verilator/Top.scala 13:19]
  wire  cpu_io_memory_bundle_write_enable; // @[src/main/scala/board/verilator/Top.scala 13:19]
  wire  cpu_io_memory_bundle_write_strobe_0; // @[src/main/scala/board/verilator/Top.scala 13:19]
  wire  cpu_io_memory_bundle_write_strobe_1; // @[src/main/scala/board/verilator/Top.scala 13:19]
  wire  cpu_io_memory_bundle_write_strobe_2; // @[src/main/scala/board/verilator/Top.scala 13:19]
  wire  cpu_io_memory_bundle_write_strobe_3; // @[src/main/scala/board/verilator/Top.scala 13:19]
  wire [31:0] cpu_io_memory_bundle_read_data; // @[src/main/scala/board/verilator/Top.scala 13:19]
  wire [31:0] cpu_io_interrupt_flag; // @[src/main/scala/board/verilator/Top.scala 13:19]
  wire [4:0] cpu_io_debug_read_address; // @[src/main/scala/board/verilator/Top.scala 13:19]
  wire [31:0] cpu_io_debug_read_data; // @[src/main/scala/board/verilator/Top.scala 13:19]
  CPU_1 cpu ( // @[src/main/scala/board/verilator/Top.scala 13:19]
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
    .io_interrupt_flag(cpu_io_interrupt_flag),
    .io_debug_read_address(cpu_io_debug_read_address),
    .io_debug_read_data(cpu_io_debug_read_data)
  );
  assign io_instruction_address = cpu_io_instruction_address; // @[src/main/scala/board/verilator/Top.scala 20:26]
  assign io_memory_bundle_address = cpu_io_memory_bundle_address; // @[src/main/scala/board/verilator/Top.scala 19:20]
  assign io_memory_bundle_write_data = cpu_io_memory_bundle_write_data; // @[src/main/scala/board/verilator/Top.scala 19:20]
  assign io_memory_bundle_write_enable = cpu_io_memory_bundle_write_enable; // @[src/main/scala/board/verilator/Top.scala 19:20]
  assign io_memory_bundle_write_strobe_0 = cpu_io_memory_bundle_write_strobe_0; // @[src/main/scala/board/verilator/Top.scala 19:20]
  assign io_memory_bundle_write_strobe_1 = cpu_io_memory_bundle_write_strobe_1; // @[src/main/scala/board/verilator/Top.scala 19:20]
  assign io_memory_bundle_write_strobe_2 = cpu_io_memory_bundle_write_strobe_2; // @[src/main/scala/board/verilator/Top.scala 19:20]
  assign io_memory_bundle_write_strobe_3 = cpu_io_memory_bundle_write_strobe_3; // @[src/main/scala/board/verilator/Top.scala 19:20]
  assign io_device_select = 3'h0; // @[src/main/scala/board/verilator/Top.scala 15:29]
  assign io_debug_read_data = cpu_io_debug_read_data; // @[src/main/scala/board/verilator/Top.scala 17:29]
  assign cpu_clock = clock;
  assign cpu_reset = reset;
  assign cpu_io_instruction = io_instruction; // @[src/main/scala/board/verilator/Top.scala 21:26]
  assign cpu_io_instruction_valid = io_instruction_valid; // @[src/main/scala/board/verilator/Top.scala 24:28]
  assign cpu_io_memory_bundle_read_data = io_memory_bundle_read_data; // @[src/main/scala/board/verilator/Top.scala 19:20]
  assign cpu_io_interrupt_flag = io_interrupt_flag; // @[src/main/scala/board/verilator/Top.scala 23:28]
  assign cpu_io_debug_read_address = io_debug_read_address; // @[src/main/scala/board/verilator/Top.scala 16:29]
endmodule
