// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef _VPIPELINEREGISTER__SYMS_H_
#define _VPIPELINEREGISTER__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODULE CLASSES
#include "VPipelineRegister.h"

// SYMS CLASS
class VPipelineRegister__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_didInit;
    
    // SUBCELL STATE
    VPipelineRegister*             TOPp;
    
    // CREATORS
    VPipelineRegister__Syms(VPipelineRegister* topp, const char* namep);
    ~VPipelineRegister__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
