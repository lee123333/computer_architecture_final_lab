// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VTestTopModule.h for the primary calling header

#include "VTestTopModule.h"
#include "VTestTopModule__Syms.h"

//==========

VL_CTOR_IMP(VTestTopModule) {
    VTestTopModule__Syms* __restrict vlSymsp = __VlSymsp = new VTestTopModule__Syms(this, name());
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void VTestTopModule::__Vconfigure(VTestTopModule__Syms* vlSymsp, bool first) {
    if (false && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
    if (false && this->__VlSymsp) {}  // Prevent unused
    _configure_coverage(vlSymsp, first);
    Verilated::timeunit(-12);
    Verilated::timeprecision(-12);
}

VTestTopModule::~VTestTopModule() {
    VL_DO_CLEAR(delete __VlSymsp, __VlSymsp = NULL);
}

// Coverage
#ifndef CHISEL_VL_COVER_INSERT
#define CHISEL_VL_COVER_INSERT(countp, ...) \
    VL_IF_COVER(VerilatedCov::_inserti(countp); VerilatedCov::_insertf(__FILE__, __LINE__); \
                chisel_insertp("hier", name(), __VA_ARGS__))

#ifdef VM_COVERAGE
static void chisel_insertp(
  const char* key0, const char* valp0, const char* key1, const char* valp1,
  const char* key2, int lineno, const char* key3, int column,
  const char* key4, const std::string& hier_str,
  const char* key5, const char* valp5, const char* key6, const char* valp6,
  const char* key7 = nullptr, const char* valp7 = nullptr) {

    std::string val2str = vlCovCvtToStr(lineno);
    std::string val3str = vlCovCvtToStr(column);
    VerilatedCov::_insertp(
        key0, valp0, key1, valp1, key2, val2str.c_str(),
        key3, val3str.c_str(), key4, hier_str.c_str(),
        key5, valp5, key6, valp6, key7, valp7,
        // turn on per instance cover points
        "per_instance", "1");
}
#endif // VM_COVERAGE
#endif // CHISEL_VL_COVER_INSERT


void VTestTopModule::__vlCoverInsert(uint32_t* countp, bool enable, const char* filenamep, int lineno, int column,
    const char* hierp, const char* pagep, const char* commentp, const char* linescovp) {
    uint32_t* count32p = countp;
    static uint32_t fake_zero_count = 0;
    if (!enable) count32p = &fake_zero_count;
    *count32p = 0;
    CHISEL_VL_COVER_INSERT(count32p,  "filename",filenamep,  "lineno",lineno,  "column",column,
        "hier",std::string(name())+hierp,  "page",pagep,  "comment",commentp,  (linescovp[0] ? "linescov" : ""), linescovp);
}

void VTestTopModule::_initial__TOP__1(VTestTopModule__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_initial__TOP__1\n"); );
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    WData/*575:0*/ __Vtemp1[18];
    // Body
    __Vtemp1[0U] = 0x2e747874U;
    __Vtemp1[1U] = 0x6d62696eU;
    __Vtemp1[2U] = 0x742e6173U;
    __Vtemp1[3U] = 0x75747075U;
    __Vtemp1[4U] = 0x6f672f6fU;
    __Vtemp1[5U] = 0x6572696cU;
    __Vtemp1[6U] = 0x72652f76U;
    __Vtemp1[7U] = 0x762d636fU;
    __Vtemp1[8U] = 0x72697363U;
    __Vtemp1[9U] = 0x6c61622fU;
    __Vtemp1[0xaU] = 0x6e616c5fU;
    __Vtemp1[0xbU] = 0x682f6669U;
    __Vtemp1[0xcU] = 0x5f617263U;
    __Vtemp1[0xdU] = 0x75746572U;
    __Vtemp1[0xeU] = 0x636f6d70U;
    __Vtemp1[0xfU] = 0x6c68682fU;
    __Vtemp1[0x10U] = 0x6f6d652fU;
    __Vtemp1[0x11U] = 0x2f68U;
    VL_READMEM_N(true, 32, 78623, 0, VL_CVT_PACK_STR_NW(18, __Vtemp1)
                 , vlTOPp->TestTopModule__DOT__instruction_rom__DOT__mem
                 , 0, ~0ULL);
}

void VTestTopModule::_settle__TOP__3(VTestTopModule__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_settle__TOP__3\n"); );
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    WData/*95:0*/ __Vtemp5[3];
    WData/*95:0*/ __Vtemp6[3];
    WData/*95:0*/ __Vtemp8[3];
    WData/*95:0*/ __Vtemp9[3];
    WData/*95:0*/ __Vtemp10[3];
    // Body
    vlTOPp->TestTopModule__DOT___CPU_next_T_2 = (3U 
                                                 & ((IData)(1U) 
                                                    + (IData)(vlTOPp->TestTopModule__DOT__CPU_clkdiv)));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs_clock 
        = (0U == (IData)(vlTOPp->TestTopModule__DOT__CPU_clkdiv));
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
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
        = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__aluop1_source__DOT__out)
            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction_address__DOT__out
            : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out);
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2 
        = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__aluop2_source__DOT__out)
            ? vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__immediate__DOT__out
            : vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out);
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___cycles_T_1 
        = (1ULL + vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__cycles);
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT___pc_T_1 
        = ((IData)(4U) + vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT__pc);
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
    vlTOPp->TestTopModule__DOT__rom_loader__DOT___address_T_1 
        = ((IData)(1U) + vlTOPp->TestTopModule__DOT__rom_loader__DOT__address);
    vlTOPp->TestTopModule__DOT__rom_loader__DOT___GEN_0 
        = ((0x1331eU == vlTOPp->TestTopModule__DOT__rom_loader__DOT__address) 
           | (IData)(vlTOPp->TestTopModule__DOT__rom_loader__DOT__valid));
    if (vlTOPp->TestTopModule__DOT__rom_loader__DOT__valid) {
        vlTOPp->TestTopModule__DOT__mem_io_bundle_write_enable 
            = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out;
        vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data 
            = (((vlTOPp->TestTopModule__DOT__mem__DOT__mem_3
                 [vlTOPp->TestTopModule__DOT__mem__DOT__mem_1_io_bundle_read_data_MPORT_addr_pipe_0] 
                 << 0x18U) | (vlTOPp->TestTopModule__DOT__mem__DOT__mem_2
                              [vlTOPp->TestTopModule__DOT__mem__DOT__mem_1_io_bundle_read_data_MPORT_addr_pipe_0] 
                              << 0x10U)) | ((vlTOPp->TestTopModule__DOT__mem__DOT__mem_1
                                             [vlTOPp->TestTopModule__DOT__mem__DOT__mem_1_io_bundle_read_data_MPORT_addr_pipe_0] 
                                             << 8U) 
                                            | vlTOPp->TestTopModule__DOT__mem__DOT__mem_0
                                            [vlTOPp->TestTopModule__DOT__mem__DOT__mem_1_io_bundle_read_data_MPORT_addr_pipe_0]));
    } else {
        vlTOPp->TestTopModule__DOT__mem_io_bundle_write_enable 
            = (0x1331eU >= vlTOPp->TestTopModule__DOT__rom_loader__DOT__address);
        vlTOPp->TestTopModule__DOT__cpu_io_memory_bundle_read_data = 0U;
    }
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_19 
        = ((QData)((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1)) 
           * (QData)((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)));
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_1 
        = (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 
           + vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2);
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_clint_jump_flag 
        = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_2) 
           | (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_26));
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
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__interrupt 
        = ((0U != vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__interrupt_flag__DOT__out) 
           & (vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs_io_clint_access_bundle_mstatus 
              >> 3U));
    VL_EXTENDS_WI(65,32, __Vtemp5, vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1);
    __Vtemp6[0U] = __Vtemp5[0U];
    __Vtemp6[1U] = __Vtemp5[1U];
    __Vtemp6[2U] = (1U & __Vtemp5[2U]);
    VL_EXTENDS_WQ(65,33, __Vtemp8, (QData)((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2)));
    __Vtemp9[0U] = __Vtemp8[0U];
    __Vtemp9[1U] = __Vtemp8[1U];
    __Vtemp9[2U] = (1U & __Vtemp8[2U]);
    VL_MULS_WWW(65,65,65, __Vtemp10, __Vtemp6, __Vtemp9);
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
                                                        __Vtemp10[1U]))
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
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint_io_csr_bundle_direct_write_enable 
        = (((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__exception) 
            | (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__interrupt)) 
           | (0x30200073U == vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out));
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
    vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag 
        = ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__clint_io_csr_bundle_direct_write_enable) 
           | ((IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_2) 
              | (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_26)));
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
    if (vlTOPp->TestTopModule__DOT__rom_loader__DOT__valid) {
        vlTOPp->TestTopModule__DOT__mem_io_bundle_address 
            = (0x1fffffffU & (IData)(vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18));
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
            = (IData)(((0x1331eU >= vlTOPp->TestTopModule__DOT__rom_loader__DOT__address)
                        ? (0x7ffffffffULL & (0x1000ULL 
                                             + ((QData)((IData)(vlTOPp->TestTopModule__DOT__rom_loader__DOT__address)) 
                                                << 2U)))
                        : 0ULL));
        vlTOPp->TestTopModule__DOT__mem_io_bundle_write_data 
            = ((0x1331eU >= vlTOPp->TestTopModule__DOT__rom_loader__DOT__address)
                ? ((0x1331eU >= (0x1ffffU & vlTOPp->TestTopModule__DOT__rom_loader__DOT__address))
                    ? vlTOPp->TestTopModule__DOT__instruction_rom__DOT__mem
                   [(0x1ffffU & vlTOPp->TestTopModule__DOT__rom_loader__DOT__address)]
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

void VTestTopModule::_eval_initial(VTestTopModule__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_eval_initial\n"); );
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_initial__TOP__1(vlSymsp);
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
    vlTOPp->__Vclklast__TOP__TestTopModule__DOT__cpu__DOT__cpu__DOT__regs_clock 
        = vlTOPp->TestTopModule__DOT__cpu__DOT__cpu__DOT__regs_clock;
}

void VTestTopModule::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::final\n"); );
    // Variables
    VTestTopModule__Syms* __restrict vlSymsp = this->__VlSymsp;
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VTestTopModule::_eval_settle(VTestTopModule__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_eval_settle\n"); );
    VTestTopModule* const __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__3(vlSymsp);
}

void VTestTopModule::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    io_regs_debug_read_address = VL_RAND_RESET_I(5);
    io_mem_debug_read_address = VL_RAND_RESET_I(32);
    io_regs_debug_read_data = VL_RAND_RESET_I(32);
    io_mem_debug_read_data = VL_RAND_RESET_I(32);
    TestTopModule__DOT__mem_io_bundle_address = VL_RAND_RESET_I(32);
    TestTopModule__DOT__mem_io_bundle_write_data = VL_RAND_RESET_I(32);
    TestTopModule__DOT__mem_io_bundle_write_enable = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu_io_memory_bundle_read_data = VL_RAND_RESET_I(32);
    TestTopModule__DOT__CPU_clkdiv = VL_RAND_RESET_I(2);
    TestTopModule__DOT___CPU_next_T_2 = VL_RAND_RESET_I(2);
    { int __Vi0=0; for (; __Vi0<8192; ++__Vi0) {
            TestTopModule__DOT__mem__DOT__mem_0[__Vi0] = VL_RAND_RESET_I(8);
    }}
    { int __Vi0=0; for (; __Vi0<8192; ++__Vi0) {
            TestTopModule__DOT__mem__DOT__mem_1[__Vi0] = VL_RAND_RESET_I(8);
    }}
    TestTopModule__DOT__mem__DOT__mem_1_io_bundle_read_data_MPORT_addr_pipe_0 = VL_RAND_RESET_I(13);
    TestTopModule__DOT__mem__DOT__mem_1_io_debug_read_data_MPORT_addr_pipe_0 = VL_RAND_RESET_I(13);
    { int __Vi0=0; for (; __Vi0<8192; ++__Vi0) {
            TestTopModule__DOT__mem__DOT__mem_2[__Vi0] = VL_RAND_RESET_I(8);
    }}
    { int __Vi0=0; for (; __Vi0<8192; ++__Vi0) {
            TestTopModule__DOT__mem__DOT__mem_3[__Vi0] = VL_RAND_RESET_I(8);
    }}
    TestTopModule__DOT__mem__DOT__mem_3_io_instruction_MPORT_addr_pipe_0 = VL_RAND_RESET_I(13);
    { int __Vi0=0; for (; __Vi0<78623; ++__Vi0) {
            TestTopModule__DOT__instruction_rom__DOT__mem[__Vi0] = VL_RAND_RESET_I(32);
    }}
    TestTopModule__DOT__rom_loader__DOT__address = VL_RAND_RESET_I(32);
    TestTopModule__DOT__rom_loader__DOT__valid = VL_RAND_RESET_I(1);
    TestTopModule__DOT__rom_loader__DOT___address_T_1 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__rom_loader__DOT___GEN_0 = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs_clock = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id_io_regs_reg1_read_address = VL_RAND_RESET_I(5);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_csr_write_data = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_regs_write_data = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_if_jump_flag = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex_io_clint_jump_flag = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__clint_io_csr_bundle_direct_write_enable = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs_io_clint_access_bundle_mstatus = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_0 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_1 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_2 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_3 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_4 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_5 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_6 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_7 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_8 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_9 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_10 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_11 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_12 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_13 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_14 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_15 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_16 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_17 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_18 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_19 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_20 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_21 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_22 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_23 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_24 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_25 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_26 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_27 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_28 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_29 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_30 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT__registers_31 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_117 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_141 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_154 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__regs__DOT___GEN_181 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT__pc = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__inst_fetch__DOT___pc_T_1 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction__DOT__out = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__instruction_address__DOT__out = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__if2id__DOT__interrupt_flag__DOT__out = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_9 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id__DOT___io_ex_immediate_T_55 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction__DOT__out = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__instruction_address__DOT__out = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_enable__DOT__out = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_address__DOT__out = VL_RAND_RESET_I(5);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__regs_write_source__DOT__out = VL_RAND_RESET_I(2);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg1_data__DOT__out = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__reg2_data__DOT__out = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__immediate__DOT__out = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__aluop1_source__DOT__out = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__aluop2_source__DOT__out = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_write_enable__DOT__out = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_address__DOT__out = VL_RAND_RESET_I(12);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_read_enable__DOT__out = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__memory_write_enable__DOT__out = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__id2ex__DOT__csr_read_data__DOT__out = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op1 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_io_op2 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl_io_alu_funct = VL_RAND_RESET_I(5);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___mem_read_data_T_67 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_13 = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___GEN_16 = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_2 = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT___instruction_jump_flag_T_26 = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_1 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___io_result_T_19 = VL_RAND_RESET_Q(64);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_8 = VL_RAND_RESET_Q(33);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu__DOT___GEN_18 = VL_RAND_RESET_Q(63);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__ex__DOT__alu_ctrl__DOT___GEN_0 = VL_RAND_RESET_I(5);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__jumpping = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__exception = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__clint__DOT__interrupt = VL_RAND_RESET_I(1);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mstatus = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mie = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mtvec = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mscratch = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mepc = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__mcause = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT__cycles = VL_RAND_RESET_Q(64);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___cycles_T_1 = VL_RAND_RESET_Q(64);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_1 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_2 = VL_RAND_RESET_I(32);
    TestTopModule__DOT__cpu__DOT__cpu__DOT__csr_regs__DOT___GEN_12 = VL_RAND_RESET_I(32);
    __Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_3__v0 = 0;
    __Vdlyvval__TestTopModule__DOT__mem__DOT__mem_3__v0 = VL_RAND_RESET_I(8);
    __Vdlyvset__TestTopModule__DOT__mem__DOT__mem_3__v0 = 0;
    __Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_2__v0 = 0;
    __Vdlyvval__TestTopModule__DOT__mem__DOT__mem_2__v0 = VL_RAND_RESET_I(8);
    __Vdlyvset__TestTopModule__DOT__mem__DOT__mem_2__v0 = 0;
    __Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_0__v0 = 0;
    __Vdlyvval__TestTopModule__DOT__mem__DOT__mem_0__v0 = VL_RAND_RESET_I(8);
    __Vdlyvset__TestTopModule__DOT__mem__DOT__mem_0__v0 = 0;
    __Vdlyvdim0__TestTopModule__DOT__mem__DOT__mem_1__v0 = 0;
    __Vdlyvval__TestTopModule__DOT__mem__DOT__mem_1__v0 = VL_RAND_RESET_I(8);
    __Vdlyvset__TestTopModule__DOT__mem__DOT__mem_1__v0 = 0;
    __Vdly__TestTopModule__DOT__mem__DOT__mem_3_io_instruction_MPORT_addr_pipe_0 = VL_RAND_RESET_I(13);
    __Vdly__TestTopModule__DOT__rom_loader__DOT__address = VL_RAND_RESET_I(32);
}

void VTestTopModule::_configure_coverage(VTestTopModule__Syms* __restrict vlSymsp, bool first) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VTestTopModule::_configure_coverage\n"); );
    // Body
    if (false && vlSymsp && first) {}  // Prevent unused
}