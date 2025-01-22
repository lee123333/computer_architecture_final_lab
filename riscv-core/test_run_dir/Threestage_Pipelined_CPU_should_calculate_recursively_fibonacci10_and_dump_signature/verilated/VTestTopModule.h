// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VTESTTOPMODULE_H_
#define _VTESTTOPMODULE_H_  // guard

#include "verilated_heavy.h"
#include "verilated_cov.h"

//==========

class VTestTopModule__Syms;

//----------

VL_MODULE(VTestTopModule) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_regs_debug_read_address,4,0);
    VL_IN(io_mem_debug_read_address,31,0);
    VL_OUT(io_regs_debug_read_data,31,0);
    VL_OUT(io_mem_debug_read_data,31,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs_clock;
        CData/*0:0*/ TestTopModule__DOT__mem_io_bundle_write_enable;
        CData/*1:0*/ TestTopModule__DOT__CPU_clkdiv;
        CData/*1:0*/ TestTopModule__DOT___CPU_next_T_2;
        CData/*0:0*/ TestTopModule__DOT__rom_loader__DOT__valid;
        CData/*0:0*/ TestTopModule__DOT__rom_loader__DOT___GEN_0;
        CData/*4:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_clint_jump_flag;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__clint_io_csr_bundle_direct_write_enable;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out;
        CData/*4:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out;
        CData/*1:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_source__DOT__out;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__aluop1_source__DOT__out;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__aluop2_source__DOT__out;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_write_enable__DOT__out;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out;
        CData/*4:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_13;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_16;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_2;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_26;
        CData/*4:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT___GEN_0;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__jumpping;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__exception;
        CData/*0:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__interrupt;
        SData/*12:0*/ TestTopModule__DOT__mem__DOT__mem_1_io_bundle_read_data_MPORT_addr_pipe_0;
        SData/*12:0*/ TestTopModule__DOT__mem__DOT__mem_1_io_debug_read_data_MPORT_addr_pipe_0;
        SData/*12:0*/ TestTopModule__DOT__mem__DOT__mem_3_io_instruction_MPORT_addr_pipe_0;
        SData/*11:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out;
        IData/*31:0*/ TestTopModule__DOT__mem_io_bundle_address;
        IData/*31:0*/ TestTopModule__DOT__mem_io_bundle_write_data;
        IData/*31:0*/ TestTopModule__DOT__cpu_io_memory_bundle_read_data;
        IData/*31:0*/ TestTopModule__DOT__rom_loader__DOT__address;
        IData/*31:0*/ TestTopModule__DOT__rom_loader__DOT___address_T_1;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs_io_clint_access_bundle_mstatus;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_0;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_1;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_2;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_3;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_4;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_5;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_6;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_7;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_8;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_9;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_10;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_11;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_12;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_13;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_14;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_15;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_16;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_17;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_18;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_19;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_20;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_21;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_22;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_23;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_24;
    };
    struct {
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_25;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_26;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_27;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_28;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_29;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_30;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_31;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_117;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_141;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_154;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_181;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT__pc;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT___pc_T_1;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction_address__DOT__out;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__interrupt_flag__DOT__out;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_9;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_55;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction_address__DOT__out;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__immediate__DOT__out;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_read_data__DOT__out;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___mem_read_data_T_67;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_1;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mstatus;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mie;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mtvec;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mscratch;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mepc;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mcause;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_1;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_2;
        IData/*31:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_12;
        QData/*63:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_19;
        QData/*32:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_8;
        QData/*62:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18;
        QData/*63:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__cycles;
        QData/*63:0*/ TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___cycles_T_1;
        CData/*7:0*/ TestTopModule__DOT__mem__DOT__mem_0[8192];
        CData/*7:0*/ TestTopModule__DOT__mem__DOT__mem_1[8192];
        CData/*7:0*/ TestTopModule__DOT__mem__DOT__mem_2[8192];
        CData/*7:0*/ TestTopModule__DOT__mem__DOT__mem_3[8192];
        IData/*31:0*/ TestTopModule__DOT__instruction_rom__DOT__mem[78623];
    };
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*7:0*/ __Vdlyvval__TestTopModule__DOT__mem__DOT__mem_3__v0;
    CData/*0:0*/ __Vdlyvset__TestTopModule__DOT__mem__DOT__mem_3__v0;
    CData/*7:0*/ __Vdlyvval__TestTopModule__DOT__mem__DOT__mem_2__v0;
    CData/*0:0*/ __Vdlyvset__TestTopModule__DOT__mem__DOT__mem_2__v0;
    CData/*7:0*/ __Vdlyvval__TestTopModule__DOT__mem__DOT__mem_0__v0;
    CData/*0:0*/ __Vdlyvset__TestTopModule__DOT__mem__DOT__mem_0__v0;
    CData/*7:0*/ __Vdlyvval__TestTopModule__DOT__mem__DOT__mem_1__v0;
    CData/*0:0*/ __Vdlyvset__TestTopModule__DOT__mem__DOT__mem_1__v0;
    CData/*0:0*/ __Vclklast__TOP__clock;
    CData/*0:0*/ __Vclklast__TOP__TestTopModule__DOT__cpu__DOT__cpu__DOT__regs_clock;
    SData/*12:0*/ __Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_3__v0;
    SData/*12:0*/ __Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_2__v0;
    SData/*12:0*/ __Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_0__v0;
    SData/*12:0*/ __Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_1__v0;
    SData/*12:0*/ __Vdly__TestTopModule__DOT__mem__DOT__mem_3_io_instruction_MPORT_addr_pipe_0;
    IData/*31:0*/ __Vdly__TestTopModule__DOT__rom_loader__DOT__address;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VTestTopModule__Syms* __VlSymsp;  // Symbol table
  private:
    // Coverage
    void __vlCoverInsert(uint32_t* countp, bool enable, const char* filenamep, int lineno, int column,
        const char* hierp, const char* pagep, const char* commentp, const char* linescovp);
  public:
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VTestTopModule);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    VTestTopModule(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VTestTopModule();
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval() { eval_step(); }
    /// Evaluate when calling multiple units/models per time step.
    void eval_step();
    /// Evaluate at end of a timestep for tracing, when using eval_step().
    /// Application must call after all eval() and before time changes.
    void eval_end_step() {}
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(VTestTopModule__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VTestTopModule__Syms* symsp, bool first);
  private:
    static QData _change_request(VTestTopModule__Syms* __restrict vlSymsp);
    static QData _change_request_1(VTestTopModule__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__5(VTestTopModule__Syms* __restrict vlSymsp);
    static void _combo__TOP__8(VTestTopModule__Syms* __restrict vlSymsp);
  private:
    void _configure_coverage(VTestTopModule__Syms* __restrict vlSymsp, bool first) VL_ATTR_COLD;
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(VTestTopModule__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(VTestTopModule__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(VTestTopModule__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _initial__TOP__1(VTestTopModule__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _multiclk__TOP__7(VTestTopModule__Syms* __restrict vlSymsp);
    static void _sequent__TOP__2(VTestTopModule__Syms* __restrict vlSymsp);
    static void _sequent__TOP__4(VTestTopModule__Syms* __restrict vlSymsp);
    static void _sequent__TOP__6(VTestTopModule__Syms* __restrict vlSymsp);
    static void _settle__TOP__3(VTestTopModule__Syms* __restrict vlSymsp) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
