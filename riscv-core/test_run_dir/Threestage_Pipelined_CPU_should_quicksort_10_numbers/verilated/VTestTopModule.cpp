// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VTestTopModule.h for the primary calling header

#include "VTestTopModule.h"
#include "VTestTopModule__Syms.h"

//==========

void VTestTopModule::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VTestTopModule::eval\n"); );
    VTestTopModule__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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
            VL_FATAL_MT("TestTopModule.sv", 2970, "",
                "Verilated model didn't converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

void VTestTopModule::_eval_initial_loop(VTestTopModule__Syms* __restrict vlSymsp) {
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
            VL_FATAL_MT("TestTopModule.sv", 2970, "",
                "Verilated model didn't DC converge\n"
                "- See DIDNOTCONVERGE in the Verilator manual");
        } else {
            __Vchange = _change_request(vlSymsp);
        }
    } while (VL_UNLIKELY(__Vchange));
}

VL_INLINE_OPT void VTestTopModule::_sequent__TOP__2(VTestTopModule__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_sequent__TOP__2\n"); );
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->__Vdly__TestTopModule__DOT__rom_loader__DOT__address 
        = vlTOPp->TestTopModule__DOT__rom_loader__DOT__address;
    vlTOPp->__Vdlyvset__TestTopModule__DOT__mem__DOT__mem_1__v0 = 0U;
    vlTOPp->__Vdlyvset__TestTopModule__DOT__mem__DOT__mem_0__v0 = 0U;
    vlTOPp->__Vdlyvset__TestTopModule__DOT__mem__DOT__mem_2__v0 = 0U;
    vlTOPp->__Vdlyvset__TestTopModule__DOT__mem__DOT__mem_3__v0 = 0U;
    vlTOPp->__Vdly__TestTopModule__DOT__mem__DOT__mem_3_io_instruction_MPORT_addr_pipe_0 
        = vlTOPp->TestTopModule__DOT__mem__DOT__mem_3_io_instruction_MPORT_addr_pipe_0;
    vlTOPp->TestTopModule__DOT__mem__DOT__mem_1_io_debug_read_data_MPORT_addr_pipe_0 
        = (0x1fffU & (vlTOPp->io_mem_debug_read_address 
                      >> 2U));
    vlTOPp->TestTopModule__DOT__mem__DOT__mem_1_io_bundle_read_data_MPORT_addr_pipe_0 
        = (0x1fffU & (vlTOPp->TestTopModule__DOT__mem_io_bundle_address 
                      >> 2U));
    if (((IData)(vlTOPp->TestTopModule__DOT__mem_io_bundle_write_enable) 
         & ((IData)(vlTOPp->TestTopModule__DOT__rom_loader__DOT__valid)
             ? ((~ (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out)) 
                & ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out) 
                   & ((0U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                    >> 0xcU))) ? (1U 
                                                  == 
                                                  (3U 
                                                   & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)))
                       : (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_13))))
             : (0xe7U >= vlTOPp->TestTopModule__DOT__rom_loader__DOT__address)))) {
        vlTOPp->__Vdlyvval__TestTopModule__DOT__mem__DOT__mem_1__v0 
            = (0xffU & (vlTOPp->TestTopModule__DOT__mem_io_bundle_write_data 
                        >> 8U));
        vlTOPp->__Vdlyvset__TestTopModule__DOT__mem__DOT__mem_1__v0 = 1U;
        vlTOPp->__Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_1__v0 
            = (0x1fffU & (vlTOPp->TestTopModule__DOT__mem_io_bundle_address 
                          >> 2U));
    }
    if (((IData)(vlTOPp->TestTopModule__DOT__mem_io_bundle_write_enable) 
         & ((IData)(vlTOPp->TestTopModule__DOT__rom_loader__DOT__valid)
             ? ((~ (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out)) 
                & ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out) 
                   & ((0U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                    >> 0xcU))) ? (0U 
                                                  == 
                                                  (3U 
                                                   & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)))
                       : (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_13))))
             : (0xe7U >= vlTOPp->TestTopModule__DOT__rom_loader__DOT__address)))) {
        vlTOPp->__Vdlyvval__TestTopModule__DOT__mem__DOT__mem_0__v0 
            = (0xffU & vlTOPp->TestTopModule__DOT__mem_io_bundle_write_data);
        vlTOPp->__Vdlyvset__TestTopModule__DOT__mem__DOT__mem_0__v0 = 1U;
        vlTOPp->__Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_0__v0 
            = (0x1fffU & (vlTOPp->TestTopModule__DOT__mem_io_bundle_address 
                          >> 2U));
    }
    if (((IData)(vlTOPp->TestTopModule__DOT__mem_io_bundle_write_enable) 
         & ((IData)(vlTOPp->TestTopModule__DOT__rom_loader__DOT__valid)
             ? ((~ (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out)) 
                & ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out) 
                   & ((0U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                    >> 0xcU))) ? (2U 
                                                  == 
                                                  (3U 
                                                   & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)))
                       : (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_16))))
             : (0xe7U >= vlTOPp->TestTopModule__DOT__rom_loader__DOT__address)))) {
        vlTOPp->__Vdlyvval__TestTopModule__DOT__mem__DOT__mem_2__v0 
            = (0xffU & (vlTOPp->TestTopModule__DOT__mem_io_bundle_write_data 
                        >> 0x10U));
        vlTOPp->__Vdlyvset__TestTopModule__DOT__mem__DOT__mem_2__v0 = 1U;
        vlTOPp->__Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_2__v0 
            = (0x1fffU & (vlTOPp->TestTopModule__DOT__mem_io_bundle_address 
                          >> 2U));
    }
    if (((IData)(vlTOPp->TestTopModule__DOT__mem_io_bundle_write_enable) 
         & ((IData)(vlTOPp->TestTopModule__DOT__rom_loader__DOT__valid)
             ? ((~ (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out)) 
                & ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out) 
                   & ((0U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                    >> 0xcU))) ? (3U 
                                                  == 
                                                  (3U 
                                                   & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)))
                       : (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_16))))
             : (0xe7U >= vlTOPp->TestTopModule__DOT__rom_loader__DOT__address)))) {
        vlTOPp->__Vdlyvval__TestTopModule__DOT__mem__DOT__mem_3__v0 
            = (0xffU & (vlTOPp->TestTopModule__DOT__mem_io_bundle_write_data 
                        >> 0x18U));
        vlTOPp->__Vdlyvset__TestTopModule__DOT__mem__DOT__mem_3__v0 = 1U;
        vlTOPp->__Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_3__v0 
            = (0x1fffU & (vlTOPp->TestTopModule__DOT__mem_io_bundle_address 
                          >> 2U));
    }
    vlTOPp->__Vdly__TestTopModule__DOT__mem__DOT__mem_3_io_instruction_MPORT_addr_pipe_0 
        = (0x1fffU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT__pc 
                      >> 2U));
    vlTOPp->TestTopModule__DOT__CPU_clkdiv = ((IData)(vlTOPp->reset)
                                               ? 0U
                                               : ((3U 
                                                   == (IData)(vlTOPp->TestTopModule__DOT__CPU_clkdiv))
                                                   ? 0U
                                                   : (IData)(vlTOPp->TestTopModule__DOT___CPU_next_T_2)));
    vlTOPp->TestTopModule__DOT___CPU_next_T_2 = (3U 
                                                 & ((IData)(1U) 
                                                    + (IData)(vlTOPp->TestTopModule__DOT__CPU_clkdiv)));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs_clock 
        = (0U == (IData)(vlTOPp->TestTopModule__DOT__CPU_clkdiv));
}

