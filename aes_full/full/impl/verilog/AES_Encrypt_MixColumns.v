// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module AES_Encrypt_MixColumns (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        state_address0,
        state_ce0,
        state_we0,
        state_d0,
        state_q0,
        state_address1,
        state_ce1,
        state_q1
);

parameter    ap_ST_st1_fsm_0 = 16'b1;
parameter    ap_ST_st2_fsm_1 = 16'b10;
parameter    ap_ST_st3_fsm_2 = 16'b100;
parameter    ap_ST_st4_fsm_3 = 16'b1000;
parameter    ap_ST_st5_fsm_4 = 16'b10000;
parameter    ap_ST_st6_fsm_5 = 16'b100000;
parameter    ap_ST_st7_fsm_6 = 16'b1000000;
parameter    ap_ST_st8_fsm_7 = 16'b10000000;
parameter    ap_ST_st9_fsm_8 = 16'b100000000;
parameter    ap_ST_st10_fsm_9 = 16'b1000000000;
parameter    ap_ST_st11_fsm_10 = 16'b10000000000;
parameter    ap_ST_st12_fsm_11 = 16'b100000000000;
parameter    ap_ST_st13_fsm_12 = 16'b1000000000000;
parameter    ap_ST_st14_fsm_13 = 16'b10000000000000;
parameter    ap_ST_st15_fsm_14 = 16'b100000000000000;
parameter    ap_ST_st16_fsm_15 = 16'b1000000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_E = 32'b1110;
parameter    ap_const_lv5_0 = 5'b00000;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv64_1 = 64'b1;
parameter    ap_const_lv64_2 = 64'b10;
parameter    ap_const_lv64_3 = 64'b11;
parameter    ap_const_lv64_4 = 64'b100;
parameter    ap_const_lv64_5 = 64'b101;
parameter    ap_const_lv64_6 = 64'b110;
parameter    ap_const_lv64_7 = 64'b111;
parameter    ap_const_lv64_8 = 64'b1000;
parameter    ap_const_lv64_9 = 64'b1001;
parameter    ap_const_lv64_A = 64'b1010;
parameter    ap_const_lv64_B = 64'b1011;
parameter    ap_const_lv64_C = 64'b1100;
parameter    ap_const_lv64_D = 64'b1101;
parameter    ap_const_lv64_E = 64'b1110;
parameter    ap_const_lv64_F = 64'b1111;
parameter    ap_const_lv56_1 = 56'b1;
parameter    ap_const_lv56_2 = 56'b10;
parameter    ap_const_lv5_10 = 5'b10000;
parameter    ap_const_lv5_1 = 5'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] state_address0;
output   state_ce0;
output   state_we0;
output  [7:0] state_d0;
input  [7:0] state_q0;
output  [3:0] state_address1;
output   state_ce1;
input  [7:0] state_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] state_address0;
reg state_ce0;
reg state_we0;
reg[3:0] state_address1;
reg state_ce1;

