// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VPipelineRegister.h for the primary calling header

#include "VPipelineRegister.h"
#include "VPipelineRegister__Syms.h"

//==========

void VPipelineRegister::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VPipelineRegister::eval\n"); );
    VPipelineRegister__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    VPipelineRegister* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
#ifdef VL_DEBUG
    // Debug assertions
    _eval_debug_assertions();
#endif  // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
        _eval(vlSymsp);
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = _change_request(vlSymsp);
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("PipelineRegister.sv", 1, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void VPipelineRegister::_eval_initial_loop(VPipelineRegister__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    _eval_initial(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    do {
        _eval_settle(vlSymsp);
        _eval(vlSymsp);
        if (VL_UNLIKELY(++__VclockLoop > 100)) {
            // About to fail, so enable debug to see what's not settling.
            // Note you must run make with OPT=-DVL_DEBUG for debug prints.
            int __Vsaved_debug = Verilated::debug();
            Verilated::debug(1);
            __Vchange = _change_request(vlSymsp);
            Verilated::debug(__Vsaved_debug);
            VL_FATAL_MT("PipelineRegister.sv", 1, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

VL_INLINE_OPT void VPipelineRegister::_sequent__TOP__1(VPipelineRegister__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPipelineRegister::_sequent__TOP__1\n"); );
    VPipelineRegister* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->PipelineRegister__DOT__out = ((IData)(vlTOPp->reset)
                                           ? 0x6197adc9U
                                           : ((IData)(vlTOPp->io_flush)
                                               ? 0x6197adc9U
                                               : ((IData)(vlTOPp->io_stall)
                                                   ? vlTOPp->PipelineRegister__DOT__myreg
                                                   : vlTOPp->io_in)));
    vlTOPp->io_out = vlTOPp->PipelineRegister__DOT__out;
    if (vlTOPp->reset) {
        vlTOPp->PipelineRegister__DOT__myreg = 0x6197adc9U;
    } else {
        if (vlTOPp->io_flush) {
            vlTOPp->PipelineRegister__DOT__myreg = 0x6197adc9U;
        } else {
            if ((1U & (~ (IData)(vlTOPp->io_stall)))) {
                vlTOPp->PipelineRegister__DOT__myreg 
                    = vlTOPp->io_in;
            }
        }
    }
}

void VPipelineRegister::_eval(VPipelineRegister__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPipelineRegister::_eval\n"); );
    VPipelineRegister* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->clock) & (~ (IData)(vlTOPp->__Vclklast__TOP__clock)))) {
        vlTOPp->_sequent__TOP__1(vlSymsp);
    }
    // Final
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

VL_INLINE_OPT QData VPipelineRegister::_change_request(VPipelineRegister__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPipelineRegister::_change_request\n"); );
    VPipelineRegister* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    return (vlTOPp->_change_request_1(vlSymsp));
}

VL_INLINE_OPT QData VPipelineRegister::_change_request_1(VPipelineRegister__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPipelineRegister::_change_request_1\n"); );
    VPipelineRegister* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VPipelineRegister::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VPipelineRegister::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((clock & 0xfeU))) {
        Verilated::overWidthError("clock");}
    if (VL_UNLIKELY((reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
    if (VL_UNLIKELY((io_stall & 0xfeU))) {
        Verilated::overWidthError("io_stall");}
    if (VL_UNLIKELY((io_flush & 0xfeU))) {
        Verilated::overWidthError("io_flush");}
}
#endif  // VL_DEBUG