VL_INLINE_OPT void VTestTopModule::_sequent__TOP__4(VTestTopModule__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_sequent__TOP__4\n"); );
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    IData/*31:0*/ __Vdly__TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mepc;
    WData/*95:0*/ __Vtemp14[3];
    WData/*95:0*/ __Vtemp15[3];
    WData/*95:0*/ __Vtemp17[3];
    WData/*95:0*/ __Vtemp18[3];
    WData/*95:0*/ __Vtemp19[3];
    // Body
    __Vdly__TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mepc 
        = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mepc;
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out 
        = ((~ (IData)(vlTOPp->reset)) & ((~ (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)) 
                                         & (0x23U == 
                                            (0x7fU 
                                             & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_source__DOT__out 
        = ((IData)(vlTOPp->reset) ? 0U : ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)
                                           ? 0U : (
                                                   (0x67U 
                                                    == 
                                                    (0x7fU 
                                                     & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                                                    ? 3U
                                                    : 
                                                   ((0x6fU 
                                                     == 
                                                     (0x7fU 
                                                      & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                                                     ? 3U
                                                     : 
                                                    ((0x73U 
                                                      == 
                                                      (0x7fU 
                                                       & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                                                      ? 2U
                                                      : 
                                                     ((3U 
                                                       == 
                                                       (0x7fU 
                                                        & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                                                       ? 1U
                                                       : 0U))))));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out 
        = ((~ (IData)(vlTOPp->reset)) & ((~ (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)) 
                                         & (3U == (0x7fU 
                                                   & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))));
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x15U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_21 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x14U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_20 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0xeU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_14 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0xfU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_15 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x10U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_16 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x11U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_17 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x12U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_18 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x13U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_19 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0xdU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_13 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0xcU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_12 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0xbU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_11 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0xaU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_10 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((8U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_8 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((7U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_7 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((2U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_2 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_0 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((9U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_9 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((4U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_4 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((1U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_1 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((3U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_3 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((5U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_5 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((6U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_6 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__aluop1_source__DOT__out 
        = ((~ (IData)(vlTOPp->reset)) & ((~ (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)) 
                                         & (((0x17U 
                                              == (0x7fU 
                                                  & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)) 
                                             | (0x63U 
                                                == 
                                                (0x7fU 
                                                 & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))) 
                                            | (0x6fU 
                                               == (0x7fU 
                                                   & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)))));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__aluop2_source__DOT__out 
        = ((~ (IData)(vlTOPp->reset)) & ((~ (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)) 
                                         & (0x33U != 
                                            (0x7fU 
                                             & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))));
    if (vlTOPp->reset) {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__immediate__DOT__out = 0U;
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction_address__DOT__out = 0x1000U;
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out = 0U;
    } else {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__immediate__DOT__out 
            = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)
                ? 0U : ((0x6fU == (0x7fU & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                         ? ((((0x80000000U & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)
                               ? 0xfffU : 0U) << 0x14U) 
                            | ((0xff000U & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out) 
                               | ((0x800U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                             >> 9U)) 
                                  | (0x7feU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                               >> 0x14U)))))
                         : ((0x17U == (0x7fU & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                             ? (0xfffff000U & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)
                             : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_55)));
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction_address__DOT__out 
            = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)
                ? 0x1000U : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction_address__DOT__out);
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out 
            = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)
                ? 0U : ((0U == (0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                         >> 0x14U)))
                         ? 0U : ((((0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                             >> 0x14U)) 
                                   == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)) 
                                  & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out))
                                  ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data
                                  : ((0x1fU == (0x1fU 
                                                & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                   >> 0x14U)))
                                      ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_31
                                      : ((0x1eU == 
                                          (0x1fU & 
                                           (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                            >> 0x14U)))
                                          ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_30
                                          : ((0x1dU 
                                              == (0x1fU 
                                                  & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                     >> 0x14U)))
                                              ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_29
                                              : ((0x1cU 
                                                  == 
                                                  (0x1fU 
                                                   & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                      >> 0x14U)))
                                                  ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_28
                                                  : 
                                                 ((0x1bU 
                                                   == 
                                                   (0x1fU 
                                                    & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                       >> 0x14U)))
                                                   ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_27
                                                   : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_154))))))));
    }
    if (vlTOPp->reset) {
        __Vdly__TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mepc = 0U;
    } else {
        if (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint_io_csr_bundle_direct_write_enable) {
            __Vdly__TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mepc 
                = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_clint_jump_flag)
                    ? (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)
                    : ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__jumpping)
                        ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT__pc
                        : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction_address__DOT__out));
        } else {
            if (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_write_enable__DOT__out) {
                if ((0x300U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out))) {
                    __Vdly__TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mepc 
                        = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_1;
                }
            }
        }
    }
    if (vlTOPp->reset) {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_read_data__DOT__out = 0U;
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out = 0U;
    } else {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_read_data__DOT__out 
            = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)
                ? 0U : ((0xc80U == (0xfffU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                              >> 0x14U)))
                         ? (IData)((vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__cycles 
                                    >> 0x20U)) : ((0xc00U 
                                                   == 
                                                   (0xfffU 
                                                    & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                       >> 0x14U)))
                                                   ? (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__cycles)
                                                   : 
                                                  ((0x342U 
                                                    == 
                                                    (0xfffU 
                                                     & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                        >> 0x14U)))
                                                    ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mcause
                                                    : 
                                                   ((0x341U 
                                                     == 
                                                     (0xfffU 
                                                      & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                         >> 0x14U)))
                                                     ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mepc
                                                     : 
                                                    ((0x340U 
                                                      == 
                                                      (0xfffU 
                                                       & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                          >> 0x14U)))
                                                      ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mscratch
                                                      : 
                                                     ((0x305U 
                                                       == 
                                                       (0xfffU 
                                                        & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                           >> 0x14U)))
                                                       ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mtvec
                                                       : 
                                                      ((0x304U 
                                                        == 
                                                        (0xfffU 
                                                         & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                            >> 0x14U)))
                                                        ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mie
                                                        : 
                                                       ((0x300U 
                                                         == 
                                                         (0xfffU 
                                                          & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                             >> 0x14U)))
                                                         ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mstatus
                                                         : 0U)))))))));
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out 
            = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)
                ? 0U : ((0U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                         ? 0U : ((((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address) 
                                   == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)) 
                                  & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out))
                                  ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data
                                  : ((0x1fU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                      ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_31
                                      : ((0x1eU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                          ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_30
                                          : ((0x1dU 
                                              == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                              ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_29
                                              : ((0x1cU 
                                                  == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                  ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_28
                                                  : 
                                                 ((0x1bU 
                                                   == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                   ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_27
                                                   : 
                                                  ((0x1aU 
                                                    == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                    ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_26
                                                    : 
                                                   ((0x19U 
                                                     == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                     ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_25
                                                     : 
                                                    ((0x18U 
                                                      == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                      ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_24
                                                      : 
                                                     ((0x17U 
                                                       == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                       ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_23
                                                       : 
                                                      ((0x16U 
                                                        == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                        ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_22
                                                        : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_117)))))))))))));
    }
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2 
        = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__aluop2_source__DOT__out)
            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__immediate__DOT__out
            : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out);
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__jumpping 
        = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_clint_jump_flag) 
           | (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint_io_csr_bundle_direct_write_enable));
    if (vlTOPp->reset) {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction_address__DOT__out = 0x1000U;
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__cycles = 0ULL;
    } else {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction_address__DOT__out 
            = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)
                ? 0x1000U : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT__pc);
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__cycles 
            = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___cycles_T_1;
    }
    if (vlTOPp->reset) {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mscratch = 0U;
    } else {
        if (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_write_enable__DOT__out) {
            if ((0x304U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out))) {
                if ((0x305U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out))) {
                    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mscratch 
                        = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_12;
                }
            }
        }
    }
    if (vlTOPp->reset) {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mie = 0U;
    } else {
        if (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_write_enable__DOT__out) {
            if ((0x304U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mie 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data;
            }
        }
    }
    if (vlTOPp->reset) {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mcause = 0U;
    } else {
        if (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint_io_csr_bundle_direct_write_enable) {
            vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mcause 
                = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__exception)
                    ? ((0x100073U == vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)
                        ? 3U : ((0x73U == vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)
                                 ? 0xbU : 0xaU)) : 
                   ((1U & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__interrupt_flag__DOT__out)
                     ? 0x80000007U : 0x8000000bU));
        } else {
            if (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_write_enable__DOT__out) {
                if ((0x300U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out))) {
                    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mcause 
                        = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_2;
                }
            }
        }
    }
    if (vlTOPp->reset) {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mstatus = 0U;
    } else {
        if (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint_io_csr_bundle_direct_write_enable) {
            vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mstatus 
                = ((0x30200073U == vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)
                    ? ((0xfffffff0U & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs_io_clint_access_bundle_mstatus) 
                       | ((8U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs_io_clint_access_bundle_mstatus 
                                 >> 4U)) | (7U & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs_io_clint_access_bundle_mstatus)))
                    : (0xfffffff7U & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs_io_clint_access_bundle_mstatus));
        } else {
            if (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_write_enable__DOT__out) {
                if ((0x300U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out))) {
                    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mstatus 
                        = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data;
                }
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x1fU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_31 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x1eU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_30 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x1dU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_29 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x1cU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_28 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x1bU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_27 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x1aU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_26 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x19U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_25 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x18U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_24 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x17U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_23 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    if ((1U & (~ (IData)(vlTOPp->reset)))) {
        if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out) 
             & (0U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)))) {
            if ((0x16U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out))) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_22 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data;
            }
        }
    }
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
        = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__aluop1_source__DOT__out)
            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction_address__DOT__out
            : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out);
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_19 
        = ((QData)((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1)) 
           * (QData)((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_1 
        = (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
           + vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2);
    if (vlTOPp->reset) {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT__pc = 0x1000U;
    } else {
        if (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag) {
            vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT__pc 
                = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint_io_csr_bundle_direct_write_enable)
                    ? ((0x30200073U == vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)
                        ? (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_write_enable__DOT__out) 
                            & (0x341U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out)))
                            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data
                            : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mepc)
                        : (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_write_enable__DOT__out) 
                            & (0x305U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out)))
                            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data
                            : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mtvec))
                    : (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18));
        } else {
            if (vlTOPp->TestTopModule__DOT__rom_loader__DOT__valid) {
                vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT__pc 
                    = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT___pc_T_1;
            }
        }
    }
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___cycles_T_1 
        = (1ULL + vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__cycles);
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__interrupt_flag__DOT__out = 0U;
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out 
        = ((~ (IData)(vlTOPp->reset)) & ((~ (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)) 
                                         & ((((((((0x33U 
                                                   == 
                                                   (0x7fU 
                                                    & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)) 
                                                  | (0x13U 
                                                     == 
                                                     (0x7fU 
                                                      & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))) 
                                                 | (3U 
                                                    == 
                                                    (0x7fU 
                                                     & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))) 
                                                | (0x17U 
                                                   == 
                                                   (0x7fU 
                                                    & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))) 
                                               | (0x37U 
                                                  == 
                                                  (0x7fU 
                                                   & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))) 
                                              | (0x6fU 
                                                 == 
                                                 (0x7fU 
                                                  & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))) 
                                             | (0x67U 
                                                == 
                                                (0x7fU 
                                                 & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))) 
                                            | (0x73U 
                                               == (0x7fU 
                                                   & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)))));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out 
        = ((IData)(vlTOPp->reset) ? 0U : ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)
                                           ? 0U : (0x1fU 
                                                   & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                      >> 7U))));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mepc 
        = __Vdly__TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mepc;
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT___pc_T_1 
        = ((IData)(4U) + vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT__pc);
    if (vlTOPp->reset) {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mtvec = 0U;
    } else {
        if (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_write_enable__DOT__out) {
            if ((0x304U != (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out))) {
                if ((0x305U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out))) {
                    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mtvec 
                        = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data;
                }
            }
        }
    }
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
        = ((IData)(vlTOPp->reset) ? 0x13U : ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)
                                              ? 0x13U
                                              : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_write_enable__DOT__out 
        = ((~ (IData)(vlTOPp->reset)) & ((~ (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)) 
                                         & ((0x73U 
                                             == (0x7fU 
                                                 & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)) 
                                            & ((((((1U 
                                                    == 
                                                    (7U 
                                                     & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                        >> 0xcU))) 
                                                   | (5U 
                                                      == 
                                                      (7U 
                                                       & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                          >> 0xcU)))) 
                                                  | (2U 
                                                     == 
                                                     (7U 
                                                      & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                         >> 0xcU)))) 
                                                 | (6U 
                                                    == 
                                                    (7U 
                                                     & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                        >> 0xcU)))) 
                                                | (3U 
                                                   == 
                                                   (7U 
                                                    & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                       >> 0xcU)))) 
                                               | (7U 
                                                  == 
                                                  (7U 
                                                   & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                      >> 0xcU)))))));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out 
        = ((IData)(vlTOPp->reset) ? 0U : ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)
                                           ? 0U : (0xfffU 
                                                   & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                      >> 0x14U))));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_2 
        = ((0x6fU == (0x7fU & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)) 
           | (0x67U == (0x7fU & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_26 
        = ((0x63U == (0x7fU & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)) 
           & ((7U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                            >> 0xcU))) ? (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out 
                                          >= vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out)
               : ((6U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                >> 0xcU))) ? (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out 
                                              < vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out)
                   : ((5U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                    >> 0xcU))) ? VL_GTES_III(1,32,32, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out)
                       : ((4U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                        >> 0xcU))) ? 
                          VL_LTS_III(1,32,32, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out)
                           : ((1U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                            >> 0xcU)))
                               ? (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out 
                                  != vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out)
                               : ((0U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                >> 0xcU))) 
                                  & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out 
                                     == vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out))))))));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__exception 
        = ((0x73U == vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out) 
           | (0x100073U == vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data 
        = ((6U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                         >> 0xcU))) ? (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_read_data__DOT__out 
                                       | (0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                   >> 0xfU)))
            : ((7U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                             >> 0xcU))) ? (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_read_data__DOT__out 
                                           & (~ (0x1fU 
                                                 & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                    >> 0xfU))))
                : ((5U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                 >> 0xcU))) ? (0x1fU 
                                               & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                  >> 0xfU))
                    : ((2U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                     >> 0xcU))) ? (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_read_data__DOT__out 
                                                   | vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out)
                        : ((3U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                         >> 0xcU)))
                            ? (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_read_data__DOT__out 
                               & (~ vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out))
                            : ((1U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                             >> 0xcU)))
                                ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out
                                : 0U))))));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT___GEN_0 
        = ((1U == (0x7fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                            >> 0x19U))) ? ((7U == (7U 
                                                   & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                      >> 0xcU)))
                                            ? 0x12U
                                            : ((6U 
                                                == 
                                                (7U 
                                                 & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                    >> 0xcU)))
                                                ? 0x11U
                                                : (
                                                   (5U 
                                                    == 
                                                    (7U 
                                                     & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                        >> 0xcU)))
                                                    ? 0x10U
                                                    : 
                                                   ((4U 
                                                     == 
                                                     (7U 
                                                      & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                         >> 0xcU)))
                                                     ? 0xfU
                                                     : 
                                                    ((3U 
                                                      == 
                                                      (7U 
                                                       & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                          >> 0xcU)))
                                                      ? 0xeU
                                                      : 
                                                     ((2U 
                                                       == 
                                                       (7U 
                                                        & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                           >> 0xcU)))
                                                       ? 0xdU
                                                       : 
                                                      ((1U 
                                                        == 
                                                        (7U 
                                                         & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                            >> 0xcU)))
                                                        ? 0xcU
                                                        : 0xbU)))))))
            : ((5U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                             >> 0xcU))) ? ((0x40000000U 
                                            & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)
                                            ? 9U : 8U)
                : ((7U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                 >> 0xcU))) ? 7U : 
                   ((6U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                  >> 0xcU))) ? 6U : 
                    ((4U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                   >> 0xcU))) ? 5U : 
                     ((3U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                    >> 0xcU))) ? 0xaU
                       : ((2U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                        >> 0xcU))) ? 4U
                           : ((1U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                            >> 0xcU)))
                               ? 3U : ((0x40000000U 
                                        & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)
                                        ? 2U : 1U)))))))));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_clint_jump_flag 
        = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_2) 
           | (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_26));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct 
        = ((0x13U == (0x7fU & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out))
            ? ((5U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                             >> 0xcU))) ? ((0x40000000U 
                                            & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)
                                            ? 9U : 8U)
                : ((7U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                 >> 0xcU))) ? 7U : 
                   ((6U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                  >> 0xcU))) ? 6U : 
                    ((4U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                   >> 0xcU))) ? 5U : 
                     ((3U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                    >> 0xcU))) ? 0xaU
                       : ((2U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                        >> 0xcU))) ? 4U
                           : ((1U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                            >> 0xcU)))
                               ? 3U : 1U))))))) : (
                                                   (0x33U 
                                                    == 
                                                    (0x7fU 
                                                     & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out))
                                                    ? (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT___GEN_0)
                                                    : 
                                                   ((0x63U 
                                                     == 
                                                     (0x7fU 
                                                      & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out))
                                                     ? 0x13U
                                                     : 
                                                    ((3U 
                                                      == 
                                                      (0x7fU 
                                                       & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out))
                                                      ? 1U
                                                      : 
                                                     ((0x23U 
                                                       == 
                                                       (0x7fU 
                                                        & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out))
                                                       ? 1U
                                                       : 
                                                      ((0x6fU 
                                                        == 
                                                        (0x7fU 
                                                         & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out))
                                                        ? 0x13U
                                                        : 
                                                       ((0x67U 
                                                         == 
                                                         (0x7fU 
                                                          & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)) 
                                                        | ((0x37U 
                                                            == 
                                                            (0x7fU 
                                                             & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)) 
                                                           | (0x17U 
                                                              == 
                                                              (0x7fU 
                                                               & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out))))))))));
    if ((0x341U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out))) {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_1 
            = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data;
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_2 
            = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mcause;
    } else {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_1 
            = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mepc;
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_2 
            = ((0x342U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out))
                ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data
                : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mcause);
    }
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_12 
        = ((0x340U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out))
            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data
            : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mscratch);
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs_io_clint_access_bundle_mstatus 
        = (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_write_enable__DOT__out) 
            & (0x300U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out)))
            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data
            : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mstatus);
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
        = ((IData)(vlTOPp->reset) ? 0x13U : ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag)
                                              ? 0x13U
                                              : ((IData)(vlTOPp->TestTopModule__DOT__rom_loader__DOT__valid)
                                                  ? 
                                                 (((vlTOPp->TestTopModule__DOT__mem__DOT__mem_3
                                                    [vlTOPp->TestTopModule__DOT__mem__DOT__mem_3_io_instruction_MPORT_addr_pipe_0] 
                                                    << 0x18U) 
                                                   | (vlTOPp->TestTopModule__DOT__mem__DOT__mem_2
                                                      [vlTOPp->TestTopModule__DOT__mem__DOT__mem_3_io_instruction_MPORT_addr_pipe_0] 
                                                      << 0x10U)) 
                                                  | ((vlTOPp->TestTopModule__DOT__mem__DOT__mem_1
                                                      [vlTOPp->TestTopModule__DOT__mem__DOT__mem_3_io_instruction_MPORT_addr_pipe_0] 
                                                      << 8U) 
                                                     | vlTOPp->TestTopModule__DOT__mem__DOT__mem_0
                                                     [vlTOPp->TestTopModule__DOT__mem__DOT__mem_3_io_instruction_MPORT_addr_pipe_0]))
                                                  : 0x13U)));
    VL_EXTENDS_WI(65,32, __Vtemp14, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1);
    __Vtemp15[0U] = __Vtemp14[0U];
    __Vtemp15[1U] = __Vtemp14[1U];
    __Vtemp15[2U] = (1U & __Vtemp14[2U]);
    VL_EXTENDS_WQ(65,33, __Vtemp17, (QData)((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)));
    __Vtemp18[0U] = __Vtemp17[0U];
    __Vtemp18[1U] = __Vtemp17[1U];
    __Vtemp18[2U] = (1U & __Vtemp17[2U]);
    VL_MULS_WWW(65,65,65, __Vtemp19, __Vtemp15, __Vtemp18);
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_8 
        = (0x1ffffffffULL & ((0xbU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                              ? (QData)((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_19))
                              : ((0xcU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                  ? (QData)((IData)(
                                                    (VL_MULS_QQQ(64,64,64, 
                                                                 VL_EXTENDS_QI(64,32, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1), 
                                                                 VL_EXTENDS_QI(64,32, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)) 
                                                     >> 0x20U)))
                                  : ((0xdU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                      ? (QData)((IData)(
                                                        __Vtemp19[1U]))
                                      : ((0xeU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                          ? (QData)((IData)(
                                                            (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_19 
                                                             >> 0x20U)))
                                          : ((0xfU 
                                              == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                              ? ((0U 
                                                  == vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)
                                                  ? 0xffffffffULL
                                                  : 
                                                 VL_DIVS_QQQ(33, 
                                                             (0x1ffffffffULL 
                                                              & VL_EXTENDS_QI(33,32, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1)), 
                                                             (0x1ffffffffULL 
                                                              & VL_EXTENDS_QI(33,32, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2))))
                                              : (QData)((IData)(
                                                                ((0x10U 
                                                                  == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                                  ? 
                                                                 ((0U 
                                                                   == vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)
                                                                   ? 0xffffffffU
                                                                   : 
                                                                  VL_DIV_III(32, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2))
                                                                  : 
                                                                 ((0x11U 
                                                                   == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                                   ? 
                                                                  ((0U 
                                                                    == vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)
                                                                    ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1
                                                                    : 
                                                                   VL_MODDIVS_III(32, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2))
                                                                   : 
                                                                  ((0x12U 
                                                                    == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                                    ? 
                                                                   ((0U 
                                                                     == vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)
                                                                     ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1
                                                                     : 
                                                                    VL_MODDIV_III(32, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2))
                                                                    : 
                                                                   ((0x13U 
                                                                     == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                                     ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_1
                                                                     : 0U))))))))))));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__interrupt 
        = ((0U != vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__interrupt_flag__DOT__out) 
           & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs_io_clint_access_bundle_mstatus 
              >> 3U));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18 
        = (0x7fffffffffffffffULL & ((1U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                     ? (QData)((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_1))
                                     : ((2U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                         ? (QData)((IData)(
                                                           (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
                                                            - vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)))
                                         : ((3U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                             ? ((QData)((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1)) 
                                                << 
                                                (0x1fU 
                                                 & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2))
                                             : ((4U 
                                                 == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                 ? (QData)((IData)(
                                                                   VL_LTS_III(1,32,32, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)))
                                                 : 
                                                ((5U 
                                                  == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                  ? (QData)((IData)(
                                                                    (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
                                                                     ^ vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)))
                                                  : 
                                                 ((6U 
                                                   == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                   ? (QData)((IData)(
                                                                     (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
                                                                      | vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)))
                                                   : 
                                                  ((7U 
                                                    == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                    ? (QData)((IData)(
                                                                      (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
                                                                       & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)))
                                                    : 
                                                   ((8U 
                                                     == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                     ? (QData)((IData)(
                                                                       (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
                                                                        >> 
                                                                        (0x1fU 
                                                                         & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2))))
                                                     : 
                                                    ((9U 
                                                      == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                      ? (QData)((IData)(
                                                                        VL_SHIFTRS_III(32,32,5, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1, 
                                                                                (0x1fU 
                                                                                & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2))))
                                                      : 
                                                     ((0xaU 
                                                       == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                       ? (QData)((IData)(
                                                                         (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
                                                                          < vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)))
                                                       : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_8)))))))))));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint_io_csr_bundle_direct_write_enable 
        = (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__exception) 
            | (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__interrupt)) 
           | (0x30200073U == vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_9 
        = ((((0x80000000U & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)
              ? 0x1fffffU : 0U) << 0xbU) | (0x7ffU 
                                            & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                               >> 0x14U)));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_141 
        = ((0xdU == (0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                              >> 0x14U))) ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_13
            : ((0xcU == (0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                  >> 0x14U))) ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_12
                : ((0xbU == (0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                      >> 0x14U))) ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_11
                    : ((0xaU == (0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                          >> 0x14U)))
                        ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_10
                        : ((9U == (0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                            >> 0x14U)))
                            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_9
                            : ((8U == (0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                >> 0x14U)))
                                ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_8
                                : ((7U == (0x1fU & 
                                           (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                            >> 0x14U)))
                                    ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_7
                                    : ((6U == (0x1fU 
                                               & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                  >> 0x14U)))
                                        ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_6
                                        : ((5U == (0x1fU 
                                                   & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                      >> 0x14U)))
                                            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_5
                                            : ((4U 
                                                == 
                                                (0x1fU 
                                                 & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                    >> 0x14U)))
                                                ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_4
                                                : (
                                                   (3U 
                                                    == 
                                                    (0x1fU 
                                                     & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                        >> 0x14U)))
                                                    ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_3
                                                    : 
                                                   ((2U 
                                                     == 
                                                     (0x1fU 
                                                      & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                         >> 0x14U)))
                                                     ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_2
                                                     : 
                                                    ((1U 
                                                      == 
                                                      (0x1fU 
                                                       & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                          >> 0x14U)))
                                                      ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_1
                                                      : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_0)))))))))))));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address 
        = ((0x37U == (0x7fU & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
            ? 0U : (0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                             >> 0xfU)));
    if ((1U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                      >> 0xcU)))) {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_13 
            = (0U == (3U & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)));
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_16 
            = (0U != (3U & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)));
    } else {
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_13 
            = (2U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                            >> 0xcU)));
        vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_16 
            = (2U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                            >> 0xcU)));
    }
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag 
        = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint_io_csr_bundle_direct_write_enable) 
           | ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_2) 
              | (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_26)));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_55 
        = ((0x37U == (0x7fU & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
            ? (0xfffff000U & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)
            : ((0x63U == (0x7fU & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                ? ((((0x80000000U & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)
                      ? 0xfffffU : 0U) << 0xcU) | (
                                                   (0x800U 
                                                    & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                       << 4U)) 
                                                   | ((0x7e0U 
                                                       & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                          >> 0x14U)) 
                                                      | (0x1eU 
                                                         & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                            >> 7U)))))
                : ((0x23U == (0x7fU & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                    ? ((((0x80000000U & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)
                          ? 0x1fffffU : 0U) << 0xbU) 
                       | ((0x7e0U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                     >> 0x14U)) | (0x1fU 
                                                   & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                      >> 7U))))
                    : ((0x67U == (0x7fU & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                        ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_9
                        : ((3U == (0x7fU & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_9
                            : ((0x13U == (0x7fU & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                                ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_9
                                : ((((0x80000000U & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)
                                      ? 0xfffffU : 0U) 
                                    << 0xcU) | (0xfffU 
                                                & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                   >> 0x14U)))))))));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_154 
        = ((0x1aU == (0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                               >> 0x14U))) ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_26
            : ((0x19U == (0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                   >> 0x14U))) ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_25
                : ((0x18U == (0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                       >> 0x14U))) ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_24
                    : ((0x17U == (0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                           >> 0x14U)))
                        ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_23
                        : ((0x16U == (0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                               >> 0x14U)))
                            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_22
                            : ((0x15U == (0x1fU & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                   >> 0x14U)))
                                ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_21
                                : ((0x14U == (0x1fU 
                                              & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                 >> 0x14U)))
                                    ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_20
                                    : ((0x13U == (0x1fU 
                                                  & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                     >> 0x14U)))
                                        ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_19
                                        : ((0x12U == 
                                            (0x1fU 
                                             & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                >> 0x14U)))
                                            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_18
                                            : ((0x11U 
                                                == 
                                                (0x1fU 
                                                 & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                    >> 0x14U)))
                                                ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_17
                                                : (
                                                   (0x10U 
                                                    == 
                                                    (0x1fU 
                                                     & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                        >> 0x14U)))
                                                    ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_16
                                                    : 
                                                   ((0xfU 
                                                     == 
                                                     (0x1fU 
                                                      & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                         >> 0x14U)))
                                                     ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_15
                                                     : 
                                                    ((0xeU 
                                                      == 
                                                      (0x1fU 
                                                       & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                          >> 0x14U)))
                                                      ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_14
                                                      : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_141)))))))))))));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_117 
        = ((0x15U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_21
            : ((0x14U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_20
                : ((0x13U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                    ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_19
                    : ((0x12U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                        ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_18
                        : ((0x11U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_17
                            : ((0x10U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_16
                                : ((0xfU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                    ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_15
                                    : ((0xeU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                        ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_14
                                        : ((0xdU == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_13
                                            : ((0xcU 
                                                == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_12
                                                : (
                                                   (0xbU 
                                                    == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                    ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_11
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                     ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_10
                                                     : 
                                                    ((9U 
                                                      == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                      ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_9
                                                      : 
                                                     ((8U 
                                                       == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                       ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_8
                                                       : 
                                                      ((7U 
                                                        == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                        ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_7
                                                        : 
                                                       ((6U 
                                                         == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                         ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_6
                                                         : 
                                                        ((5U 
                                                          == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                          ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_5
                                                          : 
                                                         ((4U 
                                                           == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                           ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_4
                                                           : 
                                                          ((3U 
                                                            == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_3
                                                            : 
                                                           ((2U 
                                                             == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                             ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_2
                                                             : 
                                                            ((1U 
                                                              == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                              ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_1
                                                              : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_0)))))))))))))))))))));
}

VL_INLINE_OPT void VTestTopModule::_combo__TOP__5(VTestTopModule__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_combo__TOP__5\n"); );
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_181 
        = ((0x15U == (IData)(vlTOPp->io_regs_debug_read_address))
            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_21
            : ((0x14U == (IData)(vlTOPp->io_regs_debug_read_address))
                ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_20
                : ((0x13U == (IData)(vlTOPp->io_regs_debug_read_address))
                    ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_19
                    : ((0x12U == (IData)(vlTOPp->io_regs_debug_read_address))
                        ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_18
                        : ((0x11U == (IData)(vlTOPp->io_regs_debug_read_address))
                            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_17
                            : ((0x10U == (IData)(vlTOPp->io_regs_debug_read_address))
                                ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_16
                                : ((0xfU == (IData)(vlTOPp->io_regs_debug_read_address))
                                    ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_15
                                    : ((0xeU == (IData)(vlTOPp->io_regs_debug_read_address))
                                        ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_14
                                        : ((0xdU == (IData)(vlTOPp->io_regs_debug_read_address))
                                            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_13
                                            : ((0xcU 
                                                == (IData)(vlTOPp->io_regs_debug_read_address))
                                                ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_12
                                                : (
                                                   (0xbU 
                                                    == (IData)(vlTOPp->io_regs_debug_read_address))
                                                    ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_11
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(vlTOPp->io_regs_debug_read_address))
                                                     ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_10
                                                     : 
                                                    ((9U 
                                                      == (IData)(vlTOPp->io_regs_debug_read_address))
                                                      ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_9
                                                      : 
                                                     ((8U 
                                                       == (IData)(vlTOPp->io_regs_debug_read_address))
                                                       ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_8
                                                       : 
                                                      ((7U 
                                                        == (IData)(vlTOPp->io_regs_debug_read_address))
                                                        ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_7
                                                        : 
                                                       ((6U 
                                                         == (IData)(vlTOPp->io_regs_debug_read_address))
                                                         ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_6
                                                         : 
                                                        ((5U 
                                                          == (IData)(vlTOPp->io_regs_debug_read_address))
                                                          ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_5
                                                          : 
                                                         ((4U 
                                                           == (IData)(vlTOPp->io_regs_debug_read_address))
                                                           ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_4
                                                           : 
                                                          ((3U 
                                                            == (IData)(vlTOPp->io_regs_debug_read_address))
                                                            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_3
                                                            : 
                                                           ((2U 
                                                             == (IData)(vlTOPp->io_regs_debug_read_address))
                                                             ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_2
                                                             : 
                                                            ((1U 
                                                              == (IData)(vlTOPp->io_regs_debug_read_address))
                                                              ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_1
                                                              : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_0)))))))))))))))))))));
}

VL_INLINE_OPT void VTestTopModule::_sequent__TOP__6(VTestTopModule__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_sequent__TOP__6\n"); );
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->TestTopModule__DOT__mem__DOT__mem_3_io_instruction_MPORT_addr_pipe_0 
        = vlTOPp->__Vdly__TestTopModule__DOT__mem__DOT__mem_3_io_instruction_MPORT_addr_pipe_0;
    if (vlTOPp->__Vdlyvset__TestTopModule__DOT__mem__DOT__mem_3__v0) {
        vlTOPp->TestTopModule__DOT__mem__DOT__mem_3[vlTOPp->__Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_3__v0] 
            = vlTOPp->__Vdlyvval__TestTopModule__DOT__mem__DOT__mem_3__v0;
    }
    if (vlTOPp->__Vdlyvset__TestTopModule__DOT__mem__DOT__mem_2__v0) {
        vlTOPp->TestTopModule__DOT__mem__DOT__mem_2[vlTOPp->__Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_2__v0] 
            = vlTOPp->__Vdlyvval__TestTopModule__DOT__mem__DOT__mem_2__v0;
    }
    if (vlTOPp->__Vdlyvset__TestTopModule__DOT__mem__DOT__mem_1__v0) {
        vlTOPp->TestTopModule__DOT__mem__DOT__mem_1[vlTOPp->__Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_1__v0] 
            = vlTOPp->__Vdlyvval__TestTopModule__DOT__mem__DOT__mem_1__v0;
    }
    if (vlTOPp->__Vdlyvset__TestTopModule__DOT__mem__DOT__mem_0__v0) {
        vlTOPp->TestTopModule__DOT__mem__DOT__mem_0[vlTOPp->__Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_0__v0] 
            = vlTOPp->__Vdlyvval__TestTopModule__DOT__mem__DOT__mem_0__v0;
    }
    vlTOPp->io_mem_debug_read_data = (((vlTOPp->TestTopModule__DOT__mem__DOT__mem_3
                                        [vlTOPp->TestTopModule__DOT__mem__DOT__mem_1_io_debug_read_data_MPORT_addr_pipe_0] 
                                        << 0x18U) | 
                                       (vlTOPp->TestTopModule__DOT__mem__DOT__mem_2
                                        [vlTOPp->TestTopModule__DOT__mem__DOT__mem_1_io_debug_read_data_MPORT_addr_pipe_0] 
                                        << 0x10U)) 
                                      | ((vlTOPp->TestTopModule__DOT__mem__DOT__mem_1
                                          [vlTOPp->TestTopModule__DOT__mem__DOT__mem_1_io_debug_read_data_MPORT_addr_pipe_0] 
                                          << 8U) | 
                                         vlTOPp->TestTopModule__DOT__mem__DOT__mem_0
                                         [vlTOPp->TestTopModule__DOT__mem__DOT__mem_1_io_debug_read_data_MPORT_addr_pipe_0]));
    if (vlTOPp->reset) {
        vlTOPp->__Vdly__TestTopModule__DOT__rom_loader__DOT__address = 0U;
    } else {
        if ((0xe7U >= vlTOPp->TestTopModule__DOT__rom_loader__DOT__address)) {
            vlTOPp->__Vdly__TestTopModule__DOT__rom_loader__DOT__address 
                = vlTOPp->TestTopModule__DOT__rom_loader__DOT___address_T_1;
        }
    }
    if (vlTOPp->reset) {
        vlTOPp->TestTopModule__DOT__rom_loader__DOT__valid = 0U;
    } else {
        if ((0xe7U >= vlTOPp->TestTopModule__DOT__rom_loader__DOT__address)) {
            vlTOPp->TestTopModule__DOT__rom_loader__DOT__valid 
                = vlTOPp->TestTopModule__DOT__rom_loader__DOT___GEN_0;
        }
    }
    vlTOPp->TestTopModule__DOT__rom_loader__DOT__address 
        = vlTOPp->__Vdly__TestTopModule__DOT__rom_loader__DOT__address;
    vlTOPp->TestTopModule__DOT__rom_loader__DOT___address_T_1 
        = ((IData)(1U) + vlTOPp->TestTopModule__DOT__rom_loader__DOT__address);
    vlTOPp->TestTopModule__DOT__rom_loader__DOT___GEN_0 
        = ((0xe7U == vlTOPp->TestTopModule__DOT__rom_loader__DOT__address) 
           | (IData)(vlTOPp->TestTopModule__DOT__rom_loader__DOT__valid));
    vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data 
        = ((IData)(vlTOPp->TestTopModule__DOT__rom_loader__DOT__valid)
            ? (((vlTOPp->TestTopModule__DOT__mem__DOT__mem_3
                 [vlTOPp->TestTopModule__DOT__mem__DOT__mem_1_io_bundle_read_data_MPORT_addr_pipe_0] 
                 << 0x18U) | (vlTOPp->TestTopModule__DOT__mem__DOT__mem_2
                              [vlTOPp->TestTopModule__DOT__mem__DOT__mem_1_io_bundle_read_data_MPORT_addr_pipe_0] 
                              << 0x10U)) | ((vlTOPp->TestTopModule__DOT__mem__DOT__mem_1
                                             [vlTOPp->TestTopModule__DOT__mem__DOT__mem_1_io_bundle_read_data_MPORT_addr_pipe_0] 
                                             << 8U) 
                                            | vlTOPp->TestTopModule__DOT__mem__DOT__mem_0
                                            [vlTOPp->TestTopModule__DOT__mem__DOT__mem_1_io_bundle_read_data_MPORT_addr_pipe_0]))
            : 0U);
}

VL_INLINE_OPT void VTestTopModule::_multiclk__TOP__7(VTestTopModule__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_multiclk__TOP__7\n"); );
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (vlTOPp->TestTopModule__DOT__rom_loader__DOT__valid) {
        vlTOPp->TestTopModule__DOT__mem_io_bundle_address 
            = (0x1fffffffU & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18));
        vlTOPp->TestTopModule__DOT__mem_io_bundle_write_enable 
            = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out;
        vlTOPp->TestTopModule__DOT__mem_io_bundle_write_data 
            = (IData)(((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out)
                        ? 0ULL : ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out)
                                   ? (0xffffffffffULL 
                                      & ((0U == (7U 
                                                 & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                    >> 0xcU)))
                                          ? ((QData)((IData)(
                                                             (0x1ffU 
                                                              & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out))) 
                                             << (0x18U 
                                                 & ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18) 
                                                    << 3U)))
                                          : ((1U == 
                                              (7U & 
                                               (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                >> 0xcU)))
                                              ? ((0U 
                                                  == 
                                                  (3U 
                                                   & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)))
                                                  ? (QData)((IData)(
                                                                    (0x1ffffU 
                                                                     & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out)))
                                                  : 
                                                 ((QData)((IData)(
                                                                  (0x1ffffU 
                                                                   & vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out))) 
                                                  << 0x10U))
                                              : (QData)((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out)))))
                                   : 0ULL)));
    } else {
        vlTOPp->TestTopModule__DOT__mem_io_bundle_address 
            = (IData)(((0xe7U >= vlTOPp->TestTopModule__DOT__rom_loader__DOT__address)
                        ? (0x7ffffffffULL & (0x1000ULL 
                                             + ((QData)((IData)(vlTOPp->TestTopModule__DOT__rom_loader__DOT__address)) 
                                                << 2U)))
                        : 0ULL));
        vlTOPp->TestTopModule__DOT__mem_io_bundle_write_enable 
            = (0xe7U >= vlTOPp->TestTopModule__DOT__rom_loader__DOT__address);
        vlTOPp->TestTopModule__DOT__mem_io_bundle_write_data 
            = ((0xe7U >= vlTOPp->TestTopModule__DOT__rom_loader__DOT__address)
                ? ((0xe7U >= (0xffU & vlTOPp->TestTopModule__DOT__rom_loader__DOT__address))
                    ? vlTOPp->TestTopModule__DOT__instruction_rom__DOT__mem
                   [(0xffU & vlTOPp->TestTopModule__DOT__rom_loader__DOT__address)]
                    : 0U) : 0U);
    }
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___mem_read_data_T_67 
        = ((4U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                         >> 0xcU))) ? ((2U == (3U & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)))
                                        ? (0xffU & 
                                           (vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data 
                                            >> 0x10U))
                                        : ((1U == (3U 
                                                   & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)))
                                            ? (0xffU 
                                               & (vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data 
                                                  >> 8U))
                                            : ((0U 
                                                == 
                                                (3U 
                                                 & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)))
                                                ? (0xffU 
                                                   & vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data)
                                                : (0xffU 
                                                   & (vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data 
                                                      >> 0x18U)))))
            : ((0U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                             >> 0xcU))) ? ((2U == (3U 
                                                   & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)))
                                            ? ((((0x800000U 
                                                  & vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data)
                                                  ? 0xffffffU
                                                  : 0U) 
                                                << 8U) 
                                               | (0xffU 
                                                  & (vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data 
                                                     >> 0x10U)))
                                            : ((1U 
                                                == 
                                                (3U 
                                                 & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)))
                                                ? (
                                                   (((0x8000U 
                                                      & vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data)
                                                      ? 0xffffffU
                                                      : 0U) 
                                                    << 8U) 
                                                   | (0xffU 
                                                      & (vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data 
                                                         >> 8U)))
                                                : (
                                                   (0U 
                                                    == 
                                                    (3U 
                                                     & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)))
                                                    ? 
                                                   ((((0x80U 
                                                       & vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data)
                                                       ? 0xffffffU
                                                       : 0U) 
                                                     << 8U) 
                                                    | (0xffU 
                                                       & vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data))
                                                    : 
                                                   ((((0x80000000U 
                                                       & vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data)
                                                       ? 0xffffffU
                                                       : 0U) 
                                                     << 8U) 
                                                    | (0xffU 
                                                       & (vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data 
                                                          >> 0x18U))))))
                : 0U));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data 
        = ((3U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_source__DOT__out))
            ? ((IData)(4U) + vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction_address__DOT__out)
            : ((2U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_source__DOT__out))
                ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_read_data__DOT__out
                : ((1U == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_source__DOT__out))
                    ? ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out)
                        ? ((2U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                         >> 0xcU)))
                            ? vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data
                            : ((5U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                             >> 0xcU)))
                                ? ((0U == (3U & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)))
                                    ? (0xffffU & vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data)
                                    : (0xffffU & (vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data 
                                                  >> 0x10U)))
                                : ((1U == (7U & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                 >> 0xcU)))
                                    ? ((0U == (3U & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18)))
                                        ? ((((0x8000U 
                                              & vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data)
                                              ? 0xffffU
                                              : 0U) 
                                            << 0x10U) 
                                           | (0xffffU 
                                              & vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data))
                                        : ((((0x80000000U 
                                              & vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data)
                                              ? 0xffffU
                                              : 0U) 
                                            << 0x10U) 
                                           | (0xffffU 
                                              & (vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data 
                                                 >> 0x10U))))
                                    : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___mem_read_data_T_67)))
                        : 0U) : (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18))));
}

