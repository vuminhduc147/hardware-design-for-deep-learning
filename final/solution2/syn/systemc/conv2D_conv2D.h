// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _conv2D_conv2D_HH_
#define _conv2D_conv2D_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "conv2D_conv2D_mul_32s_32s_32_4_1.h"

namespace ap_rtl {

struct conv2D_conv2D : public sc_module {
    // Port declarations 22
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<32> > input_r_q0;
    sc_out< sc_lv<5> > input_r_address1;
    sc_out< sc_logic > input_r_ce1;
    sc_in< sc_lv<32> > input_r_q1;
    sc_out< sc_lv<4> > kernel_address0;
    sc_out< sc_logic > kernel_ce0;
    sc_in< sc_lv<32> > kernel_q0;
    sc_out< sc_lv<4> > kernel_address1;
    sc_out< sc_logic > kernel_ce1;
    sc_in< sc_lv<32> > kernel_q1;
    sc_out< sc_lv<4> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<32> > output_r_d0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    conv2D_conv2D(sc_module_name name);
    SC_HAS_PROCESS(conv2D_conv2D);

    ~conv2D_conv2D();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    conv2D_conv2D_mul_32s_32s_32_4_1<1,4,32,32,32>* conv2D_mul_32s_32s_32_4_1_U1;
    conv2D_conv2D_mul_32s_32s_32_4_1<1,4,32,32,32>* conv2D_mul_32s_32s_32_4_1_U2;
    conv2D_conv2D_mul_32s_32s_32_4_1<1,4,32,32,32>* conv2D_mul_32s_32s_32_4_1_U3;
    conv2D_conv2D_mul_32s_32s_32_4_1<1,4,32,32,32>* conv2D_mul_32s_32s_32_4_1_U4;
    conv2D_conv2D_mul_32s_32s_32_4_1<1,4,32,32,32>* conv2D_mul_32s_32s_32_4_1_U5;
    conv2D_conv2D_mul_32s_32s_32_4_1<1,4,32,32,32>* conv2D_mul_32s_32s_32_4_1_U6;
    conv2D_conv2D_mul_32s_32s_32_4_1<1,4,32,32,32>* conv2D_mul_32s_32s_32_4_1_U7;
    conv2D_conv2D_mul_32s_32s_32_4_1<1,4,32,32,32>* conv2D_mul_32s_32s_32_4_1_U8;
    conv2D_conv2D_mul_32s_32s_32_4_1<1,4,32,32,32>* conv2D_mul_32s_32s_32_4_1_U9;
    sc_signal< sc_logic > ap_rst_reg_2;
    sc_signal< sc_logic > ap_rst_reg_1;
    sc_signal< sc_logic > ap_rst_reg;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > indvar_flatten_reg_239;
    sc_signal< sc_lv<2> > i_reg_250;
    sc_signal< sc_lv<2> > j_reg_261;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_278_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_651;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state12_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_651_pp0_iter1_reg;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_651_pp0_iter2_reg;
    sc_signal< sc_lv<4> > indvar_flatten_next_fu_284_p2;
    sc_signal< sc_lv<4> > indvar_flatten_next_reg_655;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<2> > j_mid2_fu_296_p3;
    sc_signal< sc_lv<2> > j_mid2_reg_660;
    sc_signal< sc_lv<2> > tmp_mid2_fu_304_p3;
    sc_signal< sc_lv<2> > tmp_mid2_reg_668;
    sc_signal< sc_lv<2> > tmp_5_1_mid2_fu_318_p3;
    sc_signal< sc_lv<2> > tmp_5_1_mid2_reg_676;
    sc_signal< sc_lv<3> > tmp_5_2_mid2_v_fu_330_p2;
    sc_signal< sc_lv<3> > tmp_5_2_mid2_v_reg_682;
    sc_signal< sc_lv<6> > tmp_s_fu_350_p2;
    sc_signal< sc_lv<6> > tmp_s_reg_688;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state3_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state8_pp0_stage1_iter1;
    sc_signal< bool > ap_block_state13_pp0_stage1_iter2;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<6> > tmp_9_cast_fu_356_p1;
    sc_signal< sc_lv<6> > tmp_9_cast_reg_693;
    sc_signal< sc_lv<2> > j_1_fu_370_p2;
    sc_signal< sc_lv<2> > j_1_reg_704;
    sc_signal< sc_lv<6> > tmp_9_0_1_cast_fu_375_p1;
    sc_signal< sc_lv<6> > tmp_9_0_1_cast_reg_709;
    sc_signal< sc_lv<32> > kernel_load_6_reg_720;
    sc_signal< sc_lv<32> > kernel_load_7_reg_725;
    sc_signal< sc_lv<6> > tmp_3_fu_411_p2;
    sc_signal< sc_lv<6> > tmp_3_reg_730;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_state4_pp0_stage2_iter0;
    sc_signal< bool > ap_block_state9_pp0_stage2_iter1;
    sc_signal< bool > ap_block_state14_pp0_stage2_iter2;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< sc_lv<5> > tmp_10_fu_439_p2;
    sc_signal< sc_lv<5> > tmp_10_reg_741;
    sc_signal< sc_lv<5> > tmp_10_reg_741_pp0_iter1_reg;
    sc_signal< sc_lv<32> > kernel_load_reg_746;
    sc_signal< sc_lv<6> > tmp_9_0_2_cast_fu_451_p1;
    sc_signal< sc_lv<6> > tmp_9_0_2_cast_reg_751;
    sc_signal< sc_lv<32> > input_load_6_reg_762;
    sc_signal< sc_lv<32> > input_load_7_reg_767;
    sc_signal< sc_lv<32> > kernel_load_8_reg_772;
    sc_signal< sc_lv<6> > tmp_6_fu_485_p2;
    sc_signal< sc_lv<6> > tmp_6_reg_777;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage3;
    sc_signal< bool > ap_block_state5_pp0_stage3_iter0;
    sc_signal< bool > ap_block_state10_pp0_stage3_iter1;
    sc_signal< bool > ap_block_pp0_stage3_11001;
    sc_signal< sc_lv<32> > input_load_reg_782;
    sc_signal< sc_lv<6> > tmp_12_fu_499_p2;
    sc_signal< sc_lv<6> > tmp_12_reg_792;
    sc_signal< sc_lv<32> > kernel_load_1_reg_797;
    sc_signal< sc_lv<6> > tmp_15_fu_513_p2;
    sc_signal< sc_lv<6> > tmp_15_reg_807;
    sc_signal< sc_lv<32> > kernel_load_2_reg_812;
    sc_signal< sc_lv<32> > input_load_8_reg_817;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage4;
    sc_signal< bool > ap_block_state6_pp0_stage4_iter0;
    sc_signal< bool > ap_block_state11_pp0_stage4_iter1;
    sc_signal< bool > ap_block_pp0_stage4_11001;
    sc_signal< sc_lv<32> > input_load_1_reg_832;
    sc_signal< sc_lv<32> > input_load_2_reg_837;
    sc_signal< sc_lv<32> > kernel_load_3_reg_842;
    sc_signal< sc_lv<32> > kernel_load_4_reg_847;
    sc_signal< sc_lv<32> > input_load_3_reg_857;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<32> > input_load_4_reg_862;
    sc_signal< sc_lv<32> > kernel_load_5_reg_867;
    sc_signal< sc_lv<32> > input_load_5_reg_872;
    sc_signal< sc_lv<32> > grp_fu_518_p2;
    sc_signal< sc_lv<32> > tmp_1_2_reg_877;
    sc_signal< sc_lv<32> > grp_fu_522_p2;
    sc_signal< sc_lv<32> > tmp_1_2_1_reg_882;
    sc_signal< sc_lv<32> > grp_fu_530_p2;
    sc_signal< sc_lv<32> > tmp_1_reg_887;
    sc_signal< sc_lv<32> > grp_fu_538_p2;
    sc_signal< sc_lv<32> > tmp_1_2_2_reg_892;
    sc_signal< sc_lv<32> > grp_fu_542_p2;
    sc_signal< sc_lv<32> > tmp_1_0_1_reg_897;
    sc_signal< sc_lv<32> > grp_fu_550_p2;
    sc_signal< sc_lv<32> > tmp_1_0_2_reg_902;
    sc_signal< sc_lv<32> > tmp6_fu_570_p2;
    sc_signal< sc_lv<32> > tmp6_reg_907;
    sc_signal< sc_lv<32> > grp_fu_554_p2;
    sc_signal< sc_lv<32> > tmp_1_1_reg_912;
    sc_signal< sc_lv<32> > grp_fu_558_p2;
    sc_signal< sc_lv<32> > tmp_1_1_1_reg_917;
    sc_signal< sc_lv<32> > tmp2_fu_575_p2;
    sc_signal< sc_lv<32> > tmp2_reg_922;
    sc_signal< sc_lv<32> > grp_fu_562_p2;
    sc_signal< sc_lv<32> > tmp_1_1_2_reg_927;
    sc_signal< sc_lv<32> > tmp3_fu_579_p2;
    sc_signal< sc_lv<32> > tmp3_reg_932;
    sc_signal< sc_lv<32> > tmp4_fu_587_p2;
    sc_signal< sc_lv<32> > tmp4_reg_937;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< bool > ap_block_pp0_stage4_subdone;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<4> > ap_phi_mux_indvar_flatten_phi_fu_243_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<2> > ap_phi_mux_i_phi_fu_254_p4;
    sc_signal< sc_lv<2> > ap_phi_mux_j_phi_fu_265_p4;
    sc_signal< sc_lv<64> > tmp_13_cast_fu_365_p1;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<64> > tmp_17_cast_fu_385_p1;
    sc_signal< sc_lv<64> > tmp_11_cast_fu_434_p1;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_lv<64> > tmp_20_cast_fu_460_p1;
    sc_signal< sc_lv<64> > tmp_15_cast_fu_494_p1;
    sc_signal< bool > ap_block_pp0_stage3;
    sc_signal< sc_lv<64> > tmp_18_cast_fu_508_p1;
    sc_signal< sc_lv<64> > tmp_12_cast_fu_526_p1;
    sc_signal< bool > ap_block_pp0_stage4;
    sc_signal< sc_lv<64> > tmp_16_cast_fu_534_p1;
    sc_signal< sc_lv<64> > tmp_19_cast_fu_546_p1;
    sc_signal< sc_lv<64> > tmp_14_cast_fu_592_p1;
    sc_signal< sc_lv<1> > exitcond_fu_290_p2;
    sc_signal< sc_lv<2> > i_1_fu_272_p2;
    sc_signal< sc_lv<2> > i_1_mid1_fu_312_p2;
    sc_signal< sc_lv<3> > tmp_5_2_mid2_v_v_fu_326_p1;
    sc_signal< sc_lv<5> > tmp_8_fu_339_p3;
    sc_signal< sc_lv<6> > p_shl_cast_fu_346_p1;
    sc_signal< sc_lv<6> > tmp_5_2_mid2_cast_fu_336_p1;
    sc_signal< sc_lv<6> > tmp_9_fu_359_p2;
    sc_signal< sc_lv<6> > tmp_13_fu_379_p2;
    sc_signal< sc_lv<4> > tmp_fu_396_p3;
    sc_signal< sc_lv<6> > p_shl3_cast1_fu_403_p1;
    sc_signal< sc_lv<6> > tmp_mid2_cast1_fu_390_p1;
    sc_signal< sc_lv<5> > p_shl3_cast_fu_407_p1;
    sc_signal< sc_lv<5> > tmp_mid2_cast_fu_393_p1;
    sc_signal< sc_lv<6> > tmp_4_fu_429_p2;
    sc_signal< sc_lv<5> > tmp_9_cast8_fu_426_p1;
    sc_signal< sc_lv<5> > tmp_5_fu_417_p2;
    sc_signal< sc_lv<3> > j_cast_fu_423_p1;
    sc_signal< sc_lv<3> > tmp_8_0_2_fu_445_p2;
    sc_signal< sc_lv<6> > tmp_16_fu_455_p2;
    sc_signal< sc_lv<4> > tmp_2_fu_468_p3;
    sc_signal< sc_lv<6> > p_shl1_cast_fu_475_p1;
    sc_signal< sc_lv<6> > tmp_5_1_mid2_cast9_fu_465_p1;
    sc_signal< sc_lv<6> > tmp_7_fu_479_p2;
    sc_signal< sc_lv<6> > tmp_11_fu_490_p2;
    sc_signal< sc_lv<6> > tmp_14_fu_504_p2;
    sc_signal< sc_lv<32> > tmp7_fu_566_p2;
    sc_signal< sc_lv<32> > tmp5_fu_583_p2;
    sc_signal< sc_lv<32> > tmp1_fu_596_p2;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< bool > ap_block_pp0_stage3_subdone;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_pp0_stage0;
    static const sc_lv<7> ap_ST_fsm_pp0_stage1;
    static const sc_lv<7> ap_ST_fsm_pp0_stage2;
    static const sc_lv<7> ap_ST_fsm_pp0_stage3;
    static const sc_lv<7> ap_ST_fsm_pp0_stage4;
    static const sc_lv<7> ap_ST_fsm_state15;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<64> ap_const_lv64_3;
    static const sc_lv<64> ap_const_lv64_4;
    static const sc_lv<64> ap_const_lv64_5;
    static const sc_lv<64> ap_const_lv64_6;
    static const sc_lv<64> ap_const_lv64_7;
    static const sc_lv<64> ap_const_lv64_8;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<32> ap_const_lv32_6;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp0_stage3();
    void thread_ap_CS_fsm_pp0_stage4();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state15();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp0_stage3();
    void thread_ap_block_pp0_stage3_11001();
    void thread_ap_block_pp0_stage3_subdone();
    void thread_ap_block_pp0_stage4();
    void thread_ap_block_pp0_stage4_11001();
    void thread_ap_block_pp0_stage4_subdone();
    void thread_ap_block_state10_pp0_stage3_iter1();
    void thread_ap_block_state11_pp0_stage4_iter1();
    void thread_ap_block_state12_pp0_stage0_iter2();
    void thread_ap_block_state13_pp0_stage1_iter2();
    void thread_ap_block_state14_pp0_stage2_iter2();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage1_iter0();
    void thread_ap_block_state4_pp0_stage2_iter0();
    void thread_ap_block_state5_pp0_stage3_iter0();
    void thread_ap_block_state6_pp0_stage4_iter0();
    void thread_ap_block_state7_pp0_stage0_iter1();
    void thread_ap_block_state8_pp0_stage1_iter1();
    void thread_ap_block_state9_pp0_stage2_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_phi_fu_254_p4();
    void thread_ap_phi_mux_indvar_flatten_phi_fu_243_p4();
    void thread_ap_phi_mux_j_phi_fu_265_p4();
    void thread_ap_ready();
    void thread_exitcond_flatten_fu_278_p2();
    void thread_exitcond_fu_290_p2();
    void thread_i_1_fu_272_p2();
    void thread_i_1_mid1_fu_312_p2();
    void thread_indvar_flatten_next_fu_284_p2();
    void thread_input_r_address0();
    void thread_input_r_address1();
    void thread_input_r_ce0();
    void thread_input_r_ce1();
    void thread_j_1_fu_370_p2();
    void thread_j_cast_fu_423_p1();
    void thread_j_mid2_fu_296_p3();
    void thread_kernel_address0();
    void thread_kernel_address1();
    void thread_kernel_ce0();
    void thread_kernel_ce1();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_p_shl1_cast_fu_475_p1();
    void thread_p_shl3_cast1_fu_403_p1();
    void thread_p_shl3_cast_fu_407_p1();
    void thread_p_shl_cast_fu_346_p1();
    void thread_tmp1_fu_596_p2();
    void thread_tmp2_fu_575_p2();
    void thread_tmp3_fu_579_p2();
    void thread_tmp4_fu_587_p2();
    void thread_tmp5_fu_583_p2();
    void thread_tmp6_fu_570_p2();
    void thread_tmp7_fu_566_p2();
    void thread_tmp_10_fu_439_p2();
    void thread_tmp_11_cast_fu_434_p1();
    void thread_tmp_11_fu_490_p2();
    void thread_tmp_12_cast_fu_526_p1();
    void thread_tmp_12_fu_499_p2();
    void thread_tmp_13_cast_fu_365_p1();
    void thread_tmp_13_fu_379_p2();
    void thread_tmp_14_cast_fu_592_p1();
    void thread_tmp_14_fu_504_p2();
    void thread_tmp_15_cast_fu_494_p1();
    void thread_tmp_15_fu_513_p2();
    void thread_tmp_16_cast_fu_534_p1();
    void thread_tmp_16_fu_455_p2();
    void thread_tmp_17_cast_fu_385_p1();
    void thread_tmp_18_cast_fu_508_p1();
    void thread_tmp_19_cast_fu_546_p1();
    void thread_tmp_20_cast_fu_460_p1();
    void thread_tmp_2_fu_468_p3();
    void thread_tmp_3_fu_411_p2();
    void thread_tmp_4_fu_429_p2();
    void thread_tmp_5_1_mid2_cast9_fu_465_p1();
    void thread_tmp_5_1_mid2_fu_318_p3();
    void thread_tmp_5_2_mid2_cast_fu_336_p1();
    void thread_tmp_5_2_mid2_v_fu_330_p2();
    void thread_tmp_5_2_mid2_v_v_fu_326_p1();
    void thread_tmp_5_fu_417_p2();
    void thread_tmp_6_fu_485_p2();
    void thread_tmp_7_fu_479_p2();
    void thread_tmp_8_0_2_fu_445_p2();
    void thread_tmp_8_fu_339_p3();
    void thread_tmp_9_0_1_cast_fu_375_p1();
    void thread_tmp_9_0_2_cast_fu_451_p1();
    void thread_tmp_9_cast8_fu_426_p1();
    void thread_tmp_9_cast_fu_356_p1();
    void thread_tmp_9_fu_359_p2();
    void thread_tmp_fu_396_p3();
    void thread_tmp_mid2_cast1_fu_390_p1();
    void thread_tmp_mid2_cast_fu_393_p1();
    void thread_tmp_mid2_fu_304_p3();
    void thread_tmp_s_fu_350_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
