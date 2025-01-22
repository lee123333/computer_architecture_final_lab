// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VPIPELINEREGISTER_H_
#define _VPIPELINEREGISTER_H_  // guard

#include "verilated.h"
#include "verilated_cov.h"

//==========

class VPipelineRegister__Syms;

//----------

VL_MODULE(VPipelineRegister) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_stall,0,0);
    VL_IN8(io_flush,0,0);
    VL_IN(io_in,31,0);
    VL_OUT(io_out,31,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    IData/*31:0*/ PipelineRegister__DOT__myreg;
    IData/*31:0*/ PipelineRegister__DOT__out;
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    CData/*0:0*/ __Vclklast__TOP__clock;
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VPipelineRegister__Syms* __VlSymsp;  // Symbol table
  private:
    // Coverage
    void __vlCoverInsert(uint32_t* countp, bool enable, const char* filenamep, int lineno, int column,
        const char* hierp, const char* pagep, const char* commentp, const char* linescovp);
  public:
    
    // CONSTRUCTORS
  private:
    VL_UNCOPYABLE(VPipelineRegister);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible with respect to DPI scope names.
    VPipelineRegister(const char* name = "TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VPipelineRegister();
    
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
    static void _eval_initial_loop(VPipelineRegister__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VPipelineRegister__Syms* symsp, bool first);
  private:
    static QData _change_request(VPipelineRegister__Syms* __restrict vlSymsp);
    static QData _change_request_1(VPipelineRegister__Syms* __restrict vlSymsp);
    void _configure_coverage(VPipelineRegister__Syms* __restrict vlSymsp, bool first) VL_ATTR_COLD;
    void _ctor_var_reset() VL_ATTR_COLD;
  public:
    static void _eval(VPipelineRegister__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif  // VL_DEBUG
  public:
    static void _eval_initial(VPipelineRegister__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _eval_settle(VPipelineRegister__Syms* __restrict vlSymsp) VL_ATTR_COLD;
    static void _sequent__TOP__1(VPipelineRegister__Syms* __restrict vlSymsp);
    static void _settle__TOP__2(VPipelineRegister__Syms* __restrict vlSymsp) VL_ATTR_COLD;
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

//----------


#endif  // guard