VL_INLINE_OPT void VTestTopModule::_combo__TOP__8(VTestTopModule__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_combo__TOP__8\n"); );
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->io_regs_debug_read_data = ((0U == (IData)(vlTOPp->io_regs_debug_read_address))
                                        ? 0U : ((((IData)(vlTOPp->io_regs_debug_read_address) 
                                                  == (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)) 
                                                 & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out))
                                                 ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data
                                                 : 
                                                ((0x1fU 
                                                  == (IData)(vlTOPp->io_regs_debug_read_address))
                                                  ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_31
                                                  : 
                                                 ((0x1eU 
                                                   == (IData)(vlTOPp->io_regs_debug_read_address))
                                                   ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_30
                                                   : 
                                                  ((0x1dU 
                                                    == (IData)(vlTOPp->io_regs_debug_read_address))
                                                    ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_29
                                                    : 
                                                   ((0x1cU 
                                                     == (IData)(vlTOPp->io_regs_debug_read_address))
                                                     ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_28
                                                     : 
                                                    ((0x1bU 
                                                      == (IData)(vlTOPp->io_regs_debug_read_address))
                                                      ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_27
                                                      : 
                                                     ((0x1aU 
                                                       == (IData)(vlTOPp->io_regs_debug_read_address))
                                                       ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_26
                                                       : 
                                                      ((0x19U 
                                                        == (IData)(vlTOPp->io_regs_debug_read_address))
                                                        ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_25
                                                        : 
                                                       ((0x18U 
                                                         == (IData)(vlTOPp->io_regs_debug_read_address))
                                                         ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_24
                                                         : 
                                                        ((0x17U 
                                                          == (IData)(vlTOPp->io_regs_debug_read_address))
                                                          ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_23
                                                          : 
                                                         ((0x16U 
                                                           == (IData)(vlTOPp->io_regs_debug_read_address))
                                                           ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_22
                                                           : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_181))))))))))));
}

