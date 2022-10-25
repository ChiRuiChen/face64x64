// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config2_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_V_address0,
        data_V_ce0,
        data_V_q0,
        output_V_address0,
        output_V_ce0,
        output_V_we0,
        output_V_d0,
        output_V_q0
);

parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] data_V_address0;
output   data_V_ce0;
input  [15:0] data_V_q0;
output  [4:0] output_V_address0;
output   output_V_ce0;
output   output_V_we0;
output  [15:0] output_V_d0;
input  [15:0] output_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_V_ce0;
reg[4:0] output_V_address0;
reg output_V_ce0;
reg output_V_we0;
reg[15:0] output_V_d0;

(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [8:0] linebuffer_V_7_address0;
reg    linebuffer_V_7_ce0;
reg    linebuffer_V_7_we0;
reg   [15:0] linebuffer_V_7_d0;
wire   [15:0] linebuffer_V_7_q0;
wire   [1:0] i0_fu_277_p2;
reg   [1:0] i0_reg_811;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln246_fu_271_p2;
wire   [9:0] zext_ln203_32_fu_288_p1;
reg   [9:0] zext_ln203_32_reg_821;
wire    ap_CS_fsm_state3;
wire   [7:0] zext_ln203_33_fu_292_p1;
reg   [7:0] zext_ln203_33_reg_827;
wire   [5:0] zext_ln203_34_fu_296_p1;
reg   [5:0] zext_ln203_34_reg_832;
wire   [4:0] zext_ln203_35_fu_300_p1;
reg   [4:0] zext_ln203_35_reg_837;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln250_fu_319_p2;
wire   [1:0] add_ln255_fu_363_p2;
reg   [1:0] add_ln255_reg_851;
wire   [7:0] add_ln203_51_fu_415_p2;
reg   [7:0] add_ln203_51_reg_861;
wire   [15:0] tmpinput_V_q0;
reg   [15:0] tmp1_V_reg_866;
wire    ap_CS_fsm_state5;
wire   [8:0] zext_ln255_fu_420_p1;
reg   [8:0] zext_ln255_reg_871;
reg   [8:0] linebuffer_V_7_addr_1_reg_877;
reg   [15:0] tmp_V_reg_882;
wire   [6:0] i2_fu_437_p2;
reg   [6:0] i2_reg_890;
wire    ap_CS_fsm_state6;
wire   [9:0] add_ln203_54_fu_482_p2;
reg   [9:0] add_ln203_54_reg_895;
wire   [0:0] icmp_ln258_fu_431_p2;
wire   [1:0] i1_fu_574_p2;
wire   [1:0] i0_3_fu_594_p2;
reg   [1:0] i0_3_reg_913;
wire    ap_CS_fsm_state8;
wire  signed [4:0] sext_ln192_fu_622_p1;
reg  signed [4:0] sext_ln192_reg_918;
wire   [0:0] icmp_ln188_fu_588_p2;
wire   [4:0] zext_ln192_13_fu_632_p1;
reg   [4:0] zext_ln192_13_reg_923;
wire   [1:0] i1_5_fu_642_p2;
reg   [1:0] i1_5_reg_931;
wire    ap_CS_fsm_state9;
wire   [4:0] or_ln1_fu_648_p4;
reg   [4:0] or_ln1_reg_936;
wire   [0:0] icmp_ln190_fu_636_p2;
wire   [5:0] zext_ln192_14_fu_658_p1;
reg   [5:0] zext_ln192_14_reg_941;
wire   [1:0] i2_6_fu_672_p2;
reg   [1:0] i2_6_reg_949;
wire    ap_CS_fsm_state10;
wire   [5:0] add_ln192_9_fu_687_p2;
reg   [5:0] add_ln192_9_reg_954;
wire   [0:0] icmp_ln191_fu_666_p2;
wire   [1:0] i1_6_fu_721_p2;
reg   [1:0] i1_6_reg_967;
wire    ap_CS_fsm_state12;
wire   [4:0] or_ln_fu_727_p4;
reg   [4:0] or_ln_reg_972;
wire   [0:0] icmp_ln200_fu_715_p2;
wire   [4:0] sub_ln203_fu_753_p2;
reg   [4:0] sub_ln203_reg_977;
wire   [1:0] i2_5_fu_769_p2;
reg   [1:0] i2_5_reg_985;
wire    ap_CS_fsm_state13;
wire   [4:0] add_ln203_1_fu_785_p2;
reg   [4:0] add_ln203_1_reg_990;
wire   [0:0] icmp_ln202_fu_763_p2;
reg   [3:0] tmpinput_V_address0;
reg    tmpinput_V_ce0;
reg    tmpinput_V_we0;
reg   [15:0] tmpinput_V_d0;
reg   [1:0] i0_0_reg_181;
reg   [1:0] i1_0_reg_193;
reg   [6:0] i2_0_reg_205;
wire    ap_CS_fsm_state7;
reg   [1:0] i0_0_i_reg_216;
reg   [1:0] i1_0_i_reg_227;
reg   [1:0] i2_0_i_reg_238;
wire    ap_CS_fsm_state11;
reg   [1:0] i11_0_i_reg_249;
reg   [1:0] i22_0_i_reg_260;
wire    ap_CS_fsm_state14;
wire   [63:0] zext_ln248_fu_283_p1;
wire   [63:0] zext_ln203_37_fu_314_p1;
wire  signed [63:0] sext_ln252_fu_358_p1;
wire  signed [63:0] sext_ln255_2_fu_404_p1;
wire   [63:0] zext_ln203_38_fu_426_p1;
wire   [63:0] zext_ln203_48_fu_531_p1;
wire  signed [63:0] sext_ln203_48_fu_569_p1;
wire   [63:0] zext_ln203_45_fu_580_p1;
wire   [63:0] zext_ln192_3_fu_702_p1;
wire   [63:0] zext_ln192_fu_710_p1;
wire  signed [63:0] sext_ln203_49_fu_799_p1;
wire   [63:0] zext_ln203_fu_804_p1;
wire   [3:0] zext_ln203_36_fu_304_p1;
wire   [3:0] add_ln203_49_fu_308_p2;
wire   [1:0] xor_ln252_fu_325_p2;
wire   [3:0] tmp_125_fu_335_p3;
wire   [4:0] zext_ln252_3_fu_343_p1;
wire   [4:0] zext_ln252_fu_331_p1;
wire   [4:0] sub_ln252_fu_347_p2;
wire   [4:0] add_ln252_fu_353_p2;
wire   [3:0] tmp_126_fu_373_p3;
wire   [4:0] zext_ln255_8_fu_381_p1;
wire   [4:0] zext_ln255_7_fu_369_p1;
wire  signed [4:0] sub_ln255_fu_385_p2;
wire  signed [5:0] sext_ln255_1_fu_395_p1;
wire   [5:0] add_ln255_3_fu_399_p2;
wire  signed [7:0] sext_ln255_fu_391_p1;
wire   [7:0] add_ln203_50_fu_409_p2;
wire  signed [8:0] sext_ln203_fu_423_p1;
wire   [7:0] tmp_129_fu_443_p3;
wire   [8:0] zext_ln203_43_fu_451_p1;
wire   [8:0] add_ln203_53_fu_455_p2;
wire   [7:0] trunc_ln203_fu_464_p1;
wire   [9:0] p_shl_cast_fu_468_p3;
wire   [9:0] zext_ln203_44_fu_460_p1;
wire   [9:0] sub_ln203_3_fu_476_p2;
wire   [7:0] tmp_131_fu_487_p3;
wire   [8:0] zext_ln203_46_fu_495_p1;
wire   [8:0] add_ln203_55_fu_499_p2;
wire   [7:0] trunc_ln203_1_fu_508_p1;
wire   [9:0] p_shl1_cast_fu_512_p3;
wire   [9:0] zext_ln203_47_fu_504_p1;
wire   [9:0] sub_ln203_4_fu_520_p2;
wire   [9:0] add_ln203_56_fu_526_p2;
wire   [1:0] sub_ln265_fu_536_p2;
wire   [3:0] tmp_128_fu_546_p3;
wire   [4:0] zext_ln203_42_fu_554_p1;
wire   [4:0] zext_ln203_41_fu_542_p1;
wire   [4:0] sub_ln203_2_fu_558_p2;
wire   [4:0] add_ln203_52_fu_564_p2;
wire   [0:0] trunc_ln192_fu_600_p1;
wire   [2:0] shl_ln_fu_604_p3;
wire   [3:0] zext_ln192_12_fu_612_p1;
wire   [3:0] zext_ln188_fu_584_p1;
wire  signed [3:0] sub_ln192_fu_616_p2;
wire   [3:0] add_ln192_fu_626_p2;
wire   [4:0] zext_ln191_fu_662_p1;
wire   [4:0] add_ln192_10_fu_678_p2;
wire  signed [5:0] sext_ln192_4_fu_683_p1;
wire   [4:0] add_ln192_11_fu_692_p2;
wire   [4:0] add_ln192_12_fu_697_p2;
wire  signed [31:0] sext_ln192_3_fu_707_p1;
wire   [3:0] tmp_127_fu_741_p3;
wire   [4:0] zext_ln203_40_fu_749_p1;
wire   [4:0] zext_ln203_39_fu_737_p1;
wire   [3:0] zext_ln202_fu_759_p1;
wire   [3:0] add_ln203_fu_775_p2;
wire   [4:0] zext_ln203_12_fu_781_p1;
wire   [4:0] zext_ln203_49_fu_790_p1;
wire   [4:0] add_ln203_57_fu_794_p2;
reg   [13:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 14'd1;
end

cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config2_s_linebbkb #(
    .DataWidth( 16 ),
    .AddressRange( 396 ),
    .AddressWidth( 9 ))
linebuffer_V_7_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(linebuffer_V_7_address0),
    .ce0(linebuffer_V_7_ce0),
    .we0(linebuffer_V_7_we0),
    .d0(linebuffer_V_7_d0),
    .q0(linebuffer_V_7_q0)
);

cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config2_s_tmpincud #(
    .DataWidth( 16 ),
    .AddressRange( 9 ),
    .AddressWidth( 4 ))
tmpinput_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tmpinput_V_address0),
    .ce0(tmpinput_V_ce0),
    .we0(tmpinput_V_we0),
    .d0(tmpinput_V_d0),
    .q0(tmpinput_V_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln246_fu_271_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i0_0_i_reg_216 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln190_fu_636_p2 == 1'd1))) begin
        i0_0_i_reg_216 <= i0_3_reg_913;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i0_0_reg_181 <= 2'd0;
    end else if (((icmp_ln250_fu_319_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        i0_0_reg_181 <= i0_reg_811;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln188_fu_588_p2 == 1'd1))) begin
        i11_0_i_reg_249 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln202_fu_763_p2 == 1'd1))) begin
        i11_0_i_reg_249 <= i1_6_reg_967;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln191_fu_666_p2 == 1'd1))) begin
        i1_0_i_reg_227 <= i1_5_reg_931;
    end else if (((icmp_ln188_fu_588_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        i1_0_i_reg_227 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_431_p2 == 1'd1))) begin
        i1_0_reg_193 <= i1_fu_574_p2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i1_0_reg_193 <= 2'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        i22_0_i_reg_260 <= i2_5_reg_985;
    end else if (((icmp_ln200_fu_715_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        i22_0_i_reg_260 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln190_fu_636_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        i2_0_i_reg_238 <= 2'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        i2_0_i_reg_238 <= i2_6_reg_949;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i2_0_reg_205 <= i2_reg_890;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i2_0_reg_205 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln191_fu_666_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        add_ln192_9_reg_954 <= add_ln192_9_fu_687_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln202_fu_763_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state13))) begin
        add_ln203_1_reg_990 <= add_ln203_1_fu_785_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln250_fu_319_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        add_ln203_51_reg_861 <= add_ln203_51_fu_415_p2;
        add_ln255_reg_851 <= add_ln255_fu_363_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln258_fu_431_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        add_ln203_54_reg_895 <= add_ln203_54_fu_482_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i0_3_reg_913 <= i0_3_fu_594_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i0_reg_811 <= i0_fu_277_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i1_5_reg_931 <= i1_5_fu_642_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        i1_6_reg_967 <= i1_6_fu_721_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        i2_5_reg_985 <= i2_5_fu_769_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        i2_6_reg_949 <= i2_6_fu_672_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i2_reg_890 <= i2_fu_437_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        linebuffer_V_7_addr_1_reg_877 <= zext_ln203_38_fu_426_p1;
        tmp1_V_reg_866 <= tmpinput_V_q0;
        tmp_V_reg_882 <= linebuffer_V_7_q0;
        zext_ln255_reg_871[1 : 0] <= zext_ln255_fu_420_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln190_fu_636_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9))) begin
        or_ln1_reg_936[1 : 0] <= or_ln1_fu_648_p4[1 : 0];
or_ln1_reg_936[4 : 3] <= or_ln1_fu_648_p4[4 : 3];
        zext_ln192_14_reg_941[1 : 0] <= zext_ln192_14_fu_658_p1[1 : 0];
zext_ln192_14_reg_941[4 : 3] <= zext_ln192_14_fu_658_p1[4 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln200_fu_715_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state12))) begin
        or_ln_reg_972[1 : 0] <= or_ln_fu_727_p4[1 : 0];
or_ln_reg_972[4 : 3] <= or_ln_fu_727_p4[4 : 3];
        sub_ln203_reg_977 <= sub_ln203_fu_753_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln188_fu_588_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        sext_ln192_reg_918 <= sext_ln192_fu_622_p1;
        zext_ln192_13_reg_923[3 : 0] <= zext_ln192_13_fu_632_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        zext_ln203_32_reg_821[1 : 0] <= zext_ln203_32_fu_288_p1[1 : 0];
        zext_ln203_33_reg_827[1 : 0] <= zext_ln203_33_fu_292_p1[1 : 0];
        zext_ln203_34_reg_832[1 : 0] <= zext_ln203_34_fu_296_p1[1 : 0];
        zext_ln203_35_reg_837[1 : 0] <= zext_ln203_35_fu_300_p1[1 : 0];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state12) & (icmp_ln200_fu_715_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln200_fu_715_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        data_V_ce0 = 1'b1;
    end else begin
        data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        linebuffer_V_7_address0 = zext_ln203_45_fu_580_p1;
    end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_431_p2 == 1'd1))) begin
        linebuffer_V_7_address0 = linebuffer_V_7_addr_1_reg_877;
    end else if (((icmp_ln258_fu_431_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        linebuffer_V_7_address0 = zext_ln203_48_fu_531_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        linebuffer_V_7_address0 = sext_ln255_2_fu_404_p1;
    end else begin
        linebuffer_V_7_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_431_p2 == 1'd1)) | ((icmp_ln258_fu_431_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        linebuffer_V_7_ce0 = 1'b1;
    end else begin
        linebuffer_V_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        linebuffer_V_7_d0 = linebuffer_V_7_q0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_431_p2 == 1'd1))) begin
        linebuffer_V_7_d0 = tmp1_V_reg_866;
    end else begin
        linebuffer_V_7_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_431_p2 == 1'd1)))) begin
        linebuffer_V_7_we0 = 1'b1;
    end else begin
        linebuffer_V_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        output_V_address0 = zext_ln203_fu_804_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_V_address0 = zext_ln192_fu_710_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        output_V_address0 = zext_ln192_3_fu_702_p1;
    end else begin
        output_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10))) begin
        output_V_ce0 = 1'b1;
    end else begin
        output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        output_V_d0 = tmpinput_V_q0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        output_V_d0 = output_V_q0;
    end else begin
        output_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state11))) begin
        output_V_we0 = 1'b1;
    end else begin
        output_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmpinput_V_address0 = sext_ln203_49_fu_799_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmpinput_V_address0 = sext_ln203_48_fu_569_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        tmpinput_V_address0 = sext_ln252_fu_358_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        tmpinput_V_address0 = zext_ln203_37_fu_314_p1;
    end else begin
        tmpinput_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state6))) begin
        tmpinput_V_ce0 = 1'b1;
    end else begin
        tmpinput_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmpinput_V_d0 = tmp_V_reg_882;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        tmpinput_V_d0 = data_V_q0;
    end else begin
        tmpinput_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_431_p2 == 1'd1)))) begin
        tmpinput_V_we0 = 1'b1;
    end else begin
        tmpinput_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln246_fu_271_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln250_fu_319_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln258_fu_431_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln188_fu_588_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln190_fu_636_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln191_fu_666_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln200_fu_715_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln202_fu_763_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln192_10_fu_678_p2 = ($signed(sext_ln192_reg_918) + $signed(zext_ln191_fu_662_p1));