(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_33;
reg   [9:0] cipher_address0;
reg    cipher_ce0;
wire   [7:0] cipher_q0;
reg   [9:0] cipher_address1;
reg    cipher_ce1;
wire   [7:0] cipher_q1;
reg   [9:0] cipher_address2;
reg    cipher_ce2;
wire   [7:0] cipher_q2;
reg   [9:0] cipher_address3;
reg    cipher_ce3;
wire   [7:0] cipher_q3;
reg   [7:0] reg_655;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_74;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_81;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_88;
reg    ap_sig_cseq_ST_st10_fsm_9;
reg    ap_sig_96;
reg   [7:0] reg_660;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_105;
reg   [7:0] reg_664;
reg   [7:0] reg_669;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_115;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_122;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_130;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_138;
reg   [7:0] reg_673;
reg   [7:0] reg_677;
wire   [7:0] grp_fu_687_p2;
reg   [7:0] reg_741;
wire   [7:0] grp_fu_699_p2;
reg   [7:0] reg_746;
reg    ap_sig_cseq_ST_st11_fsm_10;
reg    ap_sig_154;
wire   [7:0] grp_fu_711_p2;
reg   [7:0] reg_751;
wire   [7:0] grp_fu_723_p2;
reg   [7:0] reg_756;
reg    ap_sig_cseq_ST_st12_fsm_11;
reg    ap_sig_166;
wire   [7:0] grp_fu_735_p2;
reg   [7:0] reg_761;
wire   [7:0] tmp_1_fu_808_p2;
reg   [7:0] tmp_1_reg_1198;
wire   [7:0] tmp_s_fu_856_p2;
reg   [7:0] tmp_s_reg_1233;
wire   [7:0] tmp_3_fu_868_p2;
reg   [7:0] tmp_3_reg_1238;
wire   [7:0] tmp_8_fu_988_p2;
reg   [7:0] tmp_8_reg_1333;
wire   [7:0] tmp_10_fu_1036_p2;
reg   [7:0] tmp_10_reg_1363;
wire   [7:0] tmp_11_fu_1048_p2;
reg   [7:0] tmp_11_reg_1368;
wire   [4:0] i_2_fu_1132_p2;
reg   [4:0] i_2_reg_1416;
reg    ap_sig_cseq_ST_st14_fsm_13;
reg    ap_sig_289;
wire   [63:0] tmp_16_fu_1138_p1;
reg   [63:0] tmp_16_reg_1421;
wire   [0:0] exitcond_fu_1126_p2;
wire   [7:0] tmp_state_q0;
reg   [7:0] tmp_state_load_reg_1431;
reg    ap_sig_cseq_ST_st15_fsm_14;
reg    ap_sig_306;
reg   [3:0] tmp_state_address0;
reg    tmp_state_ce0;
reg    tmp_state_we0;
reg   [7:0] tmp_state_d0;
reg   [3:0] tmp_state_address1;
reg    tmp_state_ce1;
reg    tmp_state_we1;
reg   [7:0] tmp_state_d1;
reg   [4:0] i_reg_626;
reg    ap_sig_cseq_ST_st13_fsm_12;
reg    ap_sig_329;
reg    ap_sig_cseq_ST_st16_fsm_15;
reg    ap_sig_336;
wire   [63:0] addr_fu_766_p3;
wire   [63:0] addr1_fu_775_p3;
wire   [63:0] addr2_fu_784_p3;
wire   [63:0] addr3_fu_793_p3;
wire   [63:0] addr4_fu_814_p3;
wire   [63:0] addr5_fu_823_p3;
wire   [63:0] addr6_fu_832_p3;
wire   [63:0] addr7_fu_841_p3;
wire   [63:0] addr8_fu_874_p3;
wire   [63:0] addr9_fu_883_p3;
wire   [63:0] addr10_fu_892_p3;
wire   [63:0] addr11_fu_901_p3;
wire   [63:0] addr12_fu_910_p3;
wire   [63:0] addr13_fu_919_p3;
wire   [63:0] addr14_fu_928_p3;
wire   [63:0] addr15_fu_937_p3;
wire   [63:0] addr16_fu_946_p3;
wire   [63:0] addr17_fu_955_p3;
wire   [63:0] addr18_fu_964_p3;
wire   [63:0] addr19_fu_973_p3;
wire   [63:0] addr20_fu_994_p3;
wire   [63:0] addr21_fu_1003_p3;
wire   [63:0] addr22_fu_1012_p3;
wire   [63:0] addr23_fu_1021_p3;
wire   [63:0] addr24_fu_1054_p3;
wire   [63:0] addr25_fu_1063_p3;
wire   [63:0] addr26_fu_1072_p3;
wire   [63:0] addr27_fu_1081_p3;
wire   [63:0] addr28_fu_1090_p3;
wire   [63:0] addr29_fu_1099_p3;
wire   [63:0] addr30_fu_1108_p3;
wire   [63:0] addr31_fu_1117_p3;
wire   [7:0] grp_fu_681_p2;
wire   [7:0] grp_fu_637_p2;
wire   [7:0] grp_fu_693_p2;
wire   [7:0] grp_fu_643_p2;
wire   [7:0] grp_fu_705_p2;
wire   [7:0] grp_fu_649_p2;
wire   [7:0] grp_fu_717_p2;
wire   [7:0] grp_fu_729_p2;
wire   [7:0] tmp3_fu_802_p2;
wire   [7:0] tmp5_fu_850_p2;
wire   [7:0] tmp7_fu_862_p2;
wire   [7:0] tmp18_fu_982_p2;
wire   [7:0] tmp20_fu_1030_p2;
wire   [7:0] tmp22_fu_1042_p2;
reg   [15:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 16'b1;
end

AES_Encrypt_MixColumns_cipher #(
    .DataWidth( 8 ),
    .AddressRange( 768 ),
    .AddressWidth( 10 ))
cipher_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(cipher_address0),
    .ce0(cipher_ce0),
    .q0(cipher_q0),
    .address1(cipher_address1),
    .ce1(cipher_ce1),
    .q1(cipher_q1),
    .address2(cipher_address2),
    .ce2(cipher_ce2),
    .q2(cipher_q2),
    .address3(cipher_address3),
    .ce3(cipher_ce3),
    .q3(cipher_q3)
);