void VTestTopModule::_eval(VTestTopModule__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_eval\n"); );
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->clock) & (~ (IData)(vlTOPp->__Vclklast__TOP__clock)))) {
        vlTOPp->_sequent__TOP__2(vlSymsp);
    }
    if (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs_clock) 
         & (~ (IData)(vlTOPp->__Vclklast__TOP__TestTopModule__DOT__cpu__DOT__cpu__DOT__regs_clock)))) {
        vlTOPp->_sequent__TOP__4(vlSymsp);
    }
    vlTOPp->_combo__TOP__5(vlSymsp);
    if (((IData)(vlTOPp->clock) & (~ (IData)(vlTOPp->__Vclklast__TOP__clock)))) {
        vlTOPp->_sequent__TOP__6(vlSymsp);
    }
    if ((((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs_clock) 
          & (~ (IData)(vlTOPp->__Vclklast__TOP__TestTopModule__DOT__cpu__DOT__cpu__DOT__regs_clock))) 
         | ((IData)(vlTOPp->clock) & (~ (IData)(vlTOPp->__Vclklast__TOP__clock))))) {
        vlTOPp->_multiclk__TOP__7(vlSymsp);
    }
    vlTOPp->_combo__TOP__8(vlSymsp);
    // Final
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
    vlTOPp->__Vclklast__TOP__TestTopModule__DOT__cpu__DOT__cpu__DOT__regs_clock 
        = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs_clock;
}

VL_INLINE_OPT QData VTestTopModule::_change_request(VTestTopModule__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_change_request\n"); );
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    return (vlTOPp->_change_request_1(vlSymsp));
}

VL_INLINE_OPT QData VTestTopModule::_change_request_1(VTestTopModule__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_change_request_1\n"); );
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VTestTopModule::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((clock & 0xfeU))) {
        Verilated::overWidthError("clock");}
    if (VL_UNLIKELY((reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
    if (VL_UNLIKELY((io_regs_debug_read_address & 0xe0U))) {
        Verilated::overWidthError("io_regs_debug_read_address");}
}
#endif  // VL_DEBUG
