// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VTop.h for the primary calling header

#include "VTop.h"
#include "VTop__Syms.h"

//==========

VL_CTOR_IMP(VTop) {
    VTop__Syms* __restrict vlSymsp = __VlSymsp = new VTop__Syms(this, name());
    VTop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void VTop::__Vconfigure(VTop__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    Verilated::timeunit(-12);
    Verilated::timeprecision(-12);
}

VTop::~VTop() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = NULL);
}

void VTop::_initial__TOP__1(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop::_initial__TOP__1\n"); );
    VTop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->io_device_select = 0U;
}

void VTop::_settle__TOP__3(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop::_settle__TOP__3\n"); );
    VTop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    WData/*95:0*/ __Vtemp12[3];
    WData/*95:0*/ __Vtemp13[3];
    WData/*95:0*/ __Vtemp15[3];
    WData/*95:0*/ __Vtemp16[3];
    WData/*95:0*/ __Vtemp17[3];
    // Body
    vlTOPp->io_memory_bundle_write_enable = vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out;
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_181 
        = ((0x15U == (IData)(vlTOPp->io_debug_read_address))
            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_21
            : ((0x14U == (IData)(vlTOPp->io_debug_read_address))
                ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_20
                : ((0x13U == (IData)(vlTOPp->io_debug_read_address))
                    ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_19
                    : ((0x12U == (IData)(vlTOPp->io_debug_read_address))
                        ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_18
                        : ((0x11U == (IData)(vlTOPp->io_debug_read_address))
                            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_17
                            : ((0x10U == (IData)(vlTOPp->io_debug_read_address))
                                ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_16
                                : ((0xfU == (IData)(vlTOPp->io_debug_read_address))
                                    ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_15
                                    : ((0xeU == (IData)(vlTOPp->io_debug_read_address))
                                        ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_14
                                        : ((0xdU == (IData)(vlTOPp->io_debug_read_address))
                                            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_13
                                            : ((0xcU 
                                                == (IData)(vlTOPp->io_debug_read_address))
                                                ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_12
                                                : (
                                                   (0xbU 
                                                    == (IData)(vlTOPp->io_debug_read_address))
                                                    ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_11
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(vlTOPp->io_debug_read_address))
                                                     ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_10
                                                     : 
                                                    ((9U 
                                                      == (IData)(vlTOPp->io_debug_read_address))
                                                      ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_9
                                                      : 
                                                     ((8U 
                                                       == (IData)(vlTOPp->io_debug_read_address))
                                                       ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_8
                                                       : 
                                                      ((7U 
                                                        == (IData)(vlTOPp->io_debug_read_address))
                                                        ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_7
                                                        : 
                                                       ((6U 
                                                         == (IData)(vlTOPp->io_debug_read_address))
                                                         ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_6
                                                         : 
                                                        ((5U 
                                                          == (IData)(vlTOPp->io_debug_read_address))
                                                          ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_5
                                                          : 
                                                         ((4U 
                                                           == (IData)(vlTOPp->io_debug_read_address))
                                                           ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_4
                                                           : 
                                                          ((3U 
                                                            == (IData)(vlTOPp->io_debug_read_address))
                                                            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_3
                                                            : 
                                                           ((2U 
                                                             == (IData)(vlTOPp->io_debug_read_address))
                                                             ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_2
                                                             : 
                                                            ((1U 
                                                              == (IData)(vlTOPp->io_debug_read_address))
                                                              ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_1
                                                              : vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_0)))))))))))))))))))));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
        = ((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__aluop1_source__DOT__out)
            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction_address__DOT__out
            : vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out);
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2 
        = ((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__aluop2_source__DOT__out)
            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__immediate__DOT__out
            : vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out);
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___cycles_T_1 
        = (1ULL + vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__cycles);
    vlTOPp->io_instruction_address = vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT__pc;
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT___pc_T_1 
        = ((IData)(4U) + vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT__pc);
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_2 
        = ((0x6fU == (0x7fU & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)) 
           | (0x67U == (0x7fU & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_26 
        = ((0x63U == (0x7fU & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)) 
           & ((7U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                            >> 0xcU))) ? (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out 
                                          >= vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out)
               : ((6U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                >> 0xcU))) ? (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out 
                                              < vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out)
                   : ((5U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                    >> 0xcU))) ? VL_GTES_III(1,32,32, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out)
                       : ((4U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                        >> 0xcU))) ? 
                          VL_LTS_III(1,32,32, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out)
                           : ((1U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                            >> 0xcU)))
                               ? (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out 
                                  != vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out)
                               : ((0U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                >> 0xcU))) 
                                  & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out 
                                     == vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out))))))));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__clint__DOT__exception 
        = ((0x73U == vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out) 
           | (0x100073U == vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data 
        = ((6U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                         >> 0xcU))) ? (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_read_data__DOT__out 
                                       | (0x1fU & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                   >> 0xfU)))
            : ((7U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                             >> 0xcU))) ? (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_read_data__DOT__out 
                                           & (~ (0x1fU 
                                                 & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                    >> 0xfU))))
                : ((5U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                 >> 0xcU))) ? (0x1fU 
                                               & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                  >> 0xfU))
                    : ((2U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                     >> 0xcU))) ? (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_read_data__DOT__out 
                                                   | vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out)
                        : ((3U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                         >> 0xcU)))
                            ? (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_read_data__DOT__out 
                               & (~ vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out))
                            : ((1U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                             >> 0xcU)))
                                ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out
                                : 0U))))));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT___GEN_0 
        = ((1U == (0x7fU & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                            >> 0x19U))) ? ((7U == (7U 
                                                   & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                      >> 0xcU)))
                                            ? 0x12U
                                            : ((6U 
                                                == 
                                                (7U 
                                                 & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                    >> 0xcU)))
                                                ? 0x11U
                                                : (
                                                   (5U 
                                                    == 
                                                    (7U 
                                                     & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                        >> 0xcU)))
                                                    ? 0x10U
                                                    : 
                                                   ((4U 
                                                     == 
                                                     (7U 
                                                      & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                         >> 0xcU)))
                                                     ? 0xfU
                                                     : 
                                                    ((3U 
                                                      == 
                                                      (7U 
                                                       & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                          >> 0xcU)))
                                                      ? 0xeU
                                                      : 
                                                     ((2U 
                                                       == 
                                                       (7U 
                                                        & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                           >> 0xcU)))
                                                       ? 0xdU
                                                       : 
                                                      ((1U 
                                                        == 
                                                        (7U 
                                                         & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                            >> 0xcU)))
                                                        ? 0xcU
                                                        : 0xbU)))))))
            : ((5U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                             >> 0xcU))) ? ((0x40000000U 
                                            & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)
                                            ? 9U : 8U)
                : ((7U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                 >> 0xcU))) ? 7U : 
                   ((6U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                  >> 0xcU))) ? 6U : 
                    ((4U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                   >> 0xcU))) ? 5U : 
                     ((3U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                    >> 0xcU))) ? 0xaU
                       : ((2U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                        >> 0xcU))) ? 4U
                           : ((1U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                            >> 0xcU)))
                               ? 3U : ((0x40000000U 
                                        & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)
                                        ? 2U : 1U)))))))));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_9 
        = ((((0x80000000U & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)
              ? 0x1fffffU : 0U) << 0xbU) | (0x7ffU 
                                            & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                               >> 0x14U)));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_141 
        = ((0xdU == (0x1fU & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                              >> 0x14U))) ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_13
            : ((0xcU == (0x1fU & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                  >> 0x14U))) ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_12
                : ((0xbU == (0x1fU & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                      >> 0x14U))) ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_11
                    : ((0xaU == (0x1fU & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                          >> 0x14U)))
                        ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_10
                        : ((9U == (0x1fU & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                            >> 0x14U)))
                            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_9
                            : ((8U == (0x1fU & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                >> 0x14U)))
                                ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_8
                                : ((7U == (0x1fU & 
                                           (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                            >> 0x14U)))
                                    ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_7
                                    : ((6U == (0x1fU 
                                               & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                  >> 0x14U)))
                                        ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_6
                                        : ((5U == (0x1fU 
                                                   & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                      >> 0x14U)))
                                            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_5
                                            : ((4U 
                                                == 
                                                (0x1fU 
                                                 & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                    >> 0x14U)))
                                                ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_4
                                                : (
                                                   (3U 
                                                    == 
                                                    (0x1fU 
                                                     & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                        >> 0x14U)))
                                                    ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_3
                                                    : 
                                                   ((2U 
                                                     == 
                                                     (0x1fU 
                                                      & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                         >> 0x14U)))
                                                     ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_2
                                                     : 
                                                    ((1U 
                                                      == 
                                                      (0x1fU 
                                                       & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                          >> 0x14U)))
                                                      ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_1
                                                      : vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_0)))))))))))));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address 
        = ((0x37U == (0x7fU & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
            ? 0U : (0x1fU & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                             >> 0xfU)));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_19 
        = ((QData)((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1)) 
           * (QData)((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex_io_clint_jump_flag 
        = ((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_2) 
           | (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_26));
    if ((0x341U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out))) {
        vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_1 
            = vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data;
        vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_2 
            = vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mcause;
    } else {
        vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_1 
            = vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mepc;
        vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_2 
            = ((0x342U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out))
                ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data
                : vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mcause);
    }
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_12 
        = ((0x340U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out))
            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data
            : vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mscratch);
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__csr_regs_io_clint_access_bundle_mstatus 
        = (((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_write_enable__DOT__out) 
            & (0x300U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out)))
            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data
            : vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mstatus);
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct 
        = ((0x13U == (0x7fU & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out))
            ? ((5U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                             >> 0xcU))) ? ((0x40000000U 
                                            & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)
                                            ? 9U : 8U)
                : ((7U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                 >> 0xcU))) ? 7U : 
                   ((6U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                  >> 0xcU))) ? 6U : 
                    ((4U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                   >> 0xcU))) ? 5U : 
                     ((3U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                    >> 0xcU))) ? 0xaU
                       : ((2U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                        >> 0xcU))) ? 4U
                           : ((1U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                            >> 0xcU)))
                               ? 3U : 1U))))))) : (
                                                   (0x33U 
                                                    == 
                                                    (0x7fU 
                                                     & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out))
                                                    ? (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT___GEN_0)
                                                    : 
                                                   ((0x63U 
                                                     == 
                                                     (0x7fU 
                                                      & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)) 
                                                    | ((3U 
                                                        == 
                                                        (0x7fU 
                                                         & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)) 
                                                       | ((0x23U 
                                                           == 
                                                           (0x7fU 
                                                            & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)) 
                                                          | ((0x6fU 
                                                              == 
                                                              (0x7fU 
                                                               & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)) 
                                                             | ((0x67U 
                                                                 == 
                                                                 (0x7fU 
                                                                  & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)) 
                                                                | ((0x37U 
                                                                    == 
                                                                    (0x7fU 
                                                                     & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out)) 
                                                                   | (0x17U 
                                                                      == 
                                                                      (0x7fU 
                                                                       & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out))))))))));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_55 
        = ((0x37U == (0x7fU & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
            ? (0xfffff000U & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)
            : ((0x63U == (0x7fU & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                ? ((((0x80000000U & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)
                      ? 0xfffffU : 0U) << 0xcU) | (
                                                   (0x800U 
                                                    & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                       << 4U)) 
                                                   | ((0x7e0U 
                                                       & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                          >> 0x14U)) 
                                                      | (0x1eU 
                                                         & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                            >> 7U)))))
                : ((0x23U == (0x7fU & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                    ? ((((0x80000000U & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)
                          ? 0x1fffffU : 0U) << 0xbU) 
                       | ((0x7e0U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                     >> 0x14U)) | (0x1fU 
                                                   & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                      >> 7U))))
                    : ((0x67U == (0x7fU & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                        ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_9
                        : ((3U == (0x7fU & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_9
                            : ((0x13U == (0x7fU & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out))
                                ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_9
                                : ((((0x80000000U & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out)
                                      ? 0xfffffU : 0U) 
                                    << 0xcU) | (0xfffU 
                                                & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                   >> 0x14U)))))))));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_154 
        = ((0x1aU == (0x1fU & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                               >> 0x14U))) ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_26
            : ((0x19U == (0x1fU & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                   >> 0x14U))) ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_25
                : ((0x18U == (0x1fU & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                       >> 0x14U))) ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_24
                    : ((0x17U == (0x1fU & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                           >> 0x14U)))
                        ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_23
                        : ((0x16U == (0x1fU & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                               >> 0x14U)))
                            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_22
                            : ((0x15U == (0x1fU & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                   >> 0x14U)))
                                ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_21
                                : ((0x14U == (0x1fU 
                                              & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                 >> 0x14U)))
                                    ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_20
                                    : ((0x13U == (0x1fU 
                                                  & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                     >> 0x14U)))
                                        ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_19
                                        : ((0x12U == 
                                            (0x1fU 
                                             & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                >> 0x14U)))
                                            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_18
                                            : ((0x11U 
                                                == 
                                                (0x1fU 
                                                 & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                    >> 0x14U)))
                                                ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_17
                                                : (
                                                   (0x10U 
                                                    == 
                                                    (0x1fU 
                                                     & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                        >> 0x14U)))
                                                    ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_16
                                                    : 
                                                   ((0xfU 
                                                     == 
                                                     (0x1fU 
                                                      & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                         >> 0x14U)))
                                                     ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_15
                                                     : 
                                                    ((0xeU 
                                                      == 
                                                      (0x1fU 
                                                       & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out 
                                                          >> 0x14U)))
                                                      ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_14
                                                      : vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_141)))))))))))));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_117 
        = ((0x15U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_21
            : ((0x14U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_20
                : ((0x13U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                    ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_19
                    : ((0x12U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                        ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_18
                        : ((0x11U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_17
                            : ((0x10U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_16
                                : ((0xfU == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                    ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_15
                                    : ((0xeU == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                        ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_14
                                        : ((0xdU == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_13
                                            : ((0xcU 
                                                == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_12
                                                : (
                                                   (0xbU 
                                                    == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                    ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_11
                                                    : 
                                                   ((0xaU 
                                                     == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                     ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_10
                                                     : 
                                                    ((9U 
                                                      == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                      ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_9
                                                      : 
                                                     ((8U 
                                                       == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                       ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_8
                                                       : 
                                                      ((7U 
                                                        == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                        ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_7
                                                        : 
                                                       ((6U 
                                                         == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                         ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_6
                                                         : 
                                                        ((5U 
                                                          == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                          ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_5
                                                          : 
                                                         ((4U 
                                                           == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                           ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_4
                                                           : 
                                                          ((3U 
                                                            == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_3
                                                            : 
                                                           ((2U 
                                                             == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                             ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_2
                                                             : 
                                                            ((1U 
                                                              == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address))
                                                              ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_1
                                                              : vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_0)))))))))))))))))))));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__clint__DOT__interrupt 
        = ((0U != vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__interrupt_flag__DOT__out) 
           & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__csr_regs_io_clint_access_bundle_mstatus 
              >> 3U));
    VL_EXTENDS_WI(65,32, __Vtemp12, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1);
    __Vtemp13[0U] = __Vtemp12[0U];
    __Vtemp13[1U] = __Vtemp12[1U];
    __Vtemp13[2U] = (1U & __Vtemp12[2U]);
    VL_EXTENDS_WQ(65,33, __Vtemp15, (QData)((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)));
    __Vtemp16[0U] = __Vtemp15[0U];
    __Vtemp16[1U] = __Vtemp15[1U];
    __Vtemp16[2U] = (1U & __Vtemp15[2U]);
    VL_MULS_WWW(65,65,65, __Vtemp17, __Vtemp13, __Vtemp16);
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_8 
        = (0x1ffffffffULL & ((0xaU == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                              ? (QData)((IData)((vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
                                                 < vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)))
                              : ((0xbU == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                  ? (QData)((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_19))
                                  : ((0xcU == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                      ? (QData)((IData)(
                                                        (VL_MULS_QQQ(64,64,64, 
                                                                     VL_EXTENDS_QI(64,32, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1), 
                                                                     VL_EXTENDS_QI(64,32, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)) 
                                                         >> 0x20U)))
                                      : ((0xdU == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                          ? (QData)((IData)(
                                                            __Vtemp17[1U]))
                                          : ((0xeU 
                                              == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                              ? (QData)((IData)(
                                                                (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_19 
                                                                 >> 0x20U)))
                                              : ((0xfU 
                                                  == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                  ? 
                                                 ((0U 
                                                   == vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)
                                                   ? 0ULL
                                                   : 
                                                  VL_DIVS_QQQ(33, 
                                                              (0x1ffffffffULL 
                                                               & VL_EXTENDS_QI(33,32, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1)), 
                                                              (0x1ffffffffULL 
                                                               & VL_EXTENDS_QI(33,32, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2))))
                                                  : (QData)((IData)(
                                                                    ((0x10U 
                                                                      == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                                      ? 
                                                                     ((0U 
                                                                       == vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)
                                                                       ? 0U
                                                                       : 
                                                                      VL_DIV_III(32, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2))
                                                                      : 
                                                                     ((0x11U 
                                                                       == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                                       ? 
                                                                      ((0U 
                                                                        == vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)
                                                                        ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1
                                                                        : 
                                                                       VL_MODDIVS_III(32, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2))
                                                                       : 
                                                                      ((0x12U 
                                                                        == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                                        ? 
                                                                       ((0U 
                                                                         == vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)
                                                                         ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1
                                                                         : 
                                                                        VL_MODDIV_III(32, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2))
                                                                        : 0U))))))))))));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__clint_io_csr_bundle_direct_write_enable 
        = (((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__clint__DOT__exception) 
            | (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__clint__DOT__interrupt)) 
           | (0x30200073U == vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17 
        = (0x7fffffffffffffffULL & ((1U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                     ? (QData)((IData)(
                                                       (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
                                                        + vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)))
                                     : ((2U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                         ? (QData)((IData)(
                                                           (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
                                                            - vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)))
                                         : ((3U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                             ? ((QData)((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1)) 
                                                << 
                                                (0x1fU 
                                                 & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2))
                                             : ((4U 
                                                 == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                 ? (QData)((IData)(
                                                                   VL_LTS_III(1,32,32, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)))
                                                 : 
                                                ((5U 
                                                  == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                  ? (QData)((IData)(
                                                                    (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
                                                                     ^ vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)))
                                                  : 
                                                 ((6U 
                                                   == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                   ? (QData)((IData)(
                                                                     (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
                                                                      | vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)))
                                                   : 
                                                  ((7U 
                                                    == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                    ? (QData)((IData)(
                                                                      (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
                                                                       & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)))
                                                    : 
                                                   ((8U 
                                                     == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                     ? (QData)((IData)(
                                                                       (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
                                                                        >> 
                                                                        (0x1fU 
                                                                         & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2))))
                                                     : 
                                                    ((9U 
                                                      == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct))
                                                      ? (QData)((IData)(
                                                                        VL_SHIFTRS_III(32,32,5, vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1, 
                                                                                (0x1fU 
                                                                                & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2))))
                                                      : vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_8))))))))));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag 
        = ((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__clint_io_csr_bundle_direct_write_enable) 
           | ((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_2) 
              | (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_26)));
    vlTOPp->io_memory_bundle_address = (0x1fffffffU 
                                        & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17));
    vlTOPp->io_memory_bundle_write_data = (IData)(((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out)
                                                    ? 0ULL
                                                    : 
                                                   ((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out)
                                                     ? 
                                                    (0xffffffffffULL 
                                                     & ((0U 
                                                         == 
                                                         (7U 
                                                          & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                             >> 0xcU)))
                                                         ? 
                                                        ((QData)((IData)(
                                                                         (0x1ffU 
                                                                          & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out))) 
                                                         << 
                                                         (0x18U 
                                                          & ((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17) 
                                                             << 3U)))
                                                         : 
                                                        ((1U 
                                                          == 
                                                          (7U 
                                                           & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                              >> 0xcU)))
                                                          ? 
                                                         ((0U 
                                                           == 
                                                           (3U 
                                                            & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17)))
                                                           ? (QData)((IData)(
                                                                             (0x1ffffU 
                                                                              & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out)))
                                                           : 
                                                          ((QData)((IData)(
                                                                           (0x1ffffU 
                                                                            & vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out))) 
                                                           << 0x10U))
                                                          : (QData)((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out)))))
                                                     : 0ULL)));
    if ((1U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                      >> 0xcU)))) {
        vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_13 
            = (0U == (3U & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17)));
        vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_16 
            = (0U != (3U & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17)));
    } else {
        vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_13 
            = (2U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                            >> 0xcU)));
        vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_16 
            = (2U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                            >> 0xcU)));
    }
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___mem_read_data_T_67 
        = ((4U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                         >> 0xcU))) ? ((2U == (3U & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17)))
                                        ? (0xffU & 
                                           (vlTOPp->io_memory_bundle_read_data 
                                            >> 0x10U))
                                        : ((1U == (3U 
                                                   & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17)))
                                            ? (0xffU 
                                               & (vlTOPp->io_memory_bundle_read_data 
                                                  >> 8U))
                                            : ((0U 
                                                == 
                                                (3U 
                                                 & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17)))
                                                ? (0xffU 
                                                   & vlTOPp->io_memory_bundle_read_data)
                                                : (0xffU 
                                                   & (vlTOPp->io_memory_bundle_read_data 
                                                      >> 0x18U)))))
            : ((0U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                             >> 0xcU))) ? ((2U == (3U 
                                                   & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17)))
                                            ? ((((0x800000U 
                                                  & vlTOPp->io_memory_bundle_read_data)
                                                  ? 0xffffffU
                                                  : 0U) 
                                                << 8U) 
                                               | (0xffU 
                                                  & (vlTOPp->io_memory_bundle_read_data 
                                                     >> 0x10U)))
                                            : ((1U 
                                                == 
                                                (3U 
                                                 & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17)))
                                                ? (
                                                   (((0x8000U 
                                                      & vlTOPp->io_memory_bundle_read_data)
                                                      ? 0xffffffU
                                                      : 0U) 
                                                    << 8U) 
                                                   | (0xffU 
                                                      & (vlTOPp->io_memory_bundle_read_data 
                                                         >> 8U)))
                                                : (
                                                   (0U 
                                                    == 
                                                    (3U 
                                                     & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17)))
                                                    ? 
                                                   ((((0x80U 
                                                       & vlTOPp->io_memory_bundle_read_data)
                                                       ? 0xffffffU
                                                       : 0U) 
                                                     << 8U) 
                                                    | (0xffU 
                                                       & vlTOPp->io_memory_bundle_read_data))
                                                    : 
                                                   ((((0x80000000U 
                                                       & vlTOPp->io_memory_bundle_read_data)
                                                       ? 0xffffffU
                                                       : 0U) 
                                                     << 8U) 
                                                    | (0xffU 
                                                       & (vlTOPp->io_memory_bundle_read_data 
                                                          >> 0x18U))))))
                : 0U));
    vlTOPp->io_memory_bundle_write_strobe_0 = ((~ (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out)) 
                                               & ((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out) 
                                                  & ((0U 
                                                      == 
                                                      (7U 
                                                       & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                          >> 0xcU)))
                                                      ? 
                                                     (0U 
                                                      == 
                                                      (3U 
                                                       & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17)))
                                                      : (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_13))));
    vlTOPp->io_memory_bundle_write_strobe_1 = ((~ (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out)) 
                                               & ((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out) 
                                                  & ((0U 
                                                      == 
                                                      (7U 
                                                       & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                          >> 0xcU)))
                                                      ? 
                                                     (1U 
                                                      == 
                                                      (3U 
                                                       & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17)))
                                                      : (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_13))));
    vlTOPp->io_memory_bundle_write_strobe_2 = ((~ (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out)) 
                                               & ((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out) 
                                                  & ((0U 
                                                      == 
                                                      (7U 
                                                       & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                          >> 0xcU)))
                                                      ? 
                                                     (2U 
                                                      == 
                                                      (3U 
                                                       & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17)))
                                                      : (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_16))));
    vlTOPp->io_memory_bundle_write_strobe_3 = ((~ (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out)) 
                                               & ((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out) 
                                                  & ((0U 
                                                      == 
                                                      (7U 
                                                       & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                          >> 0xcU)))
                                                      ? 
                                                     (3U 
                                                      == 
                                                      (3U 
                                                       & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17)))
                                                      : (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_16))));
    vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data 
        = ((3U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_source__DOT__out))
            ? ((IData)(4U) + vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction_address__DOT__out)
            : ((2U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_source__DOT__out))
                ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_read_data__DOT__out
                : ((1U == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_source__DOT__out))
                    ? ((IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out)
                        ? ((2U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                         >> 0xcU)))
                            ? vlTOPp->io_memory_bundle_read_data
                            : ((5U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                             >> 0xcU)))
                                ? ((0U == (3U & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17)))
                                    ? (0xffffU & vlTOPp->io_memory_bundle_read_data)
                                    : (0xffffU & (vlTOPp->io_memory_bundle_read_data 
                                                  >> 0x10U)))
                                : ((1U == (7U & (vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out 
                                                 >> 0xcU)))
                                    ? ((0U == (3U & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17)))
                                        ? ((((0x8000U 
                                              & vlTOPp->io_memory_bundle_read_data)
                                              ? 0xffffU
                                              : 0U) 
                                            << 0x10U) 
                                           | (0xffffU 
                                              & vlTOPp->io_memory_bundle_read_data))
                                        : ((((0x80000000U 
                                              & vlTOPp->io_memory_bundle_read_data)
                                              ? 0xffffU
                                              : 0U) 
                                            << 0x10U) 
                                           | (0xffffU 
                                              & (vlTOPp->io_memory_bundle_read_data 
                                                 >> 0x10U))))
                                    : vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___mem_read_data_T_67)))
                        : 0U) : (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17))));
    vlTOPp->io_debug_read_data = ((0U == (IData)(vlTOPp->io_debug_read_address))
                                   ? 0U : ((((IData)(vlTOPp->io_debug_read_address) 
                                             == (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out)) 
                                            & (IData)(vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out))
                                            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data
                                            : ((0x1fU 
                                                == (IData)(vlTOPp->io_debug_read_address))
                                                ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_31
                                                : (
                                                   (0x1eU 
                                                    == (IData)(vlTOPp->io_debug_read_address))
                                                    ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_30
                                                    : 
                                                   ((0x1dU 
                                                     == (IData)(vlTOPp->io_debug_read_address))
                                                     ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_29
                                                     : 
                                                    ((0x1cU 
                                                      == (IData)(vlTOPp->io_debug_read_address))
                                                      ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_28
                                                      : 
                                                     ((0x1bU 
                                                       == (IData)(vlTOPp->io_debug_read_address))
                                                       ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_27
                                                       : 
                                                      ((0x1aU 
                                                        == (IData)(vlTOPp->io_debug_read_address))
                                                        ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_26
                                                        : 
                                                       ((0x19U 
                                                         == (IData)(vlTOPp->io_debug_read_address))
                                                         ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_25
                                                         : 
                                                        ((0x18U 
                                                          == (IData)(vlTOPp->io_debug_read_address))
                                                          ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_24
                                                          : 
                                                         ((0x17U 
                                                           == (IData)(vlTOPp->io_debug_read_address))
                                                           ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_23
                                                           : 
                                                          ((0x16U 
                                                            == (IData)(vlTOPp->io_debug_read_address))
                                                            ? vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_22
                                                            : vlTOPp->Top__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_181))))))))))));
}