AES_Encrypt_ShiftRows_tmp_state #(
    .DataWidth( 8 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
tmp_state_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tmp_state_address0),
    .ce0(tmp_state_ce0),
    .we0(tmp_state_we0),
    .d0(tmp_state_d0),
    .q0(tmp_state_q0),
    .address1(tmp_state_address1),
    .ce1(tmp_state_ce1),
    .we1(tmp_state_we1),
    .d1(tmp_state_d1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st16_fsm_15)) begin
        i_reg_626 <= i_2_reg_1416;
    end else if ((1'b1 == ap_sig_cseq_ST_st13_fsm_12)) begin
        i_reg_626 <= ap_const_lv5_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9))) begin
        reg_655 <= state_q1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        reg_655 <= state_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        reg_664 <= state_q0;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        reg_664 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        i_2_reg_1416 <= i_2_fu_1132_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st3_fsm_2))) begin
        reg_660 <= state_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8))) begin
        reg_669 <= state_q1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7))) begin
        reg_673 <= state_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8))) begin
        reg_677 <= state_q0;
        reg_741 <= grp_fu_687_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st11_fsm_10))) begin
        reg_746 <= grp_fu_699_p2;
        reg_751 <= grp_fu_711_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st12_fsm_11))) begin
        reg_756 <= grp_fu_723_p2;
        reg_761 <= grp_fu_735_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        tmp_10_reg_1363 <= tmp_10_fu_1036_p2;
        tmp_11_reg_1368 <= tmp_11_fu_1048_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st14_fsm_13) & (exitcond_fu_1126_p2 == 1'b0))) begin
        tmp_16_reg_1421[4 : 0] <= tmp_16_fu_1138_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        tmp_1_reg_1198 <= tmp_1_fu_808_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        tmp_3_reg_1238 <= tmp_3_fu_868_p2;
        tmp_s_reg_1233 <= tmp_s_fu_856_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        tmp_8_reg_1333 <= tmp_8_fu_988_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st15_fsm_14)) begin
        tmp_state_load_reg_1431 <= tmp_state_q0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | ((1'b1 == ap_sig_cseq_ST_st14_fsm_13) & ~(exitcond_fu_1126_p2 == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st14_fsm_13) & ~(exitcond_fu_1126_p2 == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_96) begin
        ap_sig_cseq_ST_st10_fsm_9 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_9 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_154) begin
        ap_sig_cseq_ST_st11_fsm_10 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st11_fsm_10 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_166) begin
        ap_sig_cseq_ST_st12_fsm_11 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st12_fsm_11 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_329) begin
        ap_sig_cseq_ST_st13_fsm_12 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st13_fsm_12 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_289) begin
        ap_sig_cseq_ST_st14_fsm_13 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st14_fsm_13 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_306) begin
        ap_sig_cseq_ST_st15_fsm_14 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st15_fsm_14 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_336) begin
        ap_sig_cseq_ST_st16_fsm_15 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st16_fsm_15 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_33) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_74) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_105) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_115) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_122) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_81) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_88) begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_130) begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_138) begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        cipher_address0 = addr28_fu_1090_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        cipher_address0 = addr24_fu_1054_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        cipher_address0 = addr20_fu_994_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        cipher_address0 = addr16_fu_946_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        cipher_address0 = addr12_fu_910_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        cipher_address0 = addr8_fu_874_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        cipher_address0 = addr4_fu_814_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        cipher_address0 = addr_fu_766_p3;
    end else begin
        cipher_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        cipher_address1 = addr29_fu_1099_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        cipher_address1 = addr25_fu_1063_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        cipher_address1 = addr21_fu_1003_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        cipher_address1 = addr17_fu_955_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        cipher_address1 = addr13_fu_919_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        cipher_address1 = addr9_fu_883_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        cipher_address1 = addr5_fu_823_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        cipher_address1 = addr1_fu_775_p3;
    end else begin
        cipher_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        cipher_address2 = addr30_fu_1108_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        cipher_address2 = addr26_fu_1072_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        cipher_address2 = addr22_fu_1012_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        cipher_address2 = addr18_fu_964_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        cipher_address2 = addr14_fu_928_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        cipher_address2 = addr10_fu_892_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        cipher_address2 = addr6_fu_832_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        cipher_address2 = addr2_fu_784_p3;
    end else begin
        cipher_address2 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        cipher_address3 = addr31_fu_1117_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        cipher_address3 = addr27_fu_1081_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        cipher_address3 = addr23_fu_1021_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        cipher_address3 = addr19_fu_973_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        cipher_address3 = addr15_fu_937_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        cipher_address3 = addr11_fu_901_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        cipher_address3 = addr7_fu_841_p3;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        cipher_address3 = addr3_fu_793_p3;
    end else begin
        cipher_address3 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st11_fsm_10))) begin
        cipher_ce0 = 1'b1;
    end else begin
        cipher_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st11_fsm_10))) begin
        cipher_ce1 = 1'b1;
    end else begin
        cipher_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st11_fsm_10))) begin
        cipher_ce2 = 1'b1;
    end else begin
        cipher_ce2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st11_fsm_10))) begin
        cipher_ce3 = 1'b1;
    end else begin
        cipher_ce3 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st16_fsm_15)) begin
        state_address0 = tmp_16_reg_1421;
    end else if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        state_address0 = ap_const_lv64_E;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        state_address0 = ap_const_lv64_C;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        state_address0 = ap_const_lv64_A;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        state_address0 = ap_const_lv64_8;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        state_address0 = ap_const_lv64_6;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        state_address0 = ap_const_lv64_4;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        state_address0 = ap_const_lv64_1;
    end else if ((1'b1 == ap_sig_cseq_ST_st1_fsm_0)) begin
        state_address0 = ap_const_lv64_0;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        state_address1 = ap_const_lv64_F;
    end else if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        state_address1 = ap_const_lv64_D;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        state_address1 = ap_const_lv64_B;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        state_address1 = ap_const_lv64_9;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        state_address1 = ap_const_lv64_7;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        state_address1 = ap_const_lv64_5;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        state_address1 = ap_const_lv64_3;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        state_address1 = ap_const_lv64_2;
    end else begin
        state_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | (1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st3_fsm_2) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | ((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0)) | (1'b1 == ap_sig_cseq_ST_st16_fsm_15))) begin
        state_ce0 = 1'b1;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | (1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st3_fsm_2) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8))) begin
        state_ce1 = 1'b1;
    end else begin
        state_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st16_fsm_15)) begin
        state_we0 = 1'b1;
    end else begin
        state_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st13_fsm_12)) begin
        tmp_state_address0 = ap_const_lv64_E;
    end else if ((1'b1 == ap_sig_cseq_ST_st12_fsm_11)) begin
        tmp_state_address0 = ap_const_lv64_C;
    end else if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        tmp_state_address0 = ap_const_lv64_A;
    end else if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        tmp_state_address0 = ap_const_lv64_8;
    end else if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        tmp_state_address0 = ap_const_lv64_6;
    end else if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        tmp_state_address0 = ap_const_lv64_4;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        tmp_state_address0 = ap_const_lv64_2;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        tmp_state_address0 = ap_const_lv64_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        tmp_state_address0 = tmp_16_fu_1138_p1;
    end else begin
        tmp_state_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st13_fsm_12)) begin
        tmp_state_address1 = ap_const_lv64_F;
    end else if ((1'b1 == ap_sig_cseq_ST_st12_fsm_11)) begin
        tmp_state_address1 = ap_const_lv64_D;
    end else if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        tmp_state_address1 = ap_const_lv64_B;
    end else if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        tmp_state_address1 = ap_const_lv64_9;
    end else if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        tmp_state_address1 = ap_const_lv64_7;
    end else if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        tmp_state_address1 = ap_const_lv64_5;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        tmp_state_address1 = ap_const_lv64_3;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        tmp_state_address1 = ap_const_lv64_1;
    end else begin
        tmp_state_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st11_fsm_10) | (1'b1 == ap_sig_cseq_ST_st12_fsm_11) | (1'b1 == ap_sig_cseq_ST_st14_fsm_13) | (1'b1 == ap_sig_cseq_ST_st13_fsm_12))) begin
        tmp_state_ce0 = 1'b1;
    end else begin
        tmp_state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st11_fsm_10) | (1'b1 == ap_sig_cseq_ST_st12_fsm_11) | (1'b1 == ap_sig_cseq_ST_st13_fsm_12))) begin
        tmp_state_ce1 = 1'b1;
    end else begin
        tmp_state_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        tmp_state_d0 = tmp_10_reg_1363;
    end else if (((1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st13_fsm_12))) begin
        tmp_state_d0 = reg_756;
    end else if (((1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st12_fsm_11))) begin
        tmp_state_d0 = reg_746;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        tmp_state_d0 = tmp_s_reg_1233;
    end else if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9))) begin
        tmp_state_d0 = reg_741;
    end else begin
        tmp_state_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        tmp_state_d1 = tmp_11_reg_1368;
    end else if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        tmp_state_d1 = tmp_8_reg_1333;
    end else if (((1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st13_fsm_12))) begin
        tmp_state_d1 = reg_761;
    end else if (((1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st12_fsm_11))) begin
        tmp_state_d1 = reg_751;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        tmp_state_d1 = tmp_3_reg_1238;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        tmp_state_d1 = tmp_1_reg_1198;
    end else begin
        tmp_state_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st11_fsm_10) | (1'b1 == ap_sig_cseq_ST_st12_fsm_11) | (1'b1 == ap_sig_cseq_ST_st13_fsm_12))) begin
        tmp_state_we0 = 1'b1;
    end else begin
        tmp_state_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st11_fsm_10) | (1'b1 == ap_sig_cseq_ST_st12_fsm_11) | (1'b1 == ap_sig_cseq_ST_st13_fsm_12))) begin
        tmp_state_we1 = 1'b1;
    end else begin
        tmp_state_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st3_fsm_2 : begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st7_fsm_6 : begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        ap_ST_st8_fsm_7 : begin
            ap_NS_fsm = ap_ST_st9_fsm_8;
        end
        ap_ST_st9_fsm_8 : begin
            ap_NS_fsm = ap_ST_st10_fsm_9;
        end
        ap_ST_st10_fsm_9 : begin
            ap_NS_fsm = ap_ST_st11_fsm_10;
        end
        ap_ST_st11_fsm_10 : begin
            ap_NS_fsm = ap_ST_st12_fsm_11;
        end
        ap_ST_st12_fsm_11 : begin
            ap_NS_fsm = ap_ST_st13_fsm_12;
        end
        ap_ST_st13_fsm_12 : begin
            ap_NS_fsm = ap_ST_st14_fsm_13;
        end
        ap_ST_st14_fsm_13 : begin
            if (~(exitcond_fu_1126_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st15_fsm_14;
            end
        end
        ap_ST_st15_fsm_14 : begin
            ap_NS_fsm = ap_ST_st16_fsm_15;
        end
        ap_ST_st16_fsm_15 : begin
            ap_NS_fsm = ap_ST_st14_fsm_13;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign addr10_fu_892_p3 = {{ap_const_lv56_1}, {reg_669}};

assign addr11_fu_901_p3 = {{ap_const_lv56_2}, {reg_677}};

assign addr12_fu_910_p3 = {{ap_const_lv56_1}, {reg_677}};

assign addr13_fu_919_p3 = {{ap_const_lv56_2}, {reg_655}};

assign addr14_fu_928_p3 = {{ap_const_lv56_2}, {reg_673}};

assign addr15_fu_937_p3 = {{ap_const_lv56_1}, {reg_655}};

assign addr16_fu_946_p3 = {{ap_const_lv56_1}, {reg_660}};

assign addr17_fu_955_p3 = {{ap_const_lv56_2}, {reg_655}};

assign addr18_fu_964_p3 = {{ap_const_lv56_1}, {reg_655}};

assign addr19_fu_973_p3 = {{ap_const_lv56_2}, {reg_664}};

assign addr1_fu_775_p3 = {{ap_const_lv56_2}, {reg_660}};

assign addr20_fu_994_p3 = {{ap_const_lv56_1}, {reg_664}};

assign addr21_fu_1003_p3 = {{ap_const_lv56_2}, {reg_669}};

assign addr22_fu_1012_p3 = {{ap_const_lv56_2}, {reg_660}};

assign addr23_fu_1021_p3 = {{ap_const_lv56_1}, {reg_669}};

assign addr24_fu_1054_p3 = {{ap_const_lv56_1}, {reg_673}};

assign addr25_fu_1063_p3 = {{ap_const_lv56_2}, {reg_669}};

assign addr26_fu_1072_p3 = {{ap_const_lv56_1}, {reg_669}};

assign addr27_fu_1081_p3 = {{ap_const_lv56_2}, {reg_677}};

assign addr28_fu_1090_p3 = {{ap_const_lv56_1}, {reg_677}};

assign addr29_fu_1099_p3 = {{ap_const_lv56_2}, {reg_655}};

assign addr2_fu_784_p3 = {{ap_const_lv56_1}, {reg_660}};

assign addr30_fu_1108_p3 = {{ap_const_lv56_2}, {reg_673}};

assign addr31_fu_1117_p3 = {{ap_const_lv56_1}, {reg_655}};

assign addr3_fu_793_p3 = {{ap_const_lv56_2}, {reg_664}};

assign addr4_fu_814_p3 = {{ap_const_lv56_1}, {reg_664}};

assign addr5_fu_823_p3 = {{ap_const_lv56_2}, {reg_669}};

assign addr6_fu_832_p3 = {{ap_const_lv56_2}, {reg_655}};

assign addr7_fu_841_p3 = {{ap_const_lv56_1}, {reg_669}};

assign addr8_fu_874_p3 = {{ap_const_lv56_1}, {reg_673}};

assign addr9_fu_883_p3 = {{ap_const_lv56_2}, {reg_669}};

assign addr_fu_766_p3 = {{ap_const_lv56_1}, {reg_655}};

always @ (*) begin
    ap_sig_105 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_115 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_122 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_130 = (1'b1 == ap_CS_fsm[ap_const_lv32_7]);
end

always @ (*) begin
    ap_sig_138 = (1'b1 == ap_CS_fsm[ap_const_lv32_8]);
end

always @ (*) begin
    ap_sig_154 = (1'b1 == ap_CS_fsm[ap_const_lv32_A]);
end

always @ (*) begin
    ap_sig_166 = (1'b1 == ap_CS_fsm[ap_const_lv32_B]);
end

always @ (*) begin
    ap_sig_289 = (1'b1 == ap_CS_fsm[ap_const_lv32_D]);
end

always @ (*) begin
    ap_sig_306 = (1'b1 == ap_CS_fsm[ap_const_lv32_E]);
end

always @ (*) begin
    ap_sig_329 = (1'b1 == ap_CS_fsm[ap_const_lv32_C]);
end

always @ (*) begin
    ap_sig_33 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_336 = (1'b1 == ap_CS_fsm[ap_const_lv32_F]);
end

always @ (*) begin
    ap_sig_74 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_81 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_88 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_96 = (1'b1 == ap_CS_fsm[ap_const_lv32_9]);
end

assign exitcond_fu_1126_p2 = ((i_reg_626 == ap_const_lv5_10) ? 1'b1 : 1'b0);

assign grp_fu_637_p2 = (cipher_q1 ^ cipher_q0);

assign grp_fu_643_p2 = (cipher_q2 ^ cipher_q3);

assign grp_fu_649_p2 = (cipher_q0 ^ cipher_q1);

assign grp_fu_681_p2 = (reg_664 ^ reg_669);

assign grp_fu_687_p2 = (grp_fu_681_p2 ^ grp_fu_637_p2);

assign grp_fu_693_p2 = (reg_677 ^ reg_655);

assign grp_fu_699_p2 = (grp_fu_693_p2 ^ grp_fu_637_p2);

assign grp_fu_705_p2 = (reg_655 ^ reg_673);

assign grp_fu_711_p2 = (grp_fu_643_p2 ^ grp_fu_705_p2);

assign grp_fu_717_p2 = (reg_669 ^ reg_673);

assign grp_fu_723_p2 = (grp_fu_649_p2 ^ grp_fu_717_p2);

assign grp_fu_729_p2 = (reg_677 ^ reg_669);

assign grp_fu_735_p2 = (grp_fu_643_p2 ^ grp_fu_729_p2);

assign i_2_fu_1132_p2 = (i_reg_626 + ap_const_lv5_1);

assign state_d0 = tmp_state_load_reg_1431;

assign tmp18_fu_982_p2 = (reg_669 ^ reg_660);

assign tmp20_fu_1030_p2 = (reg_655 ^ reg_660);

assign tmp22_fu_1042_p2 = (reg_664 ^ reg_655);

assign tmp3_fu_802_p2 = (reg_669 ^ reg_655);

assign tmp5_fu_850_p2 = (reg_660 ^ reg_655);

assign tmp7_fu_862_p2 = (reg_664 ^ reg_660);

assign tmp_10_fu_1036_p2 = (grp_fu_649_p2 ^ tmp20_fu_1030_p2);

assign tmp_11_fu_1048_p2 = (grp_fu_643_p2 ^ tmp22_fu_1042_p2);

assign tmp_16_fu_1138_p1 = i_reg_626;

assign tmp_1_fu_808_p2 = (grp_fu_643_p2 ^ tmp3_fu_802_p2);

assign tmp_3_fu_868_p2 = (grp_fu_643_p2 ^ tmp7_fu_862_p2);

assign tmp_8_fu_988_p2 = (grp_fu_643_p2 ^ tmp18_fu_982_p2);

assign tmp_s_fu_856_p2 = (grp_fu_649_p2 ^ tmp5_fu_850_p2);

always @ (posedge ap_clk) begin
    tmp_16_reg_1421[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end

endmodule //AES_Encrypt_MixColumns