assign add_ln192_11_fu_692_p2 = (zext_ln192_13_reg_923 + zext_ln191_fu_662_p1);

assign add_ln192_12_fu_697_p2 = (add_ln192_11_fu_692_p2 + or_ln1_reg_936);

assign add_ln192_9_fu_687_p2 = ($signed(sext_ln192_4_fu_683_p1) + $signed(zext_ln192_14_reg_941));

assign add_ln192_fu_626_p2 = ($signed(4'd3) + $signed(sub_ln192_fu_616_p2));

assign add_ln203_1_fu_785_p2 = (or_ln_reg_972 + zext_ln203_12_fu_781_p1);

assign add_ln203_49_fu_308_p2 = (zext_ln203_36_fu_304_p1 + 4'd6);

assign add_ln203_50_fu_409_p2 = ($signed(sext_ln255_fu_391_p1) + $signed(8'd134));

assign add_ln203_51_fu_415_p2 = (add_ln203_50_fu_409_p2 + zext_ln203_33_reg_827);

assign add_ln203_52_fu_564_p2 = (sub_ln203_2_fu_558_p2 + zext_ln203_35_reg_837);

assign add_ln203_53_fu_455_p2 = (zext_ln203_43_fu_451_p1 + zext_ln255_reg_871);

assign add_ln203_54_fu_482_p2 = (sub_ln203_3_fu_476_p2 + zext_ln203_32_reg_821);

assign add_ln203_55_fu_499_p2 = (zext_ln203_46_fu_495_p1 + zext_ln255_reg_871);

assign add_ln203_56_fu_526_p2 = (sub_ln203_4_fu_520_p2 + zext_ln203_32_reg_821);

assign add_ln203_57_fu_794_p2 = (sub_ln203_reg_977 + zext_ln203_49_fu_790_p1);

assign add_ln203_fu_775_p2 = (zext_ln202_fu_759_p1 + 4'd6);

assign add_ln252_fu_353_p2 = (sub_ln252_fu_347_p2 + zext_ln203_35_reg_837);

assign add_ln255_3_fu_399_p2 = ($signed(sext_ln255_1_fu_395_p1) + $signed(zext_ln203_34_reg_832));

assign add_ln255_fu_363_p2 = ($signed(i1_0_reg_193) + $signed(2'd3));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign data_V_address0 = zext_ln248_fu_283_p1;

assign i0_3_fu_594_p2 = (i0_0_i_reg_216 + 2'd1);

assign i0_fu_277_p2 = (i0_0_reg_181 + 2'd1);

assign i1_5_fu_642_p2 = (i1_0_i_reg_227 + 2'd1);

assign i1_6_fu_721_p2 = (i11_0_i_reg_249 + 2'd1);

assign i1_fu_574_p2 = (i1_0_reg_193 + 2'd1);

assign i2_5_fu_769_p2 = (i22_0_i_reg_260 + 2'd1);

assign i2_6_fu_672_p2 = (i2_0_i_reg_238 + 2'd1);

assign i2_fu_437_p2 = (i2_0_reg_205 + 7'd1);

assign icmp_ln188_fu_588_p2 = ((i0_0_i_reg_216 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln190_fu_636_p2 = ((i1_0_i_reg_227 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln191_fu_666_p2 = ((i2_0_i_reg_238 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln200_fu_715_p2 = ((i11_0_i_reg_249 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln202_fu_763_p2 = ((i22_0_i_reg_260 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln246_fu_271_p2 = ((i0_0_reg_181 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln250_fu_319_p2 = ((i1_0_reg_193 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln258_fu_431_p2 = ((i2_0_reg_205 == 7'd65) ? 1'b1 : 1'b0);

assign or_ln1_fu_648_p4 = {{{i1_0_i_reg_227}, {1'd0}}, {i1_0_i_reg_227}};

assign or_ln_fu_727_p4 = {{{i11_0_i_reg_249}, {1'd0}}, {i11_0_i_reg_249}};

assign p_shl1_cast_fu_512_p3 = {{trunc_ln203_1_fu_508_p1}, {2'd0}};

assign p_shl_cast_fu_468_p3 = {{trunc_ln203_fu_464_p1}, {2'd0}};

assign sext_ln192_3_fu_707_p1 = $signed(add_ln192_9_reg_954);

assign sext_ln192_4_fu_683_p1 = $signed(add_ln192_10_fu_678_p2);

assign sext_ln192_fu_622_p1 = sub_ln192_fu_616_p2;

assign sext_ln203_48_fu_569_p1 = $signed(add_ln203_52_fu_564_p2);

assign sext_ln203_49_fu_799_p1 = $signed(add_ln203_57_fu_794_p2);

assign sext_ln203_fu_423_p1 = $signed(add_ln203_51_reg_861);

assign sext_ln252_fu_358_p1 = $signed(add_ln252_fu_353_p2);

assign sext_ln255_1_fu_395_p1 = sub_ln255_fu_385_p2;

assign sext_ln255_2_fu_404_p1 = $signed(add_ln255_3_fu_399_p2);

assign sext_ln255_fu_391_p1 = sub_ln255_fu_385_p2;

assign shl_ln_fu_604_p3 = {{trunc_ln192_fu_600_p1}, {2'd0}};

assign sub_ln192_fu_616_p2 = (zext_ln192_12_fu_612_p1 - zext_ln188_fu_584_p1);

assign sub_ln203_2_fu_558_p2 = (zext_ln203_42_fu_554_p1 - zext_ln203_41_fu_542_p1);

assign sub_ln203_3_fu_476_p2 = (p_shl_cast_fu_468_p3 - zext_ln203_44_fu_460_p1);

assign sub_ln203_4_fu_520_p2 = (p_shl1_cast_fu_512_p3 - zext_ln203_47_fu_504_p1);

assign sub_ln203_fu_753_p2 = (zext_ln203_40_fu_749_p1 - zext_ln203_39_fu_737_p1);

assign sub_ln252_fu_347_p2 = (zext_ln252_3_fu_343_p1 - zext_ln252_fu_331_p1);

assign sub_ln255_fu_385_p2 = (zext_ln255_8_fu_381_p1 - zext_ln255_7_fu_369_p1);

assign sub_ln265_fu_536_p2 = ($signed(2'd2) - $signed(i1_0_reg_193));

assign tmp_125_fu_335_p3 = {{xor_ln252_fu_325_p2}, {2'd0}};

assign tmp_126_fu_373_p3 = {{add_ln255_fu_363_p2}, {2'd0}};

assign tmp_127_fu_741_p3 = {{i11_0_i_reg_249}, {2'd0}};

assign tmp_128_fu_546_p3 = {{sub_ln265_fu_536_p2}, {2'd0}};

assign tmp_129_fu_443_p3 = {{i2_0_reg_205}, {1'd0}};

assign tmp_131_fu_487_p3 = {{i2_fu_437_p2}, {1'd0}};

assign trunc_ln192_fu_600_p1 = i0_0_i_reg_216[0:0];

assign trunc_ln203_1_fu_508_p1 = add_ln203_55_fu_499_p2[7:0];

assign trunc_ln203_fu_464_p1 = add_ln203_53_fu_455_p2[7:0];

assign xor_ln252_fu_325_p2 = (i1_0_reg_193 ^ 2'd3);

assign zext_ln188_fu_584_p1 = i0_0_i_reg_216;

assign zext_ln191_fu_662_p1 = i2_0_i_reg_238;

assign zext_ln192_12_fu_612_p1 = shl_ln_fu_604_p3;

assign zext_ln192_13_fu_632_p1 = add_ln192_fu_626_p2;

assign zext_ln192_14_fu_658_p1 = or_ln1_fu_648_p4;

assign zext_ln192_3_fu_702_p1 = add_ln192_12_fu_697_p2;

assign zext_ln192_fu_710_p1 = $unsigned(sext_ln192_3_fu_707_p1);

assign zext_ln202_fu_759_p1 = i22_0_i_reg_260;

assign zext_ln203_12_fu_781_p1 = add_ln203_fu_775_p2;

assign zext_ln203_32_fu_288_p1 = i0_0_reg_181;

assign zext_ln203_33_fu_292_p1 = i0_0_reg_181;

assign zext_ln203_34_fu_296_p1 = i0_0_reg_181;

assign zext_ln203_35_fu_300_p1 = i0_0_reg_181;

assign zext_ln203_36_fu_304_p1 = i0_0_reg_181;

assign zext_ln203_37_fu_314_p1 = add_ln203_49_fu_308_p2;

assign zext_ln203_38_fu_426_p1 = $unsigned(sext_ln203_fu_423_p1);

assign zext_ln203_39_fu_737_p1 = i11_0_i_reg_249;

assign zext_ln203_40_fu_749_p1 = tmp_127_fu_741_p3;

assign zext_ln203_41_fu_542_p1 = sub_ln265_fu_536_p2;

assign zext_ln203_42_fu_554_p1 = tmp_128_fu_546_p3;

assign zext_ln203_43_fu_451_p1 = tmp_129_fu_443_p3;

assign zext_ln203_44_fu_460_p1 = add_ln203_53_fu_455_p2;

assign zext_ln203_45_fu_580_p1 = add_ln203_54_reg_895;

assign zext_ln203_46_fu_495_p1 = tmp_131_fu_487_p3;

assign zext_ln203_47_fu_504_p1 = add_ln203_55_fu_499_p2;

assign zext_ln203_48_fu_531_p1 = add_ln203_56_fu_526_p2;

assign zext_ln203_49_fu_790_p1 = i22_0_i_reg_260;

assign zext_ln203_fu_804_p1 = add_ln203_1_reg_990;

assign zext_ln248_fu_283_p1 = i0_0_reg_181;

assign zext_ln252_3_fu_343_p1 = tmp_125_fu_335_p3;

assign zext_ln252_fu_331_p1 = xor_ln252_fu_325_p2;

assign zext_ln255_7_fu_369_p1 = add_ln255_fu_363_p2;

assign zext_ln255_8_fu_381_p1 = tmp_126_fu_373_p3;

assign zext_ln255_fu_420_p1 = add_ln255_reg_851;

always @ (posedge ap_clk) begin
    zext_ln203_32_reg_821[9:2] <= 8'b00000000;
    zext_ln203_33_reg_827[7:2] <= 6'b000000;
    zext_ln203_34_reg_832[5:2] <= 4'b0000;
    zext_ln203_35_reg_837[4:2] <= 3'b000;
    zext_ln255_reg_871[8:2] <= 7'b0000000;
    zext_ln192_13_reg_923[4] <= 1'b0;
    or_ln1_reg_936[2] <= 1'b0;
    zext_ln192_14_reg_941[2] <= 1'b0;
    zext_ln192_14_reg_941[5] <= 1'b0;
    or_ln_reg_972[2] <= 1'b0;
end

endmodule //cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config2_s