void VTop::_eval_initial(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop::_eval_initial\n"); );
    VTop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_initial__TOP__1(vlSymsp);
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void VTop::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop::final\n"); );
    // Variables
    VTop__Syms* __restrict vlSymsp = this->__VlSymsp;
    VTop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VTop::_eval_settle(VTop__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop::_eval_settle\n"); );
    VTop* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__3(vlSymsp);
}

void VTop::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTop::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    io_instruction_address = VL_RAND_RESET_I(32);
    io_instruction = VL_RAND_RESET_I(32);
    io_instruction_valid = VL_RAND_RESET_I(1);
    io_memory_bundle_address = VL_RAND_RESET_I(32);
    io_memory_bundle_write_data = VL_RAND_RESET_I(32);
    io_memory_bundle_write_enable = VL_RAND_RESET_I(1);
    io_memory_bundle_write_strobe_0 = VL_RAND_RESET_I(1);
    io_memory_bundle_write_strobe_1 = VL_RAND_RESET_I(1);
    io_memory_bundle_write_strobe_2 = VL_RAND_RESET_I(1);
    io_memory_bundle_write_strobe_3 = VL_RAND_RESET_I(1);
    io_memory_bundle_read_data = VL_RAND_RESET_I(32);
    io_device_select = VL_RAND_RESET_I(3);
    io_interrupt_flag = VL_RAND_RESET_I(32);
    io_debug_read_address = VL_RAND_RESET_I(5);
    io_debug_read_data = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address = VL_RAND_RESET_I(5);
    Top__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__ex_io_clint_jump_flag = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__clint_io_csr_bundle_direct_write_enable = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__csr_regs_io_clint_access_bundle_mstatus = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_0 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_1 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_2 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_3 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_4 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_5 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_6 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_7 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_8 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_9 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_10 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_11 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_12 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_13 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_14 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_15 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_16 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_17 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_18 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_19 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_20 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_21 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_22 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_23 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_24 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_25 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_26 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_27 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_28 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_29 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_30 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_31 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_117 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_141 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_154 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_181 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT__pc = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT___pc_T_1 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction_address__DOT__out = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__if2id__DOT__interrupt_flag__DOT__out = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_9 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_55 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction_address__DOT__out = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out = VL_RAND_RESET_I(5);
    Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_source__DOT__out = VL_RAND_RESET_I(2);
    Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__immediate__DOT__out = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__aluop1_source__DOT__out = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__aluop2_source__DOT__out = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_write_enable__DOT__out = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out = VL_RAND_RESET_I(12);
    Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_read_data__DOT__out = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct = VL_RAND_RESET_I(5);
    Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___mem_read_data_T_67 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_13 = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_16 = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_2 = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_26 = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_19 = VL_RAND_RESET_Q(64);
    Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_8 = VL_RAND_RESET_Q(33);
    Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_17 = VL_RAND_RESET_Q(63);
    Top__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT___GEN_0 = VL_RAND_RESET_I(5);
    Top__DOT__cpu__DOT__cpu__DOT__clint__DOT__jumpping = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__clint__DOT__exception = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__clint__DOT__interrupt = VL_RAND_RESET_I(1);
    Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mstatus = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mie = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mtvec = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mscratch = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mepc = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mcause = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__cycles = VL_RAND_RESET_Q(64);
    Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___cycles_T_1 = VL_RAND_RESET_Q(64);
    Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_1 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_2 = VL_RAND_RESET_I(32);
    Top__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_12 = VL_RAND_RESET_I(32);
}
